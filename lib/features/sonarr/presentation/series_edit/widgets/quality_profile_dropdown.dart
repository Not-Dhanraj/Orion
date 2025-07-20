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
              Icons.high_quality,
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
      hintText: 'Select quality profile',
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qualityProfilesAsync = ref.watch(qualityProfilesProvider);
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
            _buildFormFieldLabel(context, 'Quality Profile'),
            qualityProfilesAsync.when(
              data: (profiles) {
                final currentQualityProfileId = series.qualityProfileId;
                final bool containsCurrentProfile = profiles.any(
                  (p) => p.id == currentQualityProfileId,
                );
                final int selectedValue =
                    containsCurrentProfile && currentQualityProfileId != null
                    ? currentQualityProfileId
                    : (profiles.isNotEmpty ? profiles.first.id! : 1);

                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: theme.colorScheme.outline.withAlpha(100),
                      width: 1,
                    ),
                  ),
                  child: DropdownButtonFormField<int>(
                    value: selectedValue,
                    decoration: _getDropdownDecoration(theme),
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
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: theme.colorScheme.primary,
                    ),
                    dropdownColor: theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    isExpanded: true,
                  ),
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
          ],
        ),
      ),
    );
  }
}
