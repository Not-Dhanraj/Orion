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

class _SeasonCardState extends ConsumerState<SeasonCard>
    with SingleTickerProviderStateMixin {
  // Track whether the season is expanded or collapsed
  bool _isExpanded = false;

  // Animation controller for smooth expand/collapse transitions
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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

    // Calculate episode statistics for this season if available
    int totalEpisodes = 0;
    int downloadedEpisodes = 0;
    final episodesAsyncValue = ref.watch(
      seriesEpisodesProvider(currentSeries.id!),
    );
    if (episodesAsyncValue.hasValue) {
      final seasonEpisodes = episodesAsyncValue.value!
          .where((episode) => episode.seasonNumber == widget.seasonNumber)
          .toList();
      totalEpisodes = seasonEpisodes.length;
      downloadedEpisodes = seasonEpisodes
          .where((e) => e.hasFile == true)
          .length;
    }

    final progressValue = totalEpisodes > 0
        ? downloadedEpisodes / totalEpisodes
        : 0.0;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: isSeasonMonitored == true
              ? theme.colorScheme.primary.withAlpha(51)
              : Colors.grey.withAlpha(25),
          width: 1.5,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: _toggleExpanded,
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
                        // Animated rotation for the expansion icon
                        RotationTransition(
                          turns: Tween(
                            begin: 0.0,
                            end: 0.25,
                          ).animate(_animationController),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: theme.colorScheme.primary,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.seasonName,
                                style: theme.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              if (totalEpisodes > 0) ...[
                                const SizedBox(height: 4),
                                Text(
                                  '$downloadedEpisodes/$totalEpisodes episodes',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.textTheme.bodySmall?.color
                                        ?.withAlpha(178),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Enhanced badge for monitoring status
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: isSeasonMonitored == true
                                ? theme.colorScheme.primary.withAlpha(38)
                                : Colors.grey.withAlpha(25),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                isSeasonMonitored == true
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: isSeasonMonitored == true
                                    ? theme.colorScheme.primary
                                    : Colors.grey,
                                size: 14,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                isSeasonMonitored == true
                                    ? 'Monitored'
                                    : 'Unmonitored',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isSeasonMonitored == true
                                      ? theme.colorScheme.primary
                                      : Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Actions - Enhanced with better styling
                  PopupMenuButton<String>(
                    icon: Icon(
                      Icons.more_horiz,
                      color: theme.colorScheme.primary,
                    ),
                    tooltip: 'Season Actions',
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    position: PopupMenuPosition.under,
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
                      PopupMenuItem(
                        value: 'monitor',
                        child: Row(
                          children: [
                            Icon(
                              Icons.visibility,
                              color: theme.colorScheme.primary,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            const Text('Monitor Season'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'unmonitor',
                        child: Row(
                          children: [
                            Icon(
                              Icons.visibility_off,
                              color: Colors.grey.shade600,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            const Text('Unmonitor Season'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'search',
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: theme.colorScheme.secondary,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            const Text('Search'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Season progress indicator
              if (totalEpisodes > 0) ...[
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Progress',
                                style: theme.textTheme.bodyMedium,
                              ),
                              Text(
                                '${(progressValue * 100).toInt()}%',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: progressValue > 0
                                      ? theme.colorScheme.primary
                                      : theme.textTheme.bodyMedium?.color,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: LinearProgressIndicator(
                              value: progressValue,
                              backgroundColor: Colors.grey.withAlpha(51),
                              minHeight: 8,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
              const Divider(height: 24),
              // Episodes list with animated expansion
              AnimatedCrossFade(
                firstChild: const SizedBox.shrink(),
                secondChild: Column(
                  children: [
                    const SizedBox(height: 8),
                    _buildEpisodesList(ref, currentSeries.id!),
                  ],
                ),
                crossFadeState: _isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 300),
              ),
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
    if (!context.mounted) return;
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    try {
      await seriesManagementNotifier.setSeasonMonitoring(
        currentSeries,
        widget.seasonNumber,
        monitored,
      );
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text(
            '${widget.seasonName} ${monitored ? 'monitored' : 'unmonitored'}',
          ),
          duration: const Duration(seconds: 2),
        ),
      );
    } catch (e) {
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text('Error updating season: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  // Helper method to search for season episodes
  Future<void> _searchSeason(
    EpisodeNotifier episodeNotifier,
    SonarrSeries currentSeries,
  ) async {
    if (!context.mounted) return;
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    try {
      await episodeNotifier.seasonSearch(
        currentSeries.id!,
        widget.seasonNumber,
      );
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text('Searching for ${widget.seasonName} episodes'),
          duration: const Duration(seconds: 2),
        ),
      );
    } catch (e) {
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text('Error searching for episodes: $e'),
          backgroundColor: Colors.red,
        ),
      );
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
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.video_library_outlined,
                    size: 40,
                    color: Colors.grey.withAlpha(128),
                  ),
                  const SizedBox(height: 8),
                  const Text('No episodes found for this season'),
                ],
              ),
            ),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 4),
              child: Text(
                'Episodes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: seasonEpisodes.length,
              separatorBuilder: (context, index) => Divider(
                height: 1,
                indent: 48,
                color: Colors.grey.withAlpha(51),
              ),
              itemBuilder: (context, index) {
                final episode = seasonEpisodes[index];
                return EpisodeListItem(episode: episode);
              },
            ),
          ],
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
        child: Column(
          children: [
            Icon(Icons.error_outline, color: Colors.red.shade300, size: 40),
            const SizedBox(height: 8),
            Text(
              'Error loading episodes: $error',
              style: TextStyle(color: Colors.red.shade800),
              textAlign: TextAlign.center,
            ),
          ],
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
            IconButton(
              icon: const Icon(Icons.download),
              tooltip: 'Download Episode',
              onPressed: () async {
                if (!context.mounted) return;
                final scaffoldMessenger = ScaffoldMessenger.of(context);

                try {
                  if (episode.id == null) {
                    scaffoldMessenger.showSnackBar(
                      const SnackBar(
                        content: Text('Cannot download: Missing episode ID'),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }

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
                } catch (e) {
                  scaffoldMessenger.showSnackBar(
                    SnackBar(
                      content: Text('Error downloading episode: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
            ),
        ],
      ),
    );
  }
}
