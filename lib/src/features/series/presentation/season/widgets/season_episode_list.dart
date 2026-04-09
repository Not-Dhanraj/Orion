import 'package:client/src/features/series/domain/season_page_args.dart';
import 'package:client/src/features/series/presentation/season/season_controller.dart';
import 'package:client/src/shared/domain/snackbar_config.dart';
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

    return Column(
      children: [
        for (final e in episodes)
          _EpisodeListItem(
            episode: e,
            series: series,
            seasonNumber: seasonNumber,
            controller: controller,
            runWithLoading: runWithLoading,
          ),
      ],
    );
  }
}

class _EpisodeListItem extends StatelessWidget {
  final EpisodeResource episode;
  final SeriesResource series;
  final int seasonNumber;
  final SeasonPageController controller;
  final Future<void> Function(Future<void> Function()) runWithLoading;

  const _EpisodeListItem({
    required this.episode,
    required this.series,
    required this.seasonNumber,
    required this.controller,
    required this.runWithLoading,
  });

  @override
  Widget build(BuildContext context) {
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

    return EpisodeRow(
      number: FormatUtils.formatEpisodeNumber(episode.episodeNumber),
      title: episode.title ?? 'Unknown',
      codec: codec,
      statusColor: statusColor,
      isMonitored: monitored,
      hasFile: hasFile,
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
      onDelete: hasFile ? () => _confirmDeleteFile(context) : null,
      onShowDetails: () => _showEpisodeDetails(context),
    );
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

  void _confirmDeleteFile(BuildContext context) {
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
