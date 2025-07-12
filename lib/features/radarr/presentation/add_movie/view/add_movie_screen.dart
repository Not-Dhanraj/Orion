import 'package:client/features/radarr/application/provider/add_movie_provider/movie_lookup_provider.dart';
import 'package:client/features/radarr/presentation/add_movie/view/add_movie_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class AddMovieScreen extends ConsumerStatefulWidget {
  const AddMovieScreen({super.key});

  @override
  ConsumerState<AddMovieScreen> createState() => _AddMovieScreenState();
}

class _AddMovieScreenState extends ConsumerState<AddMovieScreen> {
  final _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final movieResults = ref.watch(movieLookupProvider(_searchQuery));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Movie'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 2,
      ),
      body: Column(
        children: [
          // Search input
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for movies...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() {
                            _searchQuery = '';
                          });
                        },
                      )
                    : null,
              ),
              onSubmitted: (value) {
                setState(() {
                  _searchQuery = value;
                });

                // Show a snackbar to indicate search is in progress
                if (value.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Searching for movies...'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }
              },
            ),
          ),

          // Results
          Expanded(
            child: _searchQuery.isEmpty
                ? Center(
                    child: Text(
                      'Search for movies to add',
                      style: TextStyle(color: colorScheme.onSurfaceVariant),
                    ),
                  )
                : movieResults.when(
                    data: (movies) {
                      if (movies.isEmpty) {
                        return Center(
                          child: Text(
                            'No movies found',
                            style: TextStyle(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        );
                      }

                      return ListView.builder(
                        padding: const EdgeInsets.only(bottom: 16),
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          final movie = movies[index];
                          return ListTile(
                            leading: _getMoviePoster(movie),
                            title: Text(movie.title ?? 'Unknown'),
                            subtitle: Text(
                              movie.year?.toString() ?? 'Unknown year',
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () async {
                                // Convert RadarrMovie to r backward compatibility
                                final movieMap = {
                                  'title': movie.title,
                                  'year': movie.year,
                                  'overview': movie.overview,
                                  'images': movie.images
                                      ?.map(
                                        (img) => {
                                          'coverType': img.coverType,
                                          'remoteUrl': img.remoteUrl,
                                        },
                                      )
                                      .toList(),
                                  'tmdbId': movie.tmdbId,
                                  'imdbId': movie.imdbId,
                                  'id': movie.id,
                                };

                                // Navigate to add movie details screen
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddMovieDetailsScreen(
                                      movieLookup: movieMap,
                                    ),
                                    fullscreenDialog: true,
                                  ),
                                );

                                // If movie was added successfully, show feedback
                                if (result == true && mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        '${movie.title} added successfully',
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                          );
                        },
                      );
                    },
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error, stack) => Center(
                      child: Text(
                        'Error: $error',
                        style: TextStyle(color: colorScheme.error),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _getMoviePoster(RadarrMovie movie) {
    String? posterUrl;
    try {
      if (movie.images != null && movie.images!.isNotEmpty) {
        for (final image in movie.images!) {
          if (image.coverType == 'poster') {
            posterUrl = image.remoteUrl;
            break;
          }
        }
      }
    } catch (e) {
      // Ignore errors
    }

    return posterUrl != null
        ? SizedBox(
            width: 40,
            height: 60,
            child: Image.network(
              posterUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.movie),
            ),
          )
        : const SizedBox(width: 40, height: 60, child: Icon(Icons.movie));
  }
}
