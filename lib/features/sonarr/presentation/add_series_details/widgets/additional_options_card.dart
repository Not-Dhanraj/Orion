import 'package:client/features/sonarr/application/provider/add_series_details_provider/add_series_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class AdditionalOptionsCard extends ConsumerWidget {
  const AdditionalOptionsCard({super.key, required this.series});

  final SonarrSeriesLookup series;

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
                Icon(
                  Icons.settings,
                  color: theme.colorScheme.primary,
                  size: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  'Additional Options',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildOptionTile(
              context: context,
              title: 'Use Season Folder',
              subtitle: 'Organize episodes into season folders',
              icon: Icons.folder,
              value: state.seasonFolder,
              onChanged: (value) {
                notifier.setSeasonFolder(value);
              },
            ),
            const Divider(height: 8, thickness: 0.5),
            _buildOptionTile(
              context: context,
              title: 'Monitored',
              subtitle: 'Monitor this series for new episodes',
              icon: Icons.visibility,
              value: state.monitored,
              onChanged: (value) {
                notifier.setMonitored(value);
              },
            ),
            const Divider(height: 8, thickness: 0.5),
            _buildOptionTile(
              context: context,
              title: 'Search for Missing Episodes',
              subtitle:
                  'Search for all missing episodes when adding the series',
              icon: Icons.search,
              value: state.searchForMissingEpisodes,
              onChanged: (value) {
                notifier.setSearchForMissingEpisodes(value);
              },
            ),
            const Divider(height: 8, thickness: 0.5),
            _buildOptionTile(
              context: context,
              title: 'Search Cutoff Unmet Episodes',
              subtitle:
                  'Search for episodes that don\'t meet quality requirements',
              icon: Icons.high_quality,
              value: state.searchForCutoffUnmetEpisodes,
              onChanged: (value) {
                notifier.setSearchForCutoffUnmetEpisodes(value);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionTile({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer.withAlpha(100),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 20, color: theme.colorScheme.primary),
          ),
          const SizedBox(width: 16),
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
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 0.9,
            child: Switch(
              value: value,
              activeColor: theme.colorScheme.primary,
              activeTrackColor: theme.colorScheme.primaryContainer,
              inactiveThumbColor: theme.colorScheme.outline,
              inactiveTrackColor: theme.colorScheme.surfaceContainerHighest,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
