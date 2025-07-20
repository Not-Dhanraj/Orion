import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:with_opacity/with_opacity.dart';

class MonitoringOptions extends StatelessWidget {
  final SonarrSeries series;
  final Function(SonarrSeries) onSeriesChanged;

  const MonitoringOptions({
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
                'Monitor this series for new episodes',
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
                  onSeriesChanged(series..monitored = value);
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
                'Store episodes in season folders',
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
                  onSeriesChanged(series..seasonFolder = value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
