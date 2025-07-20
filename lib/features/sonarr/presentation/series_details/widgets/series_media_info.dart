import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesMediaInfo extends StatelessWidget {
  final SonarrSeries series;

  const SeriesMediaInfo({super.key, required this.series});

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withCustomOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.movie_outlined,
                    color: theme.colorScheme.onSecondaryContainer,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12.0),
                Text(
                  'Media Info',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatCounter(
                  context,
                  'Runtime',
                  '${series.runtime ?? 0} min',
                  Icons.timer,
                ),
                _buildStatCounter(
                  context,
                  'Status',
                  series.status ?? 'Unknown',
                  Icons.live_tv,
                ),
                _buildStatCounter(
                  context,
                  'Quality',
                  'Profile ${series.qualityProfileId ?? 0}',
                  Icons.high_quality,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest
                    .withCustomOpacity(0.4),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  if (series.firstAired != null) ...[
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.event,
                            color: theme.colorScheme.onPrimaryContainer,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'First aired: ${_formatDate(series.firstAired!)}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                  if (series.airTime != null && series.airTime!.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.access_time,
                            color: theme.colorScheme.onPrimaryContainer,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Air time: ${series.airTime}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCounter(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withAlpha(20),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: theme.colorScheme.onSecondaryContainer,
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
