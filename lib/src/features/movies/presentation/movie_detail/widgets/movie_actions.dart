import 'package:client/src/features/movies/presentation/movie_detail/movie_details_controller.dart';
import 'package:client/src/features/movies/presentation/movie_edit/movie_edit_sheet.dart';
import 'package:client/src/features/releases/domain/release_target.dart';
import 'package:client/src/features/releases/presentation/release_sheet.dart';
import 'package:client/src/shared/widgets/dialogs/custom_dialog.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
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
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return MovieEditSheet(movie: movie);
                      },
                    );
                  },
                ),
                _ActionWidget(
                  icon: TablerIcons.http_delete,
                  label: 'Delete',
                  onPressed: () {
                    bool deleteFiles = false;
                    bool addImportListExclusion = false;

                    showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return StatefulBuilder(
                          builder: (context, setDialogState) => Dialog(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            child: CustomDialog(
                              title: 'DELETE MOVIE',
                              heading: 'Confirm deletion of "${movie.title}"',
                              bodyWidget: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Are you sure you want to delete this movie?',
                                  ),
                                  const SizedBox(height: 12),
                                  CheckboxListTile(
                                    title: const Text('Delete Files'),
                                    value: deleteFiles,
                                    onChanged: (value) {
                                      setDialogState(() {
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
                                      setDialogState(() {
                                        addImportListExclusion = value ?? false;
                                      });
                                    },
                                    contentPadding: EdgeInsets.zero,
                                    dense: true,
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('Cancel'),
                                ),
                                OutlinedButton(
                                  onPressed: () async {
                                    Navigator.of(context).pop();
                                    try {
                                      await ref
                                          .read(movieDetailsController.notifier)
                                          .deleteMovie(
                                            deleteFiles: deleteFiles,
                                            addImportListExclusion:
                                                addImportListExclusion,
                                          );

                                      await Future.delayed(
                                        const Duration(milliseconds: 500),
                                      );
                                      if (context.mounted) {
                                        Navigator.of(context).pop();
                                        CustomSnackbar.show(
                                          context,
                                          message:
                                              'Successfully deleted "${movie.title}"',
                                          type: CustomSnackbarType.success,
                                        );
                                      }
                                    } catch (e) {
                                      if (context.mounted) {
                                        CustomSnackbar.show(
                                          context,
                                          message:
                                              'Failed to delete movie: ${e.toString()}',
                                          type: CustomSnackbarType.error,
                                        );
                                      }
                                    }
                                  },
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Theme.of(
                                      context,
                                    ).colorScheme.error,
                                    side: BorderSide(
                                      color: Theme.of(context).colorScheme.error
                                          .withValues(alpha: 0.4),
                                    ),
                                  ),
                                  child: const Text('Delete'),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
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
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ReleaseSheet(
        target: MovieReleaseTarget(
          movieId: movie.id!,
          title: movie.title ?? 'Unknown',
        ),
      ),
    );
  }

  void _showDeleteFileConfirmation(
    BuildContext context,
    WidgetRef ref,
    MovieResource movie,
  ) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: CustomDialog(
          title: 'DELETE FILE',
          heading: 'Delete downloaded file?',
          body:
              'This will remove the file for "${movie.title}" from disk, '
              'but the movie will remain in Radarr.',
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            OutlinedButton(
              onPressed: () async {
                Navigator.of(context).pop();
                try {
                  await ref
                      .read(movieDetailsController.notifier)
                      .deleteMovieFile();
                  if (context.mounted) {
                    CustomSnackbar.show(
                      context,
                      message: 'Deleted file for "${movie.title}"',
                      type: CustomSnackbarType.success,
                    );
                  }
                } catch (e) {
                  if (context.mounted) {
                    CustomSnackbar.show(
                      context,
                      message: 'Failed to delete file: $e',
                      type: CustomSnackbarType.error,
                    );
                  }
                }
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.error,
                side: BorderSide(
                  color: Theme.of(
                    context,
                  ).colorScheme.error.withValues(alpha: 0.4),
                ),
              ),
              child: const Text('Delete'),
            ),
          ],
        ),
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
