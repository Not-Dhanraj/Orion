import 'package:client/core/widgets/info_row.dart';
import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesInformationCard extends StatelessWidget {
  final SonarrSeries series;

  const SeriesInformationCard({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 2,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: theme.primaryColor,
                  size: 20,
                ),
                const SizedBox(width: 8.0),
                Text(
                  'Series Information',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            InfoRow(
              label: 'Status',
              value: series.status ?? 'Unknown',
              icon: Icons.play_circle_outline,
            ),
            if (series.imdbId?.isNotEmpty == true)
              InfoRow(
                label: 'IMDb ID',
                value: series.imdbId!,
                icon: Icons.movie_outlined,
              ),
            if (series.id != null)
              InfoRow(
                label: 'Sonarr ID',
                value: series.id!.toString(),
                icon: Icons.tag,
              ),
            if (series.tvdbId != null)
              InfoRow(
                label: 'TVDB ID',
                value: series.tvdbId!.toString(),
                icon: Icons.tv_outlined,
              ),
          ],
        ),
      ),
    );
  }
}
