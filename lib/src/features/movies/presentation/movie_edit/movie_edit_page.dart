import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/core/widgets/loading_indicator.dart';
import 'package:client/src/features/movies/presentation/movie_edit/movie_edit_controller.dart';
import 'package:client/src/features/movies/presentation/movie_edit/widgets/movie_minimum_availability_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:radarr/radarr.dart';
import 'widgets/movie_monitoring_options.dart';
import 'widgets/movie_path_options.dart';
import 'widgets/movie_quality_dropdown.dart';

class MovieEditPage extends ConsumerWidget {
  final MovieResource movie;

  const MovieEditPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final controller = ref.watch(movieEditControllerProvider(movie));

    return Dialog(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: controller.when(
          data: (state) {
            final theme = Theme.of(context);
            final controller = ref.read(
              movieEditControllerProvider(movie).notifier,
            );
            final movieData = state.movie;

            if (movieData == null) {
              return const Padding(
                padding: EdgeInsets.all(24.0),
                child: Center(child: Text('Movie data not available')),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: movieData.images?.isNotEmpty == true
                              ? CachedNetworkImageProvider(
                                  movieData.images!.first.remoteUrl ?? '',
                                  maxWidth: 100,
                                )
                              : null,
                          backgroundColor: theme.colorScheme.primaryContainer,
                          child: movieData.images?.isEmpty == true
                              ? Icon(
                                  Icons.movie,
                                  color: theme.colorScheme.primary,
                                )
                              : null,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movieData.title ?? 'Unknown Movie',
                                style: theme.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              if (movieData.year != null)
                                Text(
                                  movieData.year.toString(),
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(TablerIcons.x),
                          tooltip: 'Close',
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          MovieMonitoringOptions(
                            movie: movieData,
                            onMovieChanged: controller.updateMovie,
                          ),
                          const SizedBox(height: 8),
                          QualityProfileDropdown(
                            movie: movieData,
                            qualityProfiles: state.qualityProfiles,
                            onMovieChanged: controller.updateMovie,
                          ),
                          const SizedBox(height: 8),
                          MovieMinimumAvailabilityDropdown(
                            movie: movieData,
                            onMovieChanged: controller.updateMovie,
                          ),
                          const SizedBox(height: 8),
                          if (state.rootFolders != null)
                            MoviePathOptions(
                              movie: movieData,
                              rootFolders: state.rootFolders!,
                              onMovieChanged: controller.updateMovie,
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 8),
                      FilledButton(
                        onPressed: state.hasChanges
                            ? () async {
                                // Show loading dialog
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (dialogContext) => AlertDialog(
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,

                                      children: [
                                        const CircularProgressIndicator(),
                                        const SizedBox(height: 8),
                                        Text(
                                          'Saving changes...',
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                );

                                // Save changes
                                final success = await controller.saveChanges();

                                // Close the loading dialog
                                if (context.mounted) {
                                  Navigator.of(context).pop();
                                }

                                // Show result and close edit dialog if successful
                                if (context.mounted) {
                                  if (success) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Row(
                                          children: [
                                            Icon(
                                              Icons.check_circle,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Text(
                                                'Changes saved successfully',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        backgroundColor: Colors.green,
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        margin: const EdgeInsets.all(16),
                                        duration: const Duration(seconds: 4),
                                      ),
                                    );
                                    Navigator.of(context).pop(true);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Row(
                                          children: [
                                            Icon(
                                              Icons.error_outline,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Text(
                                                'Failed to save changes',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        backgroundColor: Colors.red,
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        margin: const EdgeInsets.all(16),
                                        duration: const Duration(seconds: 4),
                                      ),
                                    );
                                  }
                                }
                              }
                            : null,
                        child: const Text('Save Changes'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          loading: () => const Padding(
            padding: EdgeInsets.all(24.0),
            child: LoadingIndicator(),
          ),
          error: (error, stack) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.error_outline,
                  color: theme.colorScheme.error,
                  size: 48,
                ),
                const SizedBox(height: 16),
                Text(
                  'Failed to load movie data',
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text(error.toString(), style: theme.textTheme.bodyMedium),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
