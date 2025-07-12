import 'package:client/features/radarr/application/provider/movie_management_provider/movie_details_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/update_movie_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/movie_release_provider.dart';
import 'package:client/features/radarr/presentation/shared/widgets/release_selection_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

/// A widget that provides actions for managing a movie
class MovieActionButtons extends ConsumerWidget {
  final RadarrMovie movie;

  const MovieActionButtons({super.key, required this.movie});

  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.withAlpha(20),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color.withAlpha(100), width: 1),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: color),
            iconSize: 24,
            padding: const EdgeInsets.all(12),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildActionButton(
          context,
          icon: Icons.refresh,
          label: 'Refresh',
          color: theme.colorScheme.secondary,
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
        ),

        _buildActionButton(
          context,
          icon: Icons.search,
          label: 'Search',
          color: theme.colorScheme.tertiary,
          onPressed: () async {
            if (movie.id == null) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Cannot search: Missing movie ID'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
              return;
            }

            try {
              // Show loading dialog
              if (context.mounted) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) =>
                      const Center(child: CircularProgressIndicator()),
                );
              }

              // Get releases for this movie
              final releases = await ref.read(
                movieReleaseProvider(movie.id!).future,
              );

              // Close loading dialog
              if (context.mounted) {
                Navigator.of(context).pop();
              }

              if (releases.isEmpty) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('No releases found for this movie'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
                return;
              }

              // Show release selection dialog
              if (context.mounted) {
                await showDialog(
                  context: context,
                  builder: (context) => ReleaseSelectionDialog(
                    releases: releases,
                    title: 'Releases for ${movie.title ?? "Movie"}',
                  ),
                );
              }
            } catch (e) {
              if (context.mounted) {
                Navigator.of(
                  context,
                ).pop(); // Close loading dialog if still showing

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error fetching releases: $e'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            }
          },
        ),
      ],
    );
  }
}
