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

  InputDecoration _getDropdownDecoration(ThemeData theme) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      filled: true,
      fillColor: theme.colorScheme.surface,
    );
  }

  Widget _buildFormFieldLabel(BuildContext context, String title) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer.withAlpha(100),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.category,
              size: 20,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withAlpha(40),
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outline.withAlpha(30),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFormFieldLabel(context, 'Series Type'),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: theme.colorScheme.outline.withAlpha(100),
                  width: 1,
                ),
              ),
              child: DropdownButtonFormField<SonarrSeriesType>(
                value: series.seriesType ?? SonarrSeriesType.STANDARD,
                decoration: _getDropdownDecoration(theme),
                items: SonarrSeriesType.values.map((type) {
                  return DropdownMenuItem(
                    value: type,
                    child: Row(
                      children: [
                        Icon(
                          _getSeriesTypeIcon(type),
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 12.0),
                        Text(
                          _formatSeriesType(type),
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    onSeriesChanged(series..seriesType = value);
                  }
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: theme.colorScheme.primary,
                ),
                dropdownColor: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                isExpanded: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
