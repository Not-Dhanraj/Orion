import 'package:flutter/material.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

import '../../../../../shared/widgets/custom_switch_tile.dart';

class SeriesMonitoringOptions extends StatelessWidget {
  final SeriesResource series;
  final Function(SeriesResource) onSeriesChanged;

  const SeriesMonitoringOptions({
    super.key,
    required this.series,
    required this.onSeriesChanged,
  });

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
              Icons.visibility,
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
          children: [
            _buildFormFieldLabel(context, 'Monitoring Options'),
            const SizedBox(height: 8.0),
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: theme.colorScheme.outline.withAlpha(100),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSwitchTile(
                    title: 'Monitored',
                    subtitle: 'Download Monitored episodes in this series',
                    value: series.monitored ?? false,
                    onChanged: (value) {
                      var newSeries = series.rebuild(
                        (b) => b..monitored = value,
                      );
                      onSeriesChanged(newSeries);
                    },
                  ),

                  Divider(
                    height: 1,
                    indent: 12,
                    endIndent: 12,
                    color: theme.colorScheme.outlineVariant.withCustomOpacity(
                      0.5,
                    ),
                  ),

                  CustomSwitchTile(
                    title: 'Season Folder',
                    subtitle: 'Sort episodes into season folders',
                    value: series.seasonFolder ?? true,
                    onChanged: (value) {
                      var newSeries = series.rebuild(
                        (b) => b..seasonFolder = value,
                      );
                      onSeriesChanged(newSeries);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
