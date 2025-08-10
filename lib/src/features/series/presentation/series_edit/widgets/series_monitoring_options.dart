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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFormFieldLabel(context, 'Monitoring Options'),
            const SizedBox(height: 8.0),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withAlpha(100),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  series.monitored ?? false
                      ? Icons.monitor_heart
                      : Icons.monitor_heart_outlined,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
              ),
              title: Text(
                'Monitored',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Download Monitored episodes in this series',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              trailing: Switch(
                value: series.monitored ?? false,
                activeColor: theme.colorScheme.primary,
                activeTrackColor: theme.colorScheme.primaryContainer,
                inactiveTrackColor: theme.colorScheme.surfaceContainerHighest,
                inactiveThumbColor: theme.colorScheme.outline,
                onChanged: (value) {
                  var newSeries = series.rebuild((b) => b..monitored = value);
                  onSeriesChanged(newSeries);
                },
              ),
            ),
            Divider(
              height: 1,
              indent: 56,
              color: theme.colorScheme.outlineVariant.withCustomOpacity(0.5),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withAlpha(100),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  series.seasonFolder ?? true
                      ? Icons.folder_special
                      : Icons.folder_outlined,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
              ),
              title: Text(
                'Season Folder',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Sort episodes into season folders',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              trailing: Switch(
                value: series.seasonFolder ?? true,
                activeColor: theme.colorScheme.primary,
                activeTrackColor: theme.colorScheme.primaryContainer,
                inactiveTrackColor: theme.colorScheme.surfaceContainerHighest,
                inactiveThumbColor: theme.colorScheme.outline,
                onChanged: (value) {
                  var newSeries = series.rebuild(
                    (b) => b..seasonFolder = value,
                  );
                  onSeriesChanged(newSeries);
                },
              ),
            ),
            Divider(
              height: 1,
              indent: 56,
              color: theme.colorScheme.outlineVariant.withCustomOpacity(0.5),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withAlpha(100),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  series.monitorNewItems == NewItemMonitorTypes.all
                      ? Icons.breakfast_dining_rounded
                      : Icons.breakfast_dining_outlined,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
              ),
              title: Text(
                'Monitor New Seasons',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Which new seasons should be monitored automatically',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              trailing: Switch(
                value: series.monitorNewItems == NewItemMonitorTypes.all,
                activeColor: theme.colorScheme.primary,
                activeTrackColor: theme.colorScheme.primaryContainer,
                inactiveTrackColor: theme.colorScheme.surfaceContainerHighest,
                inactiveThumbColor: theme.colorScheme.outline,
                onChanged: (value) {
                  var newSeries = series.rebuild(
                    (b) => b
                      ..monitorNewItems = value
                          ? NewItemMonitorTypes.all
                          : NewItemMonitorTypes.none,
                  );
                  onSeriesChanged(newSeries);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
