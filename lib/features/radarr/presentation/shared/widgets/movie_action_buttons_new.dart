import 'package:client/features/radarr/application/provider/movie_management_provider/movie_details_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/update_movie_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/delete_movie_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

/// A widget that provides actions for managing a movie
class MovieActionButtons extends ConsumerWidget {
  final RadarrMovie movie;

  const MovieActionButtons({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(
          message: 'Refresh Movie Data & Metadata',
          child: IconButton(
            onPressed: () async {
              try {
                // Update movie with refreshMetadata flag
                final Map<String, dynamic> movieData = movie.toJson();
                movieData['refreshMetadata'] = true;
                final updatedMovie = RadarrMovie.fromJson(movieData);

                // Update the movie
                await ref.read(updateMovieProvider(updatedMovie).future);

                // Refresh local data by invalidating the provider
                if (movie.id != null) {
                  ref.invalidate(movieDetailsProvider(movie.id!));
                }

                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Refreshing movie: ${movie.title}'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error refreshing movie: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            icon: const Icon(Icons.refresh),
          ),
        ),

        Tooltip(
          message: 'Search for Movie',
          child: IconButton(
            onPressed: () async {
              try {
                // Create a copy of the movie with search flag
                final Map<String, dynamic> movieData = movie.toJson();
                movieData['searchForMovie'] = true;
                final updatedMovie = RadarrMovie.fromJson(movieData);

                // Trigger search
                await ref.read(updateMovieProvider(updatedMovie).future);

                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Searching for ${movie.title}'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error searching for movie: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            icon: const Icon(Icons.search),
          ),
        ),

        Tooltip(
          message: 'Toggle Monitoring',
          child: IconButton(
            onPressed: () async {
              try {
                // Create a copy of the movie with toggled monitored status
                final Map<String, dynamic> movieData = movie.toJson();
                movieData['monitored'] = !(movie.monitored ?? false);
                final updatedMovie = RadarrMovie.fromJson(movieData);

                // Update the movie
                await ref.read(updateMovieProvider(updatedMovie).future);

                // Refresh local data
                if (movie.id != null) {
                  ref.invalidate(movieDetailsProvider(movie.id!));
                }

                // Show success message
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        movie.monitored ?? false
                            ? 'Movie unmonitored'
                            : 'Movie is now being monitored',
                      ),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error updating movie: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            icon: Icon(
              movie.monitored ?? false
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
          ),
        ),

        Tooltip(
          message: 'Delete Movie',
          child: IconButton(
            onPressed: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Delete Movie'),
                  content: Text(
                    'Are you sure you want to delete "${movie.title}" from Radarr?',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('CANCEL'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('DELETE'),
                    ),
                  ],
                ),
              );

              if (confirmed == true && movie.id != null && context.mounted) {
                try {
                  await ref.read(deleteMovieProvider(movie.id!).future);

                  // Show success message and pop
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${movie.title} has been deleted'),
                        backgroundColor: Colors.green,
                        duration: const Duration(seconds: 2),
                      ),
                    );
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }
                  }
                } catch (e) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Error deleting movie: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              }
            },
            icon: const Icon(Icons.delete),
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
