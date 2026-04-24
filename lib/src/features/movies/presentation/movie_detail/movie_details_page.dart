import 'package:client/src/features/jellyfin/application/jellyfin_match_providers.dart';
import 'package:client/src/features/movies/presentation/movie_detail/movie_details_controller.dart';
import 'package:client/src/features/movies/presentation/movie_edit/movie_edit_sheet.dart';
import 'package:client/src/features/releases/domain/release_target.dart';
import 'package:client/src/features/releases/presentation/release_sheet.dart';
import 'package:client/src/shared/domain/media_spec.dart';
import 'package:client/src/shared/widgets/indicators/snackbar_config.dart';
import 'package:client/src/shared/utils/movie_utils.dart';
import 'package:client/src/shared/widgets/dialogs/custom_dialog.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/shared/widgets/media/media_delete_dialog.dart';
import 'package:client/src/shared/widgets/media/media_hero_header.dart';
import 'package:client/src/shared/widgets/media/media_overview.dart';
import 'package:client/src/shared/widgets/media/media_specs_grid.dart';
import 'package:client/src/shared/domain/telemetry_models.dart';
import 'package:client/src/shared/widgets/media/media_telemetry.dart';
import 'package:client/src/features/jellyfin/domain/jellyfin_match_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:radarr_api/radarr_api.dart';

class MovieDetailsPage extends ConsumerStatefulWidget {
  final MovieResource movie;
  const MovieDetailsPage({super.key, required this.movie});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieDetailsPageState();
}

class _MovieDetailsPageState extends ConsumerState<MovieDetailsPage> {
  Future<void> _deleteMovie({
    required BuildContext context,
    required MovieResource movie,
    required bool deleteFiles,
    required bool addImportListExclusion,
  }) async {
    final hostContext = Navigator.of(context, rootNavigator: true).context;
    try {
      await ref
          .read(movieDetailsController.notifier)
          .deleteMovie(
            deleteFiles: deleteFiles,
            addImportListExclusion: addImportListExclusion,
          );
      await Future.delayed(const Duration(milliseconds: 500));
      if (context.mounted) {
        context.pop();
        CustomSnackbar.show(
          hostContext,
          message: 'Successfully deleted "${movie.title}"',
          type: CustomSnackbarType.success,
        );
      }
    } catch (e) {
      if (context.mounted) {
        CustomSnackbar.show(
          hostContext,
          message: 'Failed to delete movie: ${e.toString()}',
          type: CustomSnackbarType.error,
        );
      }
    }
  }

  Future<void> _deleteFile(BuildContext context) async {
    try {
      await ref.read(movieDetailsController.notifier).deleteMovieFile();
      if (context.mounted) {
        CustomSnackbar.show(
          context,
          message: 'Movie file deleted.',
          type: CustomSnackbarType.success,
        );
      }
    } catch (e) {
      if (context.mounted) {
        CustomSnackbar.show(
          context,
          message: 'Failed to delete file: ${e.toString()}',
          type: CustomSnackbarType.error,
        );
      }
    }
  }

  void _confirmDeleteFile(BuildContext context) {
    final movie = ref.read(movieDetailsController);
    showDialog(
      context: context,
      builder: (dialogContext) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: CustomDialog(
            title: 'DELETE FILE',
            heading: 'Delete downloaded file for "${movie.title}"?',
            body:
                'The movie will remain monitored in Radarr. Only the file on disk will be removed.',
            actions: [
              ElevatedButton(
                onPressed: () => dialogContext.pop(),
                child: const Text('CANCEL'),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  dialogContext.pop();
                  _deleteFile(context);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Theme.of(dialogContext).colorScheme.error,
                  side: BorderSide(
                    color: Theme.of(
                      dialogContext,
                    ).colorScheme.error.withValues(alpha: 0.4),
                  ),
                ),
                icon: const Icon(TablerIcons.trash, size: 14),
                label: const Text('DELETE FILE'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context, MovieResource movie) {
    showDialog(
      context: context,
      builder: (_) => MediaDeleteDialog(
        title: 'MOVIE',
        heading: 'Confirm deletion of "${movie.title}"',
        onConfirm: ({required deleteFiles, required addImportListExclusion}) =>
            _deleteMovie(
              context: context,
              movie: movie,
              deleteFiles: deleteFiles,
              addImportListExclusion: addImportListExclusion,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final movie = ref.watch(movieDetailsController);
    final tmdbId = movie.tmdbId ?? 0;
    final matchAsync = tmdbId > 0
        ? ref.watch(jellyfinMovieMatchProvider(tmdbId))
        : const AsyncValue<JellyfinMatchResult?>.data(null);
    final jellyMatchIsLoading = matchAsync.isLoading;
    final jellymatch = matchAsync.valueOrNull;

    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    final syncProgress = movie.hasFile == true ? 1.0 : 0.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(TablerIcons.arrow_left),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 120),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MediaHeroHeader(
                  title: movie.title ?? 'UNKNOWN',
                  id: 'movie-item: ${movie.id}',
                  agency: movie.status?.name.toUpperCase() ?? 'UNKNOWN',
                  agencyLabel: 'MOVIE STATUS',
                  posterUrl: movie.remotePosterUrlLink ?? '',
                  syncProgress: syncProgress,
                  syncStatusLabel: 'DOWNLOAD STATUS',
                  isMonitored: movie.monitored ?? false,
                  actions: [
                    OutlinedButton(
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
                      child: const Text('EDIT MOVIE'),
                    ),
                    OutlinedButton(
                      onPressed: () => _confirmDelete(context, movie),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: cs.error,
                        side: BorderSide(
                          color: cs.error.withValues(alpha: 0.4),
                        ),
                      ),
                      child: const Text('DELETE'),
                    ),
                    PopupMenuButton<String>(
                      icon: Icon(
                        Icons.more_vert,
                        size: 20,
                        color: cs.onSurface,
                      ),
                      splashRadius: 24,
                      elevation: 4,
                      shadowColor: Colors.black45,
                      surfaceTintColor: Colors.transparent,
                      color: cs.surfaceContainerHigh,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(
                          color: cs.outlineVariant.withValues(alpha: 0.3),
                        ),
                      ),
                      onSelected: (value) async {
                        if (value == 'search') {
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
                        } else if (value == 'delete_file') {
                          _confirmDeleteFile(context);
                        } else if (value == 'play') {
                          if (jellymatch == null) {
                            CustomSnackbar.show(
                              context,
                              message:
                                  'Media file exists in Radarr but no match was found in Jellyfin.',
                              type: CustomSnackbarType.error,
                            );
                          } else {
                            await context.push(
                              '/jellyfinPlayer',
                              extra: jellymatch,
                            );
                            await Future.delayed(
                              const Duration(milliseconds: 1000),
                            );
                            if (context.mounted) {
                              ref.invalidate(
                                jellyfinMovieMatchProvider(tmdbId),
                              );
                            }
                          }
                        }
                      },
                      itemBuilder: (context) => [
                        if (movie.hasFile == true || jellymatch != null)
                          PopupMenuItem(
                            value: 'play',
                            enabled: !jellyMatchIsLoading && jellymatch != null,
                            child: Row(
                              children: [
                                if (jellyMatchIsLoading)
                                  SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: cs.onSurface.withValues(
                                        alpha: 0.5,
                                      ),
                                    ),
                                  )
                                else
                                  Icon(
                                    jellymatch == null
                                        ? TablerIcons.alert_triangle_filled
                                        : jellymatch.played
                                        ? TablerIcons.check
                                        : TablerIcons.player_play_filled,
                                    size: 18,
                                    color: jellymatch == null
                                        ? cs.error
                                        : cs.primary,
                                  ),
                                const SizedBox(width: 12),
                                Text(
                                  jellyMatchIsLoading
                                      ? 'Loading Match...'
                                      : jellymatch == null
                                      ? 'Playback Error'
                                      : jellymatch.played
                                      ? 'Watch Again'
                                      : 'Watch Now',
                                  style: tt.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: jellymatch == null ? cs.error : null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (movie.hasFile != true)
                          PopupMenuItem(
                            value: 'search',
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 18,
                                  color: cs.onSurface,
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  'Search Releases',
                                  style: tt.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (movie.hasFile == true)
                          PopupMenuItem(
                            value: 'delete_file',
                            child: Row(
                              children: [
                                Icon(
                                  TablerIcons.trash,
                                  size: 18,
                                  color: cs.error,
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  'Delete File',
                                  style: tt.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: cs.error,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                if (movie.overview != null && movie.overview!.isNotEmpty)
                  MediaOverview(overview: movie.overview!),
                const SizedBox(height: 32),
                MediaSpecsGrid(
                  title: 'MOVIE SPECS',
                  specs: [
                    MediaSpec(
                      label: 'YEAR',
                      value: movie.year?.toString() ?? 'UNKNOWN',
                    ),
                    MediaSpec(
                      label: 'STATUS',
                      value:
                          movie.status?.name
                              .toString()
                              .split('.')
                              .last
                              .toUpperCase() ??
                          'UNKNOWN',
                    ),
                    MediaSpec(
                      label: 'RUNTIME',
                      value: '${movie.runtime ?? 0} MIN',
                    ),
                    MediaSpec(
                      label: 'RATING',
                      value: movie.ratings?.tmdb?.value != null
                          ? '${movie.ratings!.tmdb!.value}/10'
                          : 'N/A',
                    ),
                    MediaSpec(
                      label: 'QUALITY',
                      value: 'PROFILE ${movie.qualityProfileId ?? 0}',
                      isAccent: true,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'MEDIA TELEMETRY',
                    style: tt.labelSmall!.copyWith(
                      fontSize: 9,
                      color: cs.outline,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                MediaTelemetry(
                  categories: [
                    TelemetryCategory(
                      title: 'STORAGE TELEMETRY',
                      accentLeft: true,
                      rows: [
                        StatRow(
                          label: 'Total Weight',
                          value:
                              '${((movie.sizeOnDisk ?? 0) / 1073741824).toStringAsFixed(1)} GB',
                          accent: true,
                        ),
                        StatRow(
                          label: 'File Present',
                          value: movie.hasFile == true ? 'YES' : 'NO',
                        ),
                      ],
                    ),
                    TelemetryCategory(
                      title: 'METADATA HEALTH',
                      rows: [
                        StatRow(
                          label: 'Studio',
                          value: movie.studio ?? 'UNKNOWN',
                        ),
                        StatRow(
                          label: 'Year',
                          value: '${movie.year ?? 'UNKNOWN'}',
                        ),
                      ],
                    ),
                    TelemetryCategory(
                      title: 'NETWORK NODE',
                      rows: [
                        StatRow(
                          label: 'Language',
                          value: movie.originalLanguage?.name ?? 'UNKNOWN',
                        ),
                        StatRow(
                          label: 'Path',
                          value: movie.path?.split('/').last ?? 'UNKNOWN',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
