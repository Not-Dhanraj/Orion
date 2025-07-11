import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:client/features/sonarr/presentation/shared/controllers/season_card_controller.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/episodes_list.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/season_card_header.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/season_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

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

  @override
  Widget build(BuildContext context) {
    final isExpanded = ref.watch(seasonCardControllerProvider);
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
        onTap: () {
          ref.read(seasonCardControllerProvider.notifier).toggleExpanded();
          if (isExpanded) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SeasonCardHeader(
                seasonName: widget.seasonName,
                isSeasonMonitored: isSeasonMonitored,
                animationController: _animationController,
                series: currentSeries,
                seasonNumber: widget.seasonNumber,
              ),
              SeasonProgressBar(
                seriesId: currentSeries.id!,
                seasonNumber: widget.seasonNumber,
              ),
              const Divider(height: 24),
              EpisodesList(
                isExpanded: isExpanded,
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