import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:client/src/features/movies/presentation/movie_detail/widgets/movie_download_widget.dart';
import 'package:client/src/features/movies/presentation/movie_edit/movie_edit_page.dart';
import 'package:client/src/features/movies/presentation/movie_home/movie_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:radarr/radarr.dart';
import 'package:with_opacity/with_opacity.dart';

class MovieActionCard extends ConsumerWidget {
  final MovieResource movie;
  const MovieActionCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withCustomOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer.withCustomOpacity(
                      0.4,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.attractions_outlined,
                    color: theme.colorScheme.onPrimaryContainer,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12.0),
                Text(
                  'Actions',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ActionWidget(
                  icon: TablerIcons.edit,
                  label: 'Edit',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return MovieEditPage(movie: movie);
                      },
                    );
                  },
                ),
                _ActionWidget(
                  icon: TablerIcons.http_delete,
                  label: 'Delete',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        bool deleteFiles = false;
                        bool addImportListExclusion = false;

                        return StatefulBuilder(
                          builder: (context, setState) => AlertDialog(
                            title: const Text('Delete Movie'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Are you sure you want to delete this movie?',
                                ),
                                const SizedBox(height: 16),
                                CheckboxListTile(
                                  title: const Text('Delete Files'),
                                  value: deleteFiles,
                                  onChanged: (value) {
                                    setState(() {
                                      deleteFiles = value ?? false;
                                    });
                                  },
                                  contentPadding: EdgeInsets.zero,
                                  dense: true,
                                ),
                                CheckboxListTile(
                                  title: const Text('Add to Exclusion List'),
                                  value: addImportListExclusion,
                                  onChanged: (value) {
                                    setState(() {
                                      addImportListExclusion = value ?? false;
                                    });
                                  },
                                  contentPadding: EdgeInsets.zero,
                                  dense: true,
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () async {
                                  try {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) => const AlertDialog(
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CircularProgressIndicator(),
                                            SizedBox(height: 16),
                                            Text('Deleting series...'),
                                          ],
                                        ),
                                      ),
                                    );

                                    await ref
                                        .read(movieServiceProvider)
                                        .deleteMovie(
                                          movie.id!,
                                          deleteFiles,
                                          addImportListExclusion,
                                        );

                                    ref.invalidate(movieHomeControllerProvider);
                                    await Future.delayed(
                                      Duration(milliseconds: 500),
                                    );
                                    if (context.mounted) {
                                      final scaffoldMessenger =
                                          ScaffoldMessenger.of(context);

                                      Navigator.of(context).pop();
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pop();

                                      scaffoldMessenger.showSnackBar(
                                        SnackBar(
                                          content: Row(
                                            children: [
                                              const Icon(
                                                Icons.check_circle,
                                                color: Colors.white,
                                              ),
                                              const SizedBox(width: 12),
                                              Expanded(
                                                child: Text(
                                                  'Successfully deleted "${movie.title}"',
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          backgroundColor: Colors.red.shade600,
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
                                  } catch (e) {
                                    if (context.mounted) {
                                      Navigator.of(context).pop();

                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Row(
                                            children: [
                                              const Icon(
                                                Icons.error_outline,
                                                color: Colors.white,
                                              ),
                                              const SizedBox(width: 12),
                                              Expanded(
                                                child: Text(
                                                  'Failed to delete series: ${e.toString()}',
                                                  style: const TextStyle(
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
                                          duration: const Duration(seconds: 5),
                                        ),
                                      );
                                    }
                                  }
                                },
                                child: const Text('Delete'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                // Show either "Downloaded" or "Releases" button based on if the movie has a file
                if (movie.hasFile == true && movie.movieFile != null)
                  _ActionWidget(
                    icon: Icons.file_download_done,
                    label: 'Downloaded',
                    onPressed: () {
                      _showDeleteFileConfirmation(context, ref, movie);
                    },
                  )
                else
                  _ActionWidget(
                    icon: TablerIcons.download,
                    label: 'Releases',
                    onPressed: () {
                      _showMovieReleases(context, ref, movie);
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showMovieReleases(
    BuildContext context,
    WidgetRef ref,
    MovieResource movie,
  ) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(child: CircularProgressIndicator()),
              const SizedBox(height: 12),
              const Text('Searching for releases may take some time.'),
            ],
          ),
        );
      },
    );

    try {
      final releases = await ref
          .read(movieServiceProvider)
          .getReleases(movieId: movie.id!);

      if (context.mounted) {
        Navigator.of(context).pop(); // Close the loading dialog

        if (releases.isEmpty) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('No releases found')));
          return;
        }

        _showReleasesDialog(context, releases, movie);
      }
    } catch (error) {
      if (context.mounted) {
        Navigator.of(context).pop(); // Close the loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error loading releases: ${error.toString()}'),
          ),
        );
      }
    }
  }

  void _showReleasesDialog(
    BuildContext context,
    List<ReleaseResource> releases,
    MovieResource movie,
  ) {
    showDialog(
      context: context,
      builder: (context) => MovieDownloadWidget(releases, movie: movie),
    );
  }

  void _showDeleteFileConfirmation(
    BuildContext context,
    WidgetRef ref,
    MovieResource movie,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Downloaded File'),
        content: Text(
          'Are you sure you want to delete the downloaded file for "${movie.title}"?\n\n'
          'This will remove the file from disk but keep the movie in Radarr.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop(); // Close the dialog

              try {
                // Show loading dialog
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => const AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 16),
                        Text('Deleting file...'),
                      ],
                    ),
                  ),
                );

                // Call the movie service to delete the file
                await ref.read(movieServiceProvider).deleteMovieFile(movie.id!);

                // Close the loading dialog
                if (context.mounted) {
                  Navigator.of(context).pop();

                  // Show success message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        children: [
                          const Icon(Icons.check_circle, color: Colors.white),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Successfully deleted file for "${movie.title}"',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      backgroundColor: Colors.green.shade600,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.all(16),
                      duration: const Duration(seconds: 4),
                    ),
                  );
                }
              } catch (e) {
                // Show error message
                if (context.mounted) {
                  Navigator.of(
                    context,
                  ).pop(); // Close loading dialog if it's open

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        children: [
                          const Icon(Icons.error_outline, color: Colors.white),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Failed to delete file: ${e.toString()}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      backgroundColor: Colors.red,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.all(16),
                      duration: const Duration(seconds: 5),
                    ),
                  );
                }
              }
            },
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class _ActionWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _ActionWidget({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: SizedBox(
          width: 50,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: theme.colorScheme.onSecondaryContainer,
                  size: 24,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
