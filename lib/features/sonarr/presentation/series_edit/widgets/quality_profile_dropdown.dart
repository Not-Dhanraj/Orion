import 'package:client/features/sonarr/application/provider/quality_profiles_provider/quality_profiles_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class QualityProfileDropdown extends ConsumerWidget {
  final SonarrSeries series;
  final Function(SonarrSeries) onSeriesChanged;

  const QualityProfileDropdown({
    super.key,
    required this.series,
    required this.onSeriesChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qualityProfilesAsync = ref.watch(qualityProfilesProvider);
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
        child: qualityProfilesAsync.when(
          data: (profiles) {
            final currentQualityProfileId = series.qualityProfileId;
            bool containsCurrentProfile = profiles.any(
              (p) => p.id == currentQualityProfileId,
            );
            int selectedValue =
                containsCurrentProfile && currentQualityProfileId != null
                    ? currentQualityProfileId
                    : (profiles.isNotEmpty ? profiles.first.id! : 1);

            return DropdownButtonFormField<int>(
              value: selectedValue,
              decoration: const InputDecoration(
                labelText: 'Quality Profile',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: 'Select quality profile',
              ),
              items: profiles.map((profile) {
                return DropdownMenuItem(
                  value: profile.id!,
                  child: Row(
                    children: [
                      const Icon(Icons.high_quality),
                      const SizedBox(width: 12.0),
                      Flexible(
                        child: Text(
                          profile.name ?? 'Unknown Profile',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  onSeriesChanged(series..qualityProfileId = value);
                }
              },
              icon: const Icon(Icons.arrow_drop_down_circle),
              isExpanded: true,
            );
          },
          loading: () => const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
          error: (error, stackTrace) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Error loading quality profiles',
                  style: TextStyle(color: theme.colorScheme.error),
                ),
                const SizedBox(height: 4.0),
                Text(
                  error.toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.error.withAlpha(204),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12.0),
                OutlinedButton.icon(
                  icon: const Icon(Icons.refresh),
                  label: const Text('Retry'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: theme.colorScheme.primary,
                  ),
                  onPressed: () => ref.invalidate(qualityProfilesProvider),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
