import 'package:client/features/radarr/application/provider/add_movie_provider/movie_lookup_provider.dart';
import 'package:client/features/radarr/presentation/add_movie/view/add_movie_details_screen.dart';
import 'package:client/features/radarr/presentation/add_movie/widgets/empty_state.dart';
import 'package:client/features/radarr/presentation/add_movie/widgets/loading_indicator.dart';
import 'package:client/features/radarr/presentation/add_movie/widgets/movie_card.dart';
import 'package:client/features/radarr/presentation/add_movie/widgets/no_results.dart';
import 'package:client/core/widgets/search_bar.dart';
import 'package:client/core/widgets/safe_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class AddMovieScreen extends ConsumerStatefulWidget {
  const AddMovieScreen({super.key});

  @override
  ConsumerState<AddMovieScreen> createState() => _AddMovieScreenState();
}

class _AddMovieScreenState extends ConsumerState<AddMovieScreen> {
  late final TextEditingController _searchController;
  final _scrollController = ScrollController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addMovieNotifierProvider.notifier).clearSearch();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addMovieNotifierProvider);
    final notifier = ref.read(addMovieNotifierProvider.notifier);

    if (_searchController.text != state.searchTerm &&
        state.searchTerm.isEmpty) {
      _searchController.text = state.searchTerm;
    }

    Future<void> addMovie(RadarrMovie movie) async {
      final scaffoldMessenger = ScaffoldMessenger.of(context);

      // Navigate to add movie details screen
      final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddMovieDetailsScreen(movieLookup: movie),
          fullscreenDialog: true,
        ),
      );

      // If movie was added successfully, show feedback
      if (result == true && mounted) {
        if (movie.tmdbId != null) {
          notifier.setMovieAsAdded(movie.tmdbId!);
        }

        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('${movie.title} added successfully'),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.green,
          ),
        );
      }
    }

    int calculateCrossAxisCount(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
      if (width > 1400) return 6;
      if (width > 1200) return 5;
      if (width > 900) return 4;
      if (width > 600) return 3;
      if (width > 400) return 2;
      return 1;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const BackButtonIcon(),
          onPressed: () => Navigator.of(context).pop(),
          tooltip: null, // Disable the tooltip to prevent the layout error
        ),
        title: const Text(
          'Add Movie',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchBarWidget(
              onSearch: (query) => notifier.searchMovies(query),
              onClear: () => notifier.clearSearch(),
              searchController: _searchController,
              focusNode: _focusNode,
              isLoading: state.isLoading,
              hintText: 'Search for a movie...',
            ),
            Expanded(
              child: state.isLoading
                  ? LoadingIndicator(searchTerm: state.searchTerm)
                  : !state.isSearched
                  ? EmptyState(onStartTyping: () => _focusNode.requestFocus())
                  : state.error != null
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 64,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Error: ${state.error}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              notifier.searchMovies(_searchController.text);
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    )
                  : state.searchResults.isEmpty
                  ? NoResults(
                      searchTerm: state.searchTerm,
                      onClear: () {
                        notifier.clearSearch();
                        _focusNode.requestFocus();
                      },
                      onTryAgain: () =>
                          notifier.searchMovies(_searchController.text),
                    )
                  : RefreshIndicator(
                      onRefresh: () async {
                        notifier.searchMovies(_searchController.text);
                      },
                      child: Scrollbar(
                        controller: _scrollController,
                        child: GridView.builder(
                          controller: _scrollController,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: calculateCrossAxisCount(
                                  context,
                                ),
                                childAspectRatio: 0.65,
                                crossAxisSpacing:
                                    MediaQuery.of(context).size.width > 600
                                    ? 16
                                    : 12,
                                mainAxisSpacing:
                                    MediaQuery.of(context).size.width > 600
                                    ? 20
                                    : 16,
                              ),
                          padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width > 600
                                ? 20.0
                                : 16.0,
                          ),
                          itemCount: state.searchResults.length,
                          itemBuilder: (context, index) {
                            final movie = state.searchResults[index];
                            final isInLibrary =
                                state.existingMoviesMap[movie.tmdbId] ?? false;

                            return SafeEntry(
                              key: ValueKey('movie_${movie.tmdbId}_$index'),
                              yOffset: 100,
                              opacity: 0.0,
                              duration: const Duration(milliseconds: 300),
                              child: MovieCard(
                                movie: movie,
                                isInLibrary: isInLibrary,
                                onAdd: () => addMovie(movie),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
