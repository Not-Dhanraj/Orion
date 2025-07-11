import 'package:client/features/sonarr/application/provider/add_series_details_provider/add_series_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesConfigurationCard extends ConsumerWidget {
  const SeriesConfigurationCard({super.key, required this.series});

  final SonarrSeriesLookup series;

  Widget _buildFormField({
    required BuildContext context,
    required String title,
    required Widget child,
    String? subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withAlpha(153), // 0.6 opacity
              fontSize: 14,
            ),
          ),
        ],
        const SizedBox(height: 8),
        child,
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = addSeriesDetailsNotifierProvider(series);
    final state = ref.watch(provider);
    final notifier = ref.read(provider.notifier);
    final theme = Theme.of(context);

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Series Configuration',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildFormField(
              context: context,
              title: 'Quality Profile',
              child: DropdownButtonFormField<int>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                isExpanded: true,
                value: state.selectedQualityProfileId,
                items: state.qualityProfiles.map((profile) {
                  return DropdownMenuItem<int>(
                    value: profile.id,
                    child: Text(profile.name ?? 'Unknown'),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    notifier.setSelectedQualityProfileId(value);
                  }
                },
              ),
            ),
            _buildFormField(
              context: context,
              title: 'Root Folder',
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                isExpanded: true,
                value: state.rootFolderPath,
                items: state.rootFolders.map((folder) {
                  return DropdownMenuItem<String>(
                    value: folder.path,
                    child: Text(folder.path ?? 'Unknown'),
                  );
                }).toList(),
                onChanged: (value) {
                  notifier.setRootFolderPath(value);
                },
              ),
            ),
            _buildFormField(
              context: context,
              title: 'Monitor',
              child: DropdownButtonFormField<SonarrMonitorType>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                isExpanded: true,
                value: state.selectedMonitorType,
                items: const [
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.UNKNOWN,
                    child: Text('Unknown'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.ALL,
                    child: Text('All Episodes'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.FUTURE,
                    child: Text('Future Episodes'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.MISSING,
                    child: Text('Missing Episodes'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.EXISTING,
                    child: Text('Existing Episodes'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.FIRST_SEASON,
                    child: Text('First Season'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.LAST_SEASON,
                    child: Text('Last Season'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.LATEST_SEASON,
                    child: Text('Latest Season'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.PILOT,
                    child: Text('Pilot Episode Only'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.RECENT,
                    child: Text('Recent Episodes'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.MONITOR_SPECIALS,
                    child: Text('Monitor Specials'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.UNMONITOR_SPECIALS,
                    child: Text('Unmonitor Specials'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.NONE,
                    child: Text('None'),
                  ),
                  DropdownMenuItem<SonarrMonitorType>(
                    value: SonarrMonitorType.SKIP,
                    child: Text('Skip'),
                  ),
                ],
                onChanged: (value) {
                  if (value != null) {
                    notifier.setSelectedMonitorType(value);
                  }
                },
              ),
            ),
            _buildFormField(
              context: context,
              title: 'Series Type',
              child: DropdownButtonFormField<SonarrSeriesType>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                ),
                isExpanded: true,
                value: state.selectedSeriesType,
                items: const [
                  DropdownMenuItem<SonarrSeriesType>(
                    value: SonarrSeriesType.STANDARD,
                    child: Text('Standard'),
                  ),
                  DropdownMenuItem<SonarrSeriesType>(
                    value: SonarrSeriesType.DAILY,
                    child: Text('Daily'),
                  ),
                  DropdownMenuItem<SonarrSeriesType>(
                    value: SonarrSeriesType.ANIME,
                    child: Text('Anime'),
                  ),
                ],
                onChanged: (value) {
                  if (value != null) {
                    notifier.setSelectedSeriesType(value);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
