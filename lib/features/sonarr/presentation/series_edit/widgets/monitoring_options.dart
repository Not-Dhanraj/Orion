import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class MonitoringOptions extends StatelessWidget {
  final SonarrSeries series;
  final Function(SonarrSeries) onSeriesChanged;

  const MonitoringOptions({
    super.key,
    required this.series,
    required this.onSeriesChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outline.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              series.monitored ?? false
                  ? Icons.monitor_heart
                  : Icons.monitor_heart_outlined,
            ),
            title: const Text('Monitored'),
            subtitle: const Text('Monitor this series for new episodes'),
            trailing: Switch(
              value: series.monitored ?? false,
              onChanged: (value) {
                onSeriesChanged(series..monitored = value);
              },
            ),
          ),
          const Divider(height: 1, indent: 56),
          ListTile(
            leading: Icon(
              series.seasonFolder ?? true
                  ? Icons.folder_special
                  : Icons.folder_outlined,
            ),
            title: const Text('Season Folder'),
            subtitle: const Text('Store episodes in season folders'),
            trailing: Switch(
              value: series.seasonFolder ?? true,
              onChanged: (value) {
                onSeriesChanged(series..seasonFolder = value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
