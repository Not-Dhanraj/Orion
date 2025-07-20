import 'package:client/features/sonarr/application/provider/add_series_details_provider/add_series_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesConfigurationCard extends ConsumerWidget {
  const SeriesConfigurationCard({super.key, required this.series});

  final SonarrSeriesLookup series;

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

  Widget _buildFormField({
    required BuildContext context,
    required String title,
    required Widget child,
    String? subtitle,
    IconData? icon,
  }) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (icon != null) ...[
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withAlpha(100),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, size: 20, color: theme.colorScheme.primary),
              ),
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        child,
        const SizedBox(height: 24),
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
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withAlpha(40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outline.withAlpha(30),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.tune, color: theme.colorScheme.primary, size: 24),
                const SizedBox(width: 12),
                Text(
                  'Series Configuration',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildFormField(
              context: context,
              title: 'Quality Profile',
              subtitle: 'Select the quality profile to use for this series',
              icon: Icons.high_quality,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.outline.withAlpha(100),
                    width: 1,
                  ),
                ),
                child: DropdownButtonFormField<int>(
                  decoration: _getDropdownDecoration(theme),
                  isExpanded: true,
                  value: state.selectedQualityProfileId,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: theme.colorScheme.primary,
                  ),
                  items: state.qualityProfiles.map((profile) {
                    return DropdownMenuItem<int>(
                      value: profile.id,
                      child: Text(
                        profile.name ?? 'Unknown',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      notifier.setSelectedQualityProfileId(value);
                    }
                  },
                  dropdownColor: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            _buildFormField(
              context: context,
              title: 'Root Folder',
              subtitle: 'Select where to store the series on disk',
              icon: Icons.folder_open,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.outline.withAlpha(100),
                    width: 1,
                  ),
                ),
                child: DropdownButtonFormField<String>(
                  decoration: _getDropdownDecoration(theme),
                  isExpanded: true,
                  value: state.rootFolderPath,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: theme.colorScheme.primary,
                  ),
                  items: state.rootFolders.map((folder) {
                    return DropdownMenuItem<String>(
                      value: folder.path,
                      child: Text(
                        folder.path ?? 'Unknown',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    notifier.setRootFolderPath(value);
                  },
                  dropdownColor: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            _buildFormField(
              context: context,
              title: 'Monitor',
              subtitle: 'Set which episodes to monitor',
              icon: Icons.visibility,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.outline.withAlpha(100),
                    width: 1,
                  ),
                ),
                child: DropdownButtonFormField<SonarrMonitorType>(
                  decoration: _getDropdownDecoration(theme),
                  isExpanded: true,
                  value: state.selectedMonitorType,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: theme.colorScheme.primary,
                  ),
                  items: _buildMonitorTypeItems(),
                  onChanged: (value) {
                    if (value != null) {
                      notifier.setSelectedMonitorType(value);
                    }
                  },
                  dropdownColor: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            _buildFormField(
              context: context,
              title: 'Series Type',
              subtitle: 'Set the type of series for proper processing',
              icon: Icons.movie_filter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.outline.withAlpha(100),
                    width: 1,
                  ),
                ),
                child: DropdownButtonFormField<SonarrSeriesType>(
                  decoration: _getDropdownDecoration(theme),
                  isExpanded: true,
                  value: state.selectedSeriesType,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: theme.colorScheme.primary,
                  ),
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
                  dropdownColor: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<DropdownMenuItem<SonarrMonitorType>> _buildMonitorTypeItems() {
    return const [
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
    ];
  }
}
