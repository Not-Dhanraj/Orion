import 'package:client/features/sonarr/data/episode_provider/episode_provider.dart';
import 'package:client/features/sonarr/data/series_management_provider/series_management_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

/// A widget that displays season information and provides actions
class SeasonCard extends ConsumerStatefulWidget {
  final SonarrSeries series;
  final int seasonNumber;
  final String seasonName;

  const SeasonCard({
    super.key,
    required this.series,
    required this.seasonNumber,
    required this.seasonName,
  });

  @override
  ConsumerState<SeasonCard> createState() => _SeasonCardState();
}

class _SeasonCardState extends ConsumerState<SeasonCard> {
  // Track whether the season is expanded or collapsed
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final episodeState = ref.watch(episodeNotifierProvider);
    final episodeNotifier = ref.read(episodeNotifierProvider.notifier);
    final seriesManagementNotifier = ref.read(
      seriesManagementProvider.notifier,
    );
    final theme = Theme.of(context);

    // Watch the series data to get real-time updates when changes occur
    final seriesAsync = ref.watch(seriesProvider(widget.series.id!));

    // Find the current monitored status of this season
    bool? isSeasonMonitored;

    // Use the latest series data if available, otherwise fall back to the passed series
    final currentSeries = seriesAsync.value ?? widget.series;

    if (currentSeries.seasons != null) {
      for (final season in currentSeries.seasons!) {
        if (season.seasonNumber == widget.seasonNumber) {
          isSeasonMonitored = season.monitored;
          break;
        }
      }
    }

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // First part of the row - Season info with expansion indicator
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          _isExpanded
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            widget.seasonName,
                            style: theme.textTheme.titleLarge,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Badge for monitoring status - using shorter text for small screens
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: isSeasonMonitored == true
                                ? Colors.green.withOpacity(0.2)
                                : Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSeasonMonitored == true
                                  ? Colors.green
                                  : Colors.grey,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            isSeasonMonitored == true ? 'M' : 'UM',
                            style: TextStyle(
                              fontSize: 10,
                              color: isSeasonMonitored == true
                                  ? Colors.green
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Actions - Simplified to a single menu button for all screens
                  PopupMenuButton<String>(
                    icon: Icon(
                      Icons.more_vert,
                      color: theme.colorScheme.primary,
                    ),
                    tooltip: 'Season Actions',
                    onSelected: (String action) async {
                      switch (action) {
                        case 'monitor':
                          await _toggleMonitoring(
                            true,
                            seriesManagementNotifier,
                            currentSeries,
                          );
                          break;
                        case 'unmonitor':
                          await _toggleMonitoring(
                            false,
                            seriesManagementNotifier,
                            currentSeries,
                          );
                          break;
                        case 'search':
                          await _searchSeason(episodeNotifier, currentSeries);
                          break;
                      }
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 'monitor',
                        child: Row(
                          children: [
                            Icon(Icons.visibility),
                            SizedBox(width: 8),
                            Text('Monitor Season'),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: 'unmonitor',
                        child: Row(
                          children: [
                            Icon(Icons.visibility_off),
                            SizedBox(width: 8),
                            Text('Unmonitor Season'),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: 'search',
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 8),
                            Text('Search'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              if (_isExpanded) ...[
                const SizedBox(height: 8),
                _buildEpisodesList(ref, currentSeries.id!),
              ],
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to toggle season monitoring
  Future<void> _toggleMonitoring(
    bool monitored,
    SeriesManagementNotifier seriesManagementNotifier,
    SonarrSeries currentSeries,
  ) async {
    try {
      await seriesManagementNotifier.setSeasonMonitoring(
        currentSeries,
        widget.seasonNumber,
        monitored,
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '${widget.seasonName} ${monitored ? 'monitored' : 'unmonitored'}',
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
  }

  // Helper method to search for season episodes
  Future<void> _searchSeason(
    EpisodeNotifier episodeNotifier,
    SonarrSeries currentSeries,
  ) async {
    try {
      await episodeNotifier.seasonSearch(
        currentSeries.id!,
        widget.seasonNumber,
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Searching for ${widget.seasonName} episodes'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error searching for episodes: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Widget _buildEpisodesList(WidgetRef ref, int seriesId) {
    final episodesAsyncValue = ref.watch(seriesEpisodesProvider(seriesId));

    return episodesAsyncValue.when(
      data: (episodes) {
        final seasonEpisodes = episodes
            .where((episode) => episode.seasonNumber == widget.seasonNumber)
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
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
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
            final isCurrentlyMonitored = episode.monitored ?? false;
            await episodeNotifier.toggleEpisodeMonitored(
              episode,
              !isCurrentlyMonitored,
            );
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '${episode.title} ${isCurrentlyMonitored ? 'unmonitored' : 'monitored'}',
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
                      seriesId: episode.seriesId,
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
