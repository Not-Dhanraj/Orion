import 'package:client/features/sonarr/application/season_service.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/episode_stats.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/monitoring_status_badge.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/release_selection_dialog.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/season_actions_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeasonCardHeader extends ConsumerWidget {
  final String seasonName;
  final bool isSeasonMonitored;
  final AnimationController animationController;
  final SonarrSeries series;
  final int seasonNumber;

  const SeasonCardHeader({
    super.key,
    required this.seasonName,
    required this.isSeasonMonitored,
    required this.animationController,
    required this.series,
    required this.seasonNumber,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final seasonService = ref.read(seasonServiceProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              RotationTransition(
                turns: Tween(
                  begin: 0.0,
                  end: 0.25,
                ).animate(animationController),
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
                    EpisodeStats(
                      seriesId: series.id!,
                      seasonNumber: seasonNumber,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              MonitoringStatusBadge(isMonitored: isSeasonMonitored),
            ],
          ),
        ),
        SeasonActionsMenu(
          series: series,
          seasonNumber: seasonNumber,
          onToggleMonitoring: (monitored) =>
              _toggleMonitoring(monitored, seasonService, series, context),
          onSearch: () => _searchSeason(seasonService, series, context),
          onShowReleases: () =>
              _showSeasonReleases(context, ref, series.id!, seasonNumber),
        ),
      ],
    );
  }

  Future<void> _toggleMonitoring(
    bool monitored,
    SeasonService seasonService,
    SonarrSeries currentSeries,
    BuildContext context,
  ) async {
    try {
      await seasonService.toggleSeasonMonitoring(
        currentSeries,
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
  }

  Future<void> _searchSeason(
    SeasonService seasonService,
    SonarrSeries currentSeries,
    BuildContext context,
  ) async {
    try {
      await seasonService.searchSeason(currentSeries.id!, seasonNumber);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Searching for $seasonName episodes'),
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

  Future<void> _showSeasonReleases(
    BuildContext context,
    WidgetRef ref,
    int seriesId,
    int seasonNumber,
  ) async {
    if (!context.mounted) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final seasonService = ref.read(seasonServiceProvider);
      final releases = await seasonService.getSeasonReleases(
        seriesId,
        seasonNumber,
      );

      if (context.mounted) {
        Navigator.of(context).pop();
      }

      if (releases.isEmpty) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('No releases found for this season'),
              duration: Duration(seconds: 2),
            ),
          );
        }
        return;
      }

      if (context.mounted) {
        await showDialog(
          context: context,
          builder: (context) => ReleaseSelectionDialog(
            releases: releases,
            title: 'Season $seasonNumber Releases',
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error fetching releases: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
