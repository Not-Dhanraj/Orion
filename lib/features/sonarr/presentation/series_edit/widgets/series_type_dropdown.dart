import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesTypeDropdown extends StatelessWidget {
  final SonarrSeries series;
  final Function(SonarrSeries) onSeriesChanged;

  const SeriesTypeDropdown({
    super.key,
    required this.series,
    required this.onSeriesChanged,
  });

  IconData _getSeriesTypeIcon(SonarrSeriesType type) {
    return switch (type) {
      SonarrSeriesType.ANIME => Icons.animation,
      SonarrSeriesType.DAILY => Icons.calendar_today,
      SonarrSeriesType.STANDARD => Icons.tv,
    };
  }

  String _formatSeriesType(SonarrSeriesType type) {
    if (type == SonarrSeriesType.ANIME) return 'Anime';
    if (type == SonarrSeriesType.DAILY) return 'Daily';
    if (type == SonarrSeriesType.STANDARD) return 'Standard';

    return type.toString().split('.').last;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outline.withAlpha(25),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DropdownButtonFormField<SonarrSeriesType>(
          value: series.seriesType ?? SonarrSeriesType.STANDARD,
          decoration: const InputDecoration(
            labelText: 'Series Type',
            border: OutlineInputBorder(),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
          items: SonarrSeriesType.values.map((type) {
            return DropdownMenuItem(
              value: type,
              child: Row(
                children: [
                  Icon(_getSeriesTypeIcon(type)),
                  const SizedBox(width: 12.0),
                  Text(_formatSeriesType(type)),
                ],
              ),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) {
              onSeriesChanged(series..seriesType = value);
            }
          },
          icon: const Icon(Icons.arrow_drop_down_circle),
          isExpanded: true,
        ),
      ),
    );
  }
}
