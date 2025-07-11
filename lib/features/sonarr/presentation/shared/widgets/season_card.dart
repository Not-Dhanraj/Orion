import 'package:client/features/sonarr/application/provider/commands_provider/commands_provider.dart';
import 'package:client/features/sonarr/application/provider/episode_provider/episode_provider.dart';
import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

import 'episode_list_item.dart';
import 'release_selection_dialog.dart';

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
  bool _isExpanded = false;
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
    final seriesAsync = ref.watch(singleSeriesProvider(widget.series.id!));
    final currentSeries = seriesAsync.value ?? widget.series;
    final isSeasonMonitored = _isSeasonMonitored(currentSeries);

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: isSeasonMonitored
              ? Theme.of(context).colorScheme.primary.withAlpha(51)
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
              _SeasonCardHeader(
                seasonName: widget.seasonName,
                isSeasonMonitored: isSeasonMonitored,
                animationController: _animationController,
                series: currentSeries,
                seasonNumber: widget.seasonNumber,
              ),
              _SeasonProgressBar(seriesId: currentSeries.id!, seasonNumber: widget.seasonNumber),
              const Divider(height: 24),
              _EpisodesList(
                isExpanded: _isExpanded,
                seriesId: currentSeries.id!,
                seasonNumber: widget.seasonNumber,
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isSeasonMonitored(SonarrSeries series) {
    if (series.seasons != null) {
      for (final season in series.seasons!) {
        if (season.seasonNumber == widget.seasonNumber) {
          return season.monitored ?? false;
        }
      }
    }
    return false;
  }
}

class _SeasonCardHeader extends ConsumerWidget {
  final String seasonName;
  final bool isSeasonMonitored;
  final AnimationController animationController;
  final SonarrSeries series;
  final int seasonNumber;

  const _SeasonCardHeader({
    required this.seasonName,
    required this.isSeasonMonitored,
    required this.animationController,
    required this.series,
    required this.seasonNumber,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final episodeNotifier = ref.read(episodeNotifierProvider.notifier);
    final seriesManagementNotifier = ref.read(seriesManagementProvider.notifier);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              RotationTransition(
                turns: Tween(begin: 0.0, end: 0.25).animate(animationController),
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
                      seasonName,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    _EpisodeStats(seriesId: series.id!, seasonNumber: seasonNumber),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              _MonitoringStatusBadge(isMonitored: isSeasonMonitored),
            ],
          ),
        ),
        _SeasonActionsMenu(
          series: series,
          seasonNumber: seasonNumber,
          onToggleMonitoring: (monitored) => _toggleMonitoring(
            monitored,
            seriesManagementNotifier,
            series,
            context,
          ),
          onSearch: () => _searchSeason(episodeNotifier, series, context),
          onShowReleases: () => _showSeasonReleases(context, ref, series.id!, seasonNumber),
        ),
      ],
    );
  }

  Future<void> _toggleMonitoring(
    bool monitored,
    SeriesManagementNotifier seriesManagementNotifier,
    SonarrSeries currentSeries,
    BuildContext context,
  ) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
      await seriesManagementNotifier.setSeasonMonitoring(
        currentSeries,
        seasonNumber,
        monitored,
      );
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text(
            '$seasonName ${monitored ? 'monitored' : 'unmonitored'}',
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

  Future<void> _searchSeason(
    EpisodeNotifier episodeNotifier,
    SonarrSeries currentSeries,
    BuildContext context,
  ) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
      await episodeNotifier.seasonSearch(
        currentSeries.id!,
        seasonNumber,
      );
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text('Searching for $seasonName episodes'),
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

  Future<void> _showSeasonReleases(
    BuildContext context,
    WidgetRef ref,
    int seriesId,
    int seasonNumber,
  ) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
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

      Navigator.of(context).pop();

      if (releases.isEmpty) {
        scaffoldMessenger.showSnackBar(
          const SnackBar(
            content: Text('No releases found for this season'),
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }

      await showDialog(
        context: context,
        builder: (context) => ReleaseSelectionDialog(
          releases: releases,
          title: 'Season $seasonNumber Releases',
        ),
      );
    } catch (e) {
      Navigator.of(context).pop();
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text('Error fetching releases: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}

class _EpisodeStats extends ConsumerWidget {
  final int seriesId;
  final int seasonNumber;

  const _EpisodeStats({required this.seriesId, required this.seasonNumber});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodesAsyncValue = ref.watch(seriesEpisodesProvider(seriesId));
    final theme = Theme.of(context);

    return episodesAsyncValue.when(
      data: (episodes) {
        final seasonEpisodes =
            episodes.where((e) => e.seasonNumber == seasonNumber).toList();
        final totalEpisodes = seasonEpisodes.length;
        final downloadedEpisodes =
            seasonEpisodes.where((e) => e.hasFile == true).length;

        if (totalEpisodes == 0) {
          return const SizedBox.shrink();
        }

        return Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            '$downloadedEpisodes/$totalEpisodes episodes',
            style: theme.textTheme.bodySmall
                ?.copyWith(color: theme.textTheme.bodySmall?.color?.withAlpha(178)),
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (e, st) => const SizedBox.shrink(),
    );
  }
}

class _MonitoringStatusBadge extends StatelessWidget {
  final bool isMonitored;

  const _MonitoringStatusBadge({required this.isMonitored});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: isMonitored
            ? theme.colorScheme.primary.withAlpha(38)
            : Colors.grey.withAlpha(25),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isMonitored ? Icons.visibility : Icons.visibility_off,
            color: isMonitored ? theme.colorScheme.primary : Colors.grey,
            size: 14,
          ),
          const SizedBox(width: 4),
          Text(
            isMonitored ? 'Monitored' : 'Unmonitored',
            style: TextStyle(
              fontSize: 12,
              color: isMonitored ? theme.colorScheme.primary : Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _SeasonActionsMenu extends StatelessWidget {
  final SonarrSeries series;
  final int seasonNumber;
  final Function(bool) onToggleMonitoring;
  final VoidCallback onSearch;
  final VoidCallback onShowReleases;

  const _SeasonActionsMenu({
    required this.series,
    required this.seasonNumber,
    required this.onToggleMonitoring,
    required this.onSearch,
    required this.onShowReleases,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_horiz, color: theme.colorScheme.primary),
      tooltip: 'Season Actions',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      position: PopupMenuPosition.under,
      onSelected: (String action) {
        switch (action) {
          case 'monitor':
            onToggleMonitoring(true);
            break;
          case 'unmonitor':
            onToggleMonitoring(false);
            break;
          case 'search':
            onSearch();
            break;
          case 'releases':
            onShowReleases();
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'monitor',
          child: Row(
            children: [
              Icon(Icons.visibility, color: theme.colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              const Text('Monitor Season'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'unmonitor',
          child: Row(
            children: [
              Icon(Icons.visibility_off, color: Colors.grey.shade600, size: 20),
              const SizedBox(width: 12),
              const Text('Unmonitor Season'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'search',
          child: Row(
            children: [
              Icon(Icons.search, color: theme.colorScheme.secondary, size: 20),
              const SizedBox(width: 12),
              const Text('Search'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'releases',
          child: Row(
            children: [
              Icon(Icons.list_alt, color: theme.colorScheme.tertiary, size: 20),
              const SizedBox(width: 12),
              const Text('Show Releases'),
            ],
          ),
        ),
      ],
    );
  }
}

class _SeasonProgressBar extends ConsumerWidget {
  final int seriesId;
  final int seasonNumber;

  const _SeasonProgressBar({required this.seriesId, required this.seasonNumber});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodesAsyncValue = ref.watch(seriesEpisodesProvider(seriesId));
    final theme = Theme.of(context);

    return episodesAsyncValue.when(
      data: (episodes) {
        final seasonEpisodes =
            episodes.where((e) => e.seasonNumber == seasonNumber).toList();
        final totalEpisodes = seasonEpisodes.length;
        if (totalEpisodes == 0) {
          return const SizedBox.shrink();
        }
        final downloadedEpisodes =
            seasonEpisodes.where((e) => e.hasFile == true).length;
        final progressValue = downloadedEpisodes / totalEpisodes;

        return Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Progress', style: theme.textTheme.bodyMedium),
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
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (e, st) => const SizedBox.shrink(),
    );
  }
}

class _EpisodesList extends ConsumerWidget {
  final bool isExpanded;
  final int seriesId;
  final int seasonNumber;

  const _EpisodesList({
    required this.isExpanded,
    required this.seriesId,
    required this.seasonNumber,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodesAsyncValue = ref.watch(seriesEpisodesProvider(seriesId));

    return AnimatedCrossFade(
      firstChild: const SizedBox.shrink(),
      secondChild: Column(
        children: [
          const SizedBox(height: 8),
          episodesAsyncValue.when(
            data: (episodes) {
              final seasonEpisodes =
                  episodes.where((e) => e.seasonNumber == seasonNumber).toList();

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
          ),
        ],
      ),
      crossFadeState:
          isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    );
  }
}
