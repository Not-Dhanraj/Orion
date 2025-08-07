import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class QualityProfileDropdown extends ConsumerWidget {
  final SeriesResource series;
  final List<QualityProfileResource> qualityProfiles;
  final Function(SeriesResource) onSeriesChanged;

  const QualityProfileDropdown({
    super.key,
    required this.series,
    required this.qualityProfiles,
    required this.onSeriesChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                      Icons.high_quality,
                      size: 20,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Select quality profile',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Builder(
              builder: (context) {
                final currentQualityProfileId = series.qualityProfileId;
                final bool containsCurrentProfile = qualityProfiles.any(
                  (p) => p.id == currentQualityProfileId,
                );
                final int selectedValue =
                    containsCurrentProfile && currentQualityProfileId != null
                    ? currentQualityProfileId
                    : (qualityProfiles.isNotEmpty
                          ? (qualityProfiles.first.id ?? 1)
                          : 1);

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
                    items: qualityProfiles.map((profile) {
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
                        var newSeries = series.rebuild(
                          (b) => b..qualityProfileId = value,
                        );
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
