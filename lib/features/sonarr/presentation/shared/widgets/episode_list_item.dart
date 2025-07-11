import 'package:client/features/sonarr/application/provider/commands_provider/commands_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

import 'package:client/features/sonarr/application/provider/episode_provider/episode_provider.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/release_selection_dialog.dart';

class EpisodeListItem extends ConsumerWidget {
  final SonarrEpisode episode;

  const EpisodeListItem({super.key, required this.episode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodeNotifier = ref.read(episodeNotifierProvider.notifier);
    final theme = Theme.of(context);

    return InkWell(
      onLongPress: episode.hasFile != true && episode.id != null
          ? () => _showEpisodeReleases(context, ref, episode.id!)
          : null,
      borderRadius: BorderRadius.circular(8),
      splashColor: theme.colorScheme.primary.withAlpha(25),
      highlightColor: theme.colorScheme.primary.withAlpha(12),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          episode.title ?? 'Unknown Episode',
          style: theme.textTheme.titleMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Episode ${episode.episodeNumber}${episode.airDate != null ? ' • ${episode.airDate}' : ''}',
              style: theme.textTheme.bodyMedium,
            ),
            if (episode.hasFile != true)
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.touch_app,
                      size: 14,
                      color: theme.colorScheme.secondary.withAlpha(178),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Long press to view available releases',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontStyle: FontStyle.italic,
                        color: theme.colorScheme.secondary.withAlpha(178),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        leading: IconButton(
          icon: Icon(
            episode.monitored == true ? Icons.visibility : Icons.visibility_off,
            color: episode.monitored == true
                ? theme.colorScheme.primary
                : Colors.grey,
          ),
          tooltip: episode.monitored == true
              ? 'Unmonitor Episode'
              : 'Monitor Episode',
          onPressed: () async {
            if (!context.mounted) return;
            final scaffoldMessenger = ScaffoldMessenger.of(context);

            try {
              final isCurrentlyMonitored = episode.monitored ?? false;
              await episodeNotifier.toggleEpisodeMonitored(
                episode,
                !isCurrentlyMonitored,
              );
              scaffoldMessenger.showSnackBar(
                SnackBar(
                  content: Text(
                    '${episode.title} ${isCurrentlyMonitored ? 'unmonitored' : 'monitored'}',
                  ),
                  duration: const Duration(seconds: 2),
                ),
              );
            } catch (e) {
              scaffoldMessenger.showSnackBar(
                SnackBar(
                  content: Text('Error updating monitoring status: $e'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (episode.hasFile == true)
              // Show delete option if episode is downloaded
              IconButton(
                icon: const Icon(Icons.delete_outline),
                tooltip: 'Delete Episode File',
                onPressed: () async {
                  if (!context.mounted) return;
                  final scaffoldMessenger = ScaffoldMessenger.of(context);
                  final navigator = Navigator.of(context);

                  // Confirm deletion
                  final confirmed = await showDialog<bool>(
                    builder: (context) => AlertDialog(
                      title: const Text('Delete Episode File'),
                      content: Text(
                        'Are you sure you want to delete the file for "${episode.title}"?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => navigator.pop(false),
                          child: const Text('CANCEL'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.red,
                          ),
                          onPressed: () => navigator.pop(true),
                          child: const Text('DELETE'),
                        ),
                      ],
                    ),
                    context: context,
                  );

                  if (confirmed == true && episode.episodeFileId != null) {
                    try {
                      await episodeNotifier.deleteEpisodeFile(
                        episode.episodeFileId!,
                        seriesId: episode.seriesId,
                      );
                      scaffoldMessenger.showSnackBar(
                        const SnackBar(
                          content: Text('Episode file deleted'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } catch (e) {
                      scaffoldMessenger.showSnackBar(
                        SnackBar(
                          content: Text('Error deleting file: $e'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  }
                },
              )
            else
              // Show download options if episode is not downloaded
              PopupMenuButton<String>(
                tooltip: 'Download Options',
                icon: const Icon(Icons.download),
                itemBuilder: (context) => [
                  PopupMenuItem<String>(
                    value: 'auto',
                    child: Row(
                      children: [
                        Icon(
                          Icons.smart_button,
                          color: Theme.of(context).colorScheme.primary,
                          size: 20,
                        ),
                        const SizedBox(width: 12),
                        const Text('Auto Download'),
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'manual',
                    child: Row(
                      children: [
                        Icon(
                          Icons.list_alt,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 20,
                        ),
                        const SizedBox(width: 12),
                        const Text('Choose Release'),
                      ],
                    ),
                  ),
                ],
                onSelected: (value) async {
                  if (!context.mounted) return;
                  final scaffoldMessenger = ScaffoldMessenger.of(context);

                  if (episode.id == null) {
                    scaffoldMessenger.showSnackBar(
                      const SnackBar(
                        content: Text('Cannot download: Missing episode ID'),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }

                  try {
                    if (value == 'auto') {
                      await episodeNotifier.downloadEpisode(episode.id!);
                      scaffoldMessenger.showSnackBar(
                        SnackBar(
                          content: Text(
                            'Searching "${episode.title}". Please check queue after few seconds',
                          ),
                          backgroundColor: Colors.green,
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    } else if (value == 'manual') {
                      await _showEpisodeReleases(context, ref, episode.id!);
                    }
                  } catch (e) {
                    scaffoldMessenger.showSnackBar(
                      SnackBar(
                        content: Text('Error: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
              ),
          ],
        ),
      ),
    );
  }

  // Helper method to show episode releases
  Future<void> _showEpisodeReleases(
    BuildContext context,
    WidgetRef ref,
    int episodeId,
  ) async {
    if (!context.mounted) return;
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    try {
      // Show loading dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );

      final commandsProvider = ref.read(sonarrCommandsProvider);
      final releases = await commandsProvider.getReleases(episodeId);

      // Close loading dialog
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      if (releases.isEmpty) {
        scaffoldMessenger.showSnackBar(
          const SnackBar(
            content: Text('No releases found for this episode'),
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }

      if (context.mounted) {
        await showDialog(
          context: context,
          builder: (context) => ReleaseSelectionDialog(
            releases: releases,
            title: '${episode.title ?? 'Episode'} Releases',
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.of(context).pop(); // Close loading dialog if still showing
      }

      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text('Error fetching releases: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
