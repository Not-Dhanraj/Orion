import 'package:client/features/sonarr/data/commands_provider/commands_provider.dart';
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
                        case 'releases':
                          await _showSeasonReleases(
                            context,
                            currentSeries.id!,
                            widget.seasonNumber,
                          );
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
                      PopupMenuItem(
                        value: 'releases',
                        child: Row(
                          children: [
                            Icon(
                              Icons.list_alt,
                              color: theme.colorScheme.tertiary,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            const Text('Show Releases'),
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

  // Helper method to show season releases
  Future<void> _showSeasonReleases(
    BuildContext context,
    int seriesId,
    int seasonNumber,
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
      final releases = await commandsProvider.getSeasonReleases(
        seriesId,
        seasonNumber,
      );

      // Close loading dialog
      if (context.mounted) {
        Navigator.of(context).pop();
      }
      if (releases.isEmpty) {
        scaffoldMessenger.showSnackBar(
          const SnackBar(
            content: Text('No releases found for this season'),
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }

      if (context.mounted) {
        await showDialog(
          context: context,
          builder: (context) => _ReleaseSelectionDialog(
            releases: releases,
            title: 'Season ${widget.seasonNumber} Releases',
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

    return InkWell(
      onLongPress: episode.hasFile != true && episode.id != null
          ? () => _showEpisodeReleases(context, ref, episode.id!)
          : null,
      borderRadius: BorderRadius.circular(8),
      splashColor: theme.colorScheme.primary.withOpacity(0.1),
      highlightColor: theme.colorScheme.primary.withOpacity(0.05),
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
                      color: theme.colorScheme.secondary.withOpacity(0.7),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Long press to view available releases',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontStyle: FontStyle.italic,
                        color: theme.colorScheme.secondary.withOpacity(0.7),
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
          builder: (context) => _ReleaseSelectionDialog(
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

/// Dialog to select releases for download
class _ReleaseSelectionDialog extends ConsumerWidget {
  final List<SonarrRelease> releases;
  final String title;

  const _ReleaseSelectionDialog({required this.releases, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final commandsProvider = ref.read(sonarrCommandsProvider);

    return AlertDialog(
      title: Text(title),
      content: SizedBox(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Select a release to download:',
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: releases.length,
                itemBuilder: (context, index) {
                  final release = releases[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: theme.colorScheme.outline.withOpacity(0.2),
                        width: 0.5,
                      ),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      title: Text(
                        release.title ?? 'Unknown',
                        style: theme.textTheme.titleMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              _buildInfoChip(
                                theme,
                                '${release.quality?.quality?.name ?? 'Unknown'}',
                                theme.colorScheme.primary,
                              ),
                              const SizedBox(width: 8),
                              _buildInfoChip(
                                theme,
                                '${release.size != null ? _formatSize(release.size!) : 'Unknown'}',
                                theme.colorScheme.secondary,
                              ),
                              if (release.seeders != null)
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: _buildInfoChip(
                                    theme,
                                    '${release.seeders} seeders',
                                    Colors.green.shade700,
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.source,
                                size: 14,
                                color: theme.colorScheme.outline,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Indexer: ${release.indexer ?? 'Unknown'}',
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                release.protocol?.toLowerCase() == 'torrent'
                                    ? Icons.settings_ethernet
                                    : Icons.cloud_download,
                                size: 14,
                                color: theme.colorScheme.outline,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Protocol: ${release.protocol ?? 'Unknown'}',
                                style: theme.textTheme.bodySmall,
                              ),
                              if (release.ageHours != null)
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 14,
                                        color: theme.colorScheme.outline,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '${_formatAge(release.ageHours!)}',
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.download),
                        tooltip: 'Download this release',
                        style: IconButton.styleFrom(
                          backgroundColor: theme.colorScheme.primaryContainer,
                          foregroundColor: theme.colorScheme.onPrimaryContainer,
                        ),
                        onPressed: () async {
                          // Close the dialog
                          Navigator.of(context).pop();

                          final scaffoldMessenger = ScaffoldMessenger.of(
                            context,
                          );

                          try {
                            await commandsProvider.downloadRelease(
                              guid: release.guid!,
                              indexerId: release.indexerId!,
                            );

                            scaffoldMessenger.showSnackBar(
                              const SnackBar(
                                content: Text('Release downloading'),
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.green,
                              ),
                            );
                          } catch (e) {
                            scaffoldMessenger.showSnackBar(
                              SnackBar(
                                content: Text('Error downloading release: $e'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                      ),
                      isThreeLine: true,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('CANCEL'),
        ),
      ],
    );
  }

  Widget _buildInfoChip(ThemeData theme, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(38),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  String _formatSize(int bytes) {
    const suffixes = ["B", "KB", "MB", "GB", "TB"];
    var i = 0;
    double size = bytes.toDouble();

    while (size > 1024 && i < suffixes.length - 1) {
      size /= 1024;
      i++;
    }

    return '${size.toStringAsFixed(2)} ${suffixes[i]}';
  }

  String _formatAge(double hours) {
    if (hours < 1) {
      final minutes = (hours * 60).round();
      return '$minutes min${minutes == 1 ? '' : 's'} old';
    } else if (hours < 24) {
      final hrs = hours.round();
      return '$hrs hour${hrs == 1 ? '' : 's'} old';
    } else {
      final days = (hours / 24).round();
      return '$days day${days == 1 ? '' : 's'} old';
    }
  }
}
