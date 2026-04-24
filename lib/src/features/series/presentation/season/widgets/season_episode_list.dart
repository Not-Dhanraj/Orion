import 'package:client/src/features/jellyfin/application/jellyfin_match_providers.dart';
import 'package:client/src/features/jellyfin/domain/jellyfin_match_result.dart';
import 'package:client/src/features/series/domain/season_page_args.dart';
import 'package:client/src/features/series/presentation/season/season_controller.dart';
import 'package:client/src/shared/widgets/indicators/snackbar_config.dart';
import 'package:client/src/shared/widgets/indicators/animated_loading_text.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/shared/widgets/dialogs/custom_dialog.dart';
import 'package:client/src/features/releases/domain/release_target.dart';
import 'package:client/src/features/releases/presentation/release_sheet.dart';
import 'package:client/src/shared/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sonarr_api/sonarr_api.dart';
import 'episode_row.dart';

class SeasonEpisodeList extends ConsumerWidget {
  final List<EpisodeResource> episodes;
  final SeriesResource series;
  final int seasonNumber;
  final Future<void> Function(Future<void> Function()) runWithLoading;

  const SeasonEpisodeList({
    super.key,
    required this.episodes,
    required this.series,
    required this.seasonNumber,
    required this.runWithLoading,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(
      seasonPageController(
        SeasonPageArgs(seriesId: series.id!, initialSeries: series),
      ).notifier,
    );

    final tvdbId = series.tvdbId ?? 0;
    final seasonMatchState = tvdbId > 0
        ? ref.watch(
            jellyfinSeasonMatchProvider((
              tvdbId: tvdbId,
              seasonNumber: seasonNumber,
            )),
          )
        : const AsyncValue<Map<int, JellyfinMatchResult>>.data({});
    final matchMap = seasonMatchState.valueOrNull ?? {};

    return Column(
      children: [
        for (final e in episodes)
          _EpisodeListItem(
            episode: e,
            series: series,
            seasonNumber: seasonNumber,
            controller: controller,
            runWithLoading: runWithLoading,
            jellyfinMatch: matchMap[e.episodeNumber ?? 0],
            isMatchLoading: seasonMatchState.isLoading,
          ),
      ],
    );
  }
}

class _EpisodeListItem extends ConsumerWidget {
  final EpisodeResource episode;
  final SeriesResource series;
  final int seasonNumber;
  final SeasonPageController controller;
  final Future<void> Function(Future<void> Function()) runWithLoading;
  final JellyfinMatchResult? jellyfinMatch;
  final bool isMatchLoading;

  const _EpisodeListItem({
    required this.episode,
    required this.series,
    required this.seasonNumber,
    required this.controller,
    required this.runWithLoading,
    this.jellyfinMatch,
    this.isMatchLoading = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final hasFile = episode.hasFile ?? false;
    final monitored = episode.monitored ?? false;

    final (String codec, Color statusColor) = switch (true) {
      _ when hasFile => (
        '${episode.episodeFile?.quality?.quality?.name ?? 'Unknown'} • ${FormatUtils.formatFileSize((episode.episodeFile?.size ?? 0).toDouble())}',
        Colors.green as Color,
      ),
      _ when !monitored => ('UNMONITORED', cs.outlineVariant),
      _ => ('MISSING', cs.error),
    };

    final isWatched = jellyfinMatch?.played ?? false;
    return EpisodeRow(
      number: FormatUtils.formatEpisodeNumber(episode.episodeNumber),
      title: episode.title ?? 'Unknown',
      codec: codec,
      statusColor: statusColor,
      isMonitored: monitored,
      hasFile: hasFile,
      isWatched: isWatched,
      onToggleMonitor: () => runWithLoading(() async {
        try {
          final nextMonitored = !monitored;
          await controller.toggleEpisodesMonitoring([
            episode.id!,
          ], nextMonitored);
          if (context.mounted) {
            CustomSnackbar.show(
              context,
              message: nextMonitored
                  ? 'Episode ${FormatUtils.formatEpisodeNumber(episode.episodeNumber)} is now monitored.'
                  : 'Episode ${FormatUtils.formatEpisodeNumber(episode.episodeNumber)} is now unmonitored.',
              type: CustomSnackbarType.success,
            );
          }
        } catch (e) {
          if (context.mounted) {
            CustomSnackbar.show(
              context,
              message: 'Failed to update episode monitoring: $e',
              type: CustomSnackbarType.error,
            );
          }
        }
      }),
      onSearch: () => _searchEpisode(context),
      onDelete: hasFile ? () => _confirmDeleteFile(context, ref) : null,
      onShowDetails: () => _showEpisodeDetails(context),
      onPlay: hasFile ? () => _playEpisode(context, ref) : null,
    );
  }

  Future<void> _playEpisode(BuildContext context, WidgetRef ref) async {
    final tvdbId = series.tvdbId;

    if (isMatchLoading) {
      CustomSnackbar.show(
        context,
        message: 'Loading metadata, please wait...',
        type: CustomSnackbarType.info,
      );
      return;
    }

    bool isCancelled = false;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => PopScope(
        canPop: false,
        child: Dialog(
          child: CustomDialog(
            title: 'Loading',
            heading: 'Loading Matching Service',
            bodyWidget: AnimatedLoadingText(),
            actions: [
              ElevatedButton(
                onPressed: () {
                  isCancelled = true;
                  Navigator.of(context).pop();
                },
                child: const Text('CANCEL'),
              ),
            ],
          ),
        ),
      ),
    );
    await Future.delayed(Duration(milliseconds: 600));

    try {
      final finalMatch = await controller.resolveJellyfinEpisodeMatch(
        tvdbId: tvdbId,
        seasonNumber: seasonNumber,
        episodeNumber: episode.episodeNumber ?? 0,
        jellyfinMatch: jellyfinMatch,
      );

      if (isCancelled) return;

      if (context.mounted) {
        Navigator.of(context).pop();
        await context.push('/jellyfinPlayer', extra: finalMatch);
        await Future.delayed(const Duration(milliseconds: 1000));
        controller.invalidateJellyfinMatch(tvdbId!, seasonNumber);
      }
    } catch (e) {
      if (isCancelled) return;
      
      if (context.mounted) {
        Navigator.of(context).pop();
        CustomSnackbar.show(
          context,
          message: e.toString().contains('Exception: ')
              ? e.toString().replaceFirst('Exception: ', '')
              : 'Jellyfin error: $e',
          type: CustomSnackbarType.error,
        );
      }
    }
  }

  Future<void> _searchEpisode(BuildContext context) async {
    if (episode.hasFile ?? false) {
      CustomSnackbar.show(
        context,
        message:
            'Episode E${FormatUtils.formatEpisodeNumber(episode.episodeNumber)} already has a file.',
        type: CustomSnackbarType.info,
      );
      return;
    }

    if (!context.mounted) return;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ReleaseSheet(
        target: EpisodeReleaseTarget(
          seriesId: series.id!,
          seasonNumber: seasonNumber,
          episodeId: episode.id!,
          title:
              '${series.title} - S${seasonNumber.toString().padLeft(2, '0')}E${episode.episodeNumber?.toString().padLeft(2, '0')}',
        ),
      ),
    );
  }

  void _confirmDeleteFile(BuildContext context, WidgetRef ref) {
    final hostContext = Navigator.of(context, rootNavigator: true).context;
    showDialog(
      context: context,
      builder: (dialogContext) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: CustomDialog(
            title: 'DELETE EPISODE',
            heading: 'Confirm Deletion',
            body:
                'Are you sure you want to delete the file for "${episode.title}"? This cannot be undone.',
            actions: [
              ElevatedButton(
                onPressed: () => dialogContext.pop(),
                child: const Text('Cancel'),
              ),
              OutlinedButton(
                onPressed: () {
                  dialogContext.pop();
                  if (episode.episodeFile?.id != null) {
                    runWithLoading(() async {
                      try {
                        await controller.deleteEpisodeFile(
                          episode.episodeFile!.id!,
                        );
                        if (hostContext.mounted) {
                          CustomSnackbar.show(
                            hostContext,
                            message: 'Episode file deleted successfully.',
                            type: CustomSnackbarType.success,
                          );
                        }
                      } catch (e) {
                        if (hostContext.mounted) {
                          CustomSnackbar.show(
                            hostContext,
                            message: 'Failed to delete episode file: $e',
                            type: CustomSnackbarType.error,
                          );
                        }
                      }
                    });
                  }
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Theme.of(dialogContext).colorScheme.error,
                  side: BorderSide(
                    color: Theme.of(
                      dialogContext,
                    ).colorScheme.error.withValues(alpha: 0.4),
                  ),
                ),
                child: const Text('DELETE'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showEpisodeDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: CustomDialog(
            includeIcon: false,
            title: 'EPISODE INFO',
            heading:
                'E${FormatUtils.formatEpisodeNumber(episode.episodeNumber)}: ${episode.title ?? 'Unknown'}',
            bodyWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (episode.airDate != null) ...[
                  const Text(
                    'Air Date:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(episode.airDate!),
                  const SizedBox(height: 8),
                ],
                if (episode.overview != null &&
                    episode.overview!.isNotEmpty) ...[
                  const Text(
                    'Overview:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(episode.overview!),
                  const SizedBox(height: 8),
                ],
                if (episode.hasFile == true && episode.episodeFile != null) ...[
                  const Text(
                    'File Info:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Quality: ${episode.episodeFile?.quality?.quality?.name ?? 'Unknown'}',
                  ),
                  Text(
                    'Size: ${FormatUtils.formatFileSize((episode.episodeFile?.size ?? 0).toDouble())}',
                  ),
                ],
              ],
            ),
            actions: [
              ElevatedButton(
                onPressed: () => context.pop(),
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
