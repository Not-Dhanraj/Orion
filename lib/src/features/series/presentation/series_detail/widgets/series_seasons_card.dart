import 'package:animations/animations.dart';
import 'package:client/src/features/series/presentation/season/season_page.dart';
import 'package:flutter/material.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesSeasonsCard extends StatelessWidget {
  final SeriesResource series;

  const SeriesSeasonsCard({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    final seasons = series.seasons?.toList();
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withCustomOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: OpenContainer(
        closedElevation: 0,
        closedColor: Colors.transparent,
        openColor: Colors.transparent,
        transitionType: ContainerTransitionType.fadeThrough,
        openBuilder: (context, action) {
          return SeasonPage(series: series);
        },
        closedBuilder: (context, action) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.shadow.withCustomOpacity(
                              0.15,
                            ),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.video_library_rounded,
                        color: theme.colorScheme.onSecondaryContainer,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'View Seasons & Episodes',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Browse all episodes by season',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer
                            .withCustomOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.chevron_right,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                if (seasons?.isNotEmpty == true) ...[
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest
                          .withCustomOpacity(0.4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder,
                          size: 18,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _getSeasonText(seasons),
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  String _getSeasonText(List<SeasonResource>? seasons) {
    final regularSeasons =
        seasons?.where((season) => season.seasonNumber != 0).toList() ?? [];
    final specialsCount = (seasons?.length ?? 0) - regularSeasons.length;

    String text =
        '${regularSeasons.length} Season${regularSeasons.length > 1 ? 's' : ''} available';
    if (specialsCount > 0) {
      text += ' (+ $specialsCount Special${specialsCount > 1 ? 's' : ''})';
    }
    return text;
  }
}
