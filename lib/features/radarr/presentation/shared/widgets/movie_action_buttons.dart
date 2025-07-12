import 'package:client/features/radarr/application/provider/movie_management_provider/update_movie_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/delete_movie_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieActionButtons extends ConsumerWidget {
  final RadarrMovie movie;

  const MovieActionButtons({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Actions', style: textTheme.titleLarge),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            // Toggle monitored status
            OutlinedButton.icon(
              onPressed: () async {
                // Create a copy of the movie with toggled monitored status
                final updatedMovie = {
                  ...movie.toJson(),
                  'monitored': !(movie.monitored ?? false),
                };

                // Show loading indicator
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Updating movie...')),
                );

                try {
                  // Update the movie
                  await ref.read(updateMovieProvider(updatedMovie).future);

                  // Show success message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        movie.monitored ?? false
                            ? 'Movie unmonitored'
                            : 'Movie is now being monitored',
                      ),
                      backgroundColor: colorScheme.primary,
                    ),
                  );
                } catch (e) {
                  // Show error message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Failed to update: $e'),
                      backgroundColor: colorScheme.error,
                    ),
                  );
                }
              },
              icon: Icon(
                movie.monitored ?? false
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
              label: Text(movie.monitored ?? false ? 'Unmonitor' : 'Monitor'),
              style: OutlinedButton.styleFrom(
                foregroundColor: movie.monitored ?? false
                    ? colorScheme.error
                    : colorScheme.primary,
              ),
            ),

            // Search for movie
            OutlinedButton.icon(
              onPressed: () {
                // Implement search action
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Searching for movie...')),
                );

                // TODO: Implement search functionality
              },
              icon: const Icon(Icons.search),
              label: const Text('Search'),
            ),

            // Delete movie
            OutlinedButton.icon(
              onPressed: () {
                // Show delete confirmation dialog
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Delete Movie'),
                    content: Text(
                      'Are you sure you want to delete "${movie.title}" from Radarr?',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.of(context).pop();

                          // Show loading indicator
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Deleting movie...')),
                          );

                          try {
                            // Delete the movie
                            await ref.read(
                              deleteMovieProvider(movie.id!).future,
                            );

                            // Show success message and navigate back
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                  'Movie deleted successfully',
                                ),
                                backgroundColor: colorScheme.primary,
                              ),
                            );

                            // Navigate back
                            Navigator.of(context).pop();
                          } catch (e) {
                            // Show error message
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Failed to delete: $e'),
                                backgroundColor: colorScheme.error,
                              ),
                            );
                          }
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: colorScheme.error,
                        ),
                        child: const Text('Delete'),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.delete),
              label: const Text('Delete'),
              style: OutlinedButton.styleFrom(
                foregroundColor: colorScheme.error,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Extension method to create a copy of RadarrMovie with updated fields
  // This is needed since the RadarrMovie class might not have a copyWith method
}
