import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:sonarr/sonarr.dart';

class SeriesTypeDropdown extends StatelessWidget {
  final SeriesResource series;
  final Function(SeriesResource) onSeriesChanged;

  const SeriesTypeDropdown({
    super.key,
    required this.series,
    required this.onSeriesChanged,
  });

  IconData _getSeriesTypeIcon(SeriesTypes type) {
    return switch (type) {
      SeriesTypes.anime => Icons.animation,
      SeriesTypes.daily => Icons.calendar_today,
      SeriesTypes.standard => Icons.tv,
      SeriesTypes() => throw UnimplementedError(),
    };
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
            Padding(
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
                      'Series Type',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DropdownButtonFormField<SeriesTypes>(
              value: series.seriesType ?? SeriesTypes.standard,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                filled: true,
                fillColor: theme.colorScheme.surface,
                hintText: 'Select quality profile',
              ),
              items: SeriesTypes.values.map((type) {
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
                        type.name.capitalizeByWord(),
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
                  var newSeries = series.rebuild((b) => b..seriesType = value);
                  onSeriesChanged(newSeries);
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
          ],
        ),
      ),
    );
  }
}
