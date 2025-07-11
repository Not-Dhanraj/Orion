import 'package:client/features/sonarr/data/episode_provider/episode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

/// A widget that displays season information and provides actions
class SeasonCard extends ConsumerWidget {
  final int seriesId;
  final int seasonNumber;
  final String seasonName;

  const SeasonCard({
    super.key,
    required this.seriesId,
    required this.seasonNumber,
    required this.seasonName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodeState = ref.watch(episodeNotifierProvider);
    final episodeNotifier = ref.read(episodeNotifierProvider.notifier);
    final theme = Theme.of(context);

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(seasonName, style: theme.textTheme.titleLarge),
                Row(
                  children: [
                    // Monitor/unmonitor dropdown for the entire season
                    PopupMenuButton<bool>(
                      icon: const Icon(Icons.visibility),
                      tooltip: 'Monitor/Unmonitor Season',
                      onSelected: (bool monitored) async {
                        try {
                          await episodeNotifier.toggleSeasonMonitored(
                            seriesId,
                            seasonNumber,
                            monitored,
                          );
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  '$seasonName ${monitored ? 'monitored' : 'unmonitored'}',
                                ),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          }
                        } catch (e) {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Error updating season: $e'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        }
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<bool>>[
                            const PopupMenuItem<bool>(
                              value: true,
                              child: Row(
                                children: [
                                  Icon(Icons.visibility),
                                  SizedBox(width: 8),
                                  Text('Monitor Season'),
                                ],
                              ),
                            ),
                            const PopupMenuItem<bool>(
                              value: false,
                              child: Row(
                                children: [
                                  Icon(Icons.visibility_off),
                                  SizedBox(width: 8),
                                  Text('Unmonitor Season'),
                                ],
                              ),
                            ),
                          ],
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      onPressed: episodeState is AsyncLoading
                          ? null
                          : () async {
                              try {
                                await episodeNotifier.seasonSearch(
                                  seriesId,
                                  seasonNumber,
                                );
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Searching for $seasonName episodes',
                                      ),
                                      duration: const Duration(seconds: 2),
                                    ),
                                  );
                                }
                              } catch (e) {
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Error searching for episodes: $e',
                                      ),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              }
                            },
                      icon: episodeState is AsyncLoading
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.search),
                      label: const Text('Search'),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            _buildEpisodesList(ref),
          ],
        ),
      ),
    );
  }

  Widget _buildEpisodesList(WidgetRef ref) {
    final episodesAsyncValue = ref.watch(seriesEpisodesProvider(seriesId));

    return episodesAsyncValue.when(
      data: (episodes) {
        final seasonEpisodes = episodes
            .where((episode) => episode.seasonNumber == seasonNumber)
            .toList();

        if (seasonEpisodes.isEmpty) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: Text('No episodes found for this season')),
          );
        }

        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: seasonEpisodes.length,
          separatorBuilder: (_, __) => const Divider(height: 1),
          itemBuilder: (context, index) {
            final episode = seasonEpisodes[index];
            return EpisodeListItem(episode: episode);
          },
        );
      },
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stack) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Error loading episodes: $error',
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

/// A widget that displays episode information
class EpisodeListItem extends ConsumerWidget {
  final SonarrEpisode episode;

  const EpisodeListItem({super.key, required this.episode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodeNotifier = ref.read(episodeNotifierProvider.notifier);
    final theme = Theme.of(context);

    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        episode.title ?? 'Unknown Episode',
        style: theme.textTheme.titleMedium,
      ),
      subtitle: Text(
        'Episode ${episode.episodeNumber}${episode.airDate != null ? ' • ${episode.airDate}' : ''}',
        style: theme.textTheme.bodyMedium,
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
          try {
            await episodeNotifier.toggleEpisodeMonitored(
              episode,
              !(episode.monitored ?? false),
            );
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '${episode.title} ${episode.monitored == true ? 'unmonitored' : 'monitored'}',
                  ),
                  duration: const Duration(seconds: 2),
                ),
              );
            }
          } catch (e) {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Error updating monitoring status: $e'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          }
        },
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (episode.hasFile == true)
            IconButton(
              icon: const Icon(Icons.delete_outline),
              tooltip: 'Delete Episode File',
              onPressed: () async {
                // Confirm deletion
                final confirmed = await showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Delete Episode File'),
                    content: Text(
                      'Are you sure you want to delete the file for "${episode.title}"?',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('CANCEL'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text('DELETE'),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                );

                if (confirmed == true && episode.episodeFileId != null) {
                  try {
                    await episodeNotifier.deleteEpisodeFile(
                      episode.episodeFileId!,
                    );
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Episode file deleted'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Error deleting file: $e'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  }
                }
              },
            )
          else
            IconButton(
              icon: const Icon(Icons.download),
              tooltip: 'Download Episode',
              onPressed: () async {
                try {
                  if (episode.id == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Cannot download: Missing episode ID'),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }

                  await episodeNotifier.downloadEpisode(episode.id!);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Downloading "${episode.title}"'),
                        backgroundColor: Colors.green,
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  }
                } catch (e) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Error downloading episode: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              },
            ),
        ],
      ),
    );
  }
}
