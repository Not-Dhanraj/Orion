import 'package:client/src/features/movies/presentation/movie_add/movie_add_controller.dart';
import 'package:client/src/features/movies/presentation/movie_add/widgets/movie_add_card.dart';
import 'package:client/src/shared/page/custom_error_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:with_opacity/with_opacity.dart';

class MovieAddPage extends ConsumerStatefulWidget {
  const MovieAddPage({super.key});

  @override
  ConsumerState<MovieAddPage> createState() => _MovieAddPageState();
}

class _MovieAddPageState extends ConsumerState<MovieAddPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  bool _hasSearched = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final movieAddState = ref.watch(movieAddControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Add New Movie')),
      body: movieAddState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) =>
            CustomErrorPage(errorMessage: error.toString()),
        data: (state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search bar with integrated button
                TextField(
                  controller: _searchController,
                  focusNode: _searchFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Search for a movie by name...',
                    prefixIcon: Icon(
                      Icons.search,
                      color: theme.colorScheme.primary,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: theme.colorScheme.surfaceContainerLow,
                    filled: true,
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_searchController.text.isNotEmpty)
                          IconButton(
                            icon: const Icon(TablerIcons.x),
                            tooltip: 'Clear search',
                            onPressed: () {
                              _searchController.clear();
                              // Clear search results but don't trigger a new search
                              if (_hasSearched) {
                                ref
                                    .read(movieAddControllerProvider.notifier)
                                    .searchMovies('');
                                setState(() {
                                  _hasSearched = false;
                                });
                              }
                            },
                          ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          height: 40,
                          width: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_searchController.text.isNotEmpty) {
                                ref
                                    .read(movieAddControllerProvider.notifier)
                                    .searchMovies(_searchController.text);
                                setState(() {
                                  _hasSearched = true;
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.colorScheme.primary,
                              foregroundColor: theme.colorScheme.onPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text('Search'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onSubmitted: (value) async {
                    if (value.isNotEmpty) {
                      try {
                        await ref
                            .read(movieAddControllerProvider.notifier)
                            .searchMovies(value);
                        setState(() {
                          _hasSearched = true;
                        });
                      } catch (e) {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Row(
                                children: [
                                  Icon(
                                    Icons.error,
                                    color: theme.colorScheme.error,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text('Error'),
                                ],
                              ),
                              content: Text(
                                'Failed to search: ${e.toString()}',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('OK'),
                                ),
                              ],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          );
                        }
                      }
                    }
                  },
                ),

                const SizedBox(height: 8),

                // Status message
                if (state.isSearching)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: CircularProgressIndicator()),
                  ),

                // Search results
                if (!state.isSearching && _hasSearched)
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final theme = Theme.of(context);

                        if (state.searchResults == null ||
                            state.searchResults!.isEmpty) {
                          return Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search_off,
                                  size: 80,
                                  color: theme.colorScheme.error
                                      .withCustomOpacity(0.7),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'No movies found',
                                  style: theme.textTheme.headlineSmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            theme.colorScheme.onErrorContainer,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'Try different keywords or check if the movie is already in your library',
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    color: theme.colorScheme.onErrorContainer,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 12),
                                FilledButton.icon(
                                  icon: const Icon(TablerIcons.refresh),
                                  label: const Text('Try Another Search'),
                                  onPressed: () {
                                    _searchController.clear();
                                    _searchFocusNode.requestFocus();
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                        return MasonryGridView.extent(
                          maxCrossAxisExtent: 500,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          itemCount: state.searchResults!.length,
                          itemBuilder: (context, index) {
                            final movie = state.searchResults![index];
                            return MovieAddCard(movie: movie);
                          },
                        );
                      },
                    ),
                  ),

                // Initial instructions
                if (!_hasSearched && !state.isSearching)
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.movie_filter,
                            size: 80,
                            color: theme.colorScheme.primary.withCustomOpacity(
                              0.6,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Search for a movie to add',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.onSurface,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Enter the name of a movie in the search box above and press the Search button',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
