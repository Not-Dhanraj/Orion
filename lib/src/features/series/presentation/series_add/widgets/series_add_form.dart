import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:client/src/shared/widgets/custom_switch_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesConfigurationForm extends ConsumerWidget {
  final SeriesResource series;
  final List<QualityProfileResource> qualityProfiles;
  final Function(SeriesResource) onSeriesChanged;

  const SeriesConfigurationForm({
    super.key,
    required this.series,
    required this.qualityProfiles,
    required this.onSeriesChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesState = ref.watch(seriesAddControllerProvider);
    final updatedSeries = seriesState.value?.selectedSeries ?? series;
    final theme = Theme.of(context);

    return ListView(
      shrinkWrap: true,
      children: [
        const SizedBox(height: 8),

        Card(
          elevation: 3,
          shadowColor: theme.colorScheme.shadow.withAlpha(40),
          child: Padding(
            padding: EdgeInsets.all(12),

            child: Column(
              children: [
                _buildSectionTitle(
                  context,
                  'Monitoring Options',
                  Icons.visibility,
                ),
                SizedBox(height: 8),

                Container(
                  padding: const EdgeInsets.all(4),
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: theme.colorScheme.outline.withAlpha(100),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          CustomSwitchTile(
                            title: 'Monitored',
                            subtitle:
                                'Download Monitored episodes in this series',
                            value: updatedSeries.monitored ?? false,
                            onChanged: (value) {
                              final newSeries = updatedSeries.rebuild(
                                (b) => b..monitored = value,
                              );
                              onSeriesChanged(newSeries);
                            },
                          ),
                          Divider(
                            height: 1,
                            indent: 12,
                            endIndent: 12,
                            color: theme.colorScheme.outlineVariant
                                .withCustomOpacity(0.5),
                          ),

                          CustomSwitchTile(
                            title: 'Season Folder',
                            subtitle: 'Sort episodes into season folders',
                            value: updatedSeries.seasonFolder ?? true,
                            onChanged: (value) {
                              final newSeries = updatedSeries.rebuild(
                                (b) => b..seasonFolder = value,
                              );
                              onSeriesChanged(newSeries);
                            },
                          ),
                          Divider(
                            height: 1,
                            indent: 12,
                            endIndent: 12,
                            color: theme.colorScheme.outlineVariant
                                .withCustomOpacity(0.5),
                          ),

                          ListTile(
                            onTap: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 4.0,
                            ),
                            title: Text('Episodes to Monitor'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Which episodes to monitor when adding the series',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Builder(
                                    builder: (_) {
                                      final currentValue =
                                          updatedSeries.addOptions?.monitor ??
                                          MonitorTypes.all;

                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: theme
                                              .colorScheme
                                              .surfaceContainerHighest,
                                        ),
                                        width: 120,
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<MonitorTypes>(
                                            value: currentValue,
                                            isDense: true,
                                            isExpanded: true,
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            dropdownColor: theme
                                                .colorScheme
                                                .surfaceContainerHighest,
                                            items: MonitorTypes.values.map((
                                              type,
                                            ) {
                                              String label;

                                              label = type
                                                  .toString()
                                                  .capitalizeByWord()
                                                  .split('.')
                                                  .last;

                                              return DropdownMenuItem(
                                                value: type,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                      ),
                                                  child: Text(
                                                    label,
                                                    style: theme
                                                        .textTheme
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged:
                                                (MonitorTypes? newValue) {
                                                  if (newValue != null) {
                                                    final newSeries =
                                                        updatedSeries.rebuild(
                                                          (b) => b
                                                            ..addOptions.update(
                                                              (b2) => b2
                                                                ..monitor =
                                                                    newValue,
                                                            ),
                                                        );
                                                    onSeriesChanged(newSeries);
                                                  }
                                                },
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 3,
          shadowColor: theme.colorScheme.shadow.withAlpha(40),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                _buildSectionTitle(
                  context,
                  'Quality Profile',
                  Icons.high_quality,
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<int>(
                  value: updatedSeries.qualityProfileId,
                  borderRadius: BorderRadius.circular(12),
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
                    return DropdownMenuItem<int>(
                      value: profile.id,
                      child: Text(
                        profile.name ?? 'Unknown',
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      final newSeries = updatedSeries.rebuild(
                        (b) => b..qualityProfileId = value,
                      );
                      onSeriesChanged(newSeries);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 3,
          shadowColor: theme.colorScheme.shadow.withAlpha(40),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                _buildSectionTitle(context, 'Series Type', Icons.category),
                const SizedBox(height: 8),

                DropdownButtonFormField<SeriesTypes>(
                  value: updatedSeries.seriesType ?? SeriesTypes.standard,
                  borderRadius: BorderRadius.circular(12),
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
                    hintText: 'Select series type',
                  ),
                  items: SeriesTypes.values.map((type) {
                    String label = type.name.capitalizeByWord();
                    return DropdownMenuItem<SeriesTypes>(
                      value: type,
                      child: Text(label),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      final newSeries = updatedSeries.rebuild(
                        (b) => b..seriesType = value,
                      );
                      onSeriesChanged(newSeries);
                    }
                  },
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 10),

        Card(
          elevation: 3,
          shadowColor: theme.colorScheme.shadow.withAlpha(40),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _buildSectionTitle(context, 'Search Options', Icons.search),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: theme.colorScheme.outline.withAlpha(100),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      CustomSwitchTile(
                        title: 'Search for Missing Episodes',
                        subtitle:
                            'Search for all missing episodes when adding the series',
                        value:
                            updatedSeries
                                .addOptions
                                ?.searchForMissingEpisodes ??
                            true,
                        onChanged: (value) {
                          final newSeries = updatedSeries.rebuild(
                            (b) => b
                              ..addOptions.update(
                                (b2) => b2..searchForMissingEpisodes = value,
                              ),
                          );
                          onSeriesChanged(newSeries);
                        },
                      ),
                      Divider(
                        height: 1,
                        indent: 12,
                        endIndent: 12,
                        color: theme.colorScheme.outlineVariant
                            .withCustomOpacity(0.5),
                      ),

                      CustomSwitchTile(
                        title: 'Search for Cutoff Unmet Episodes',
                        subtitle:
                            'Search for episodes with quality lower than the cutoff',
                        value:
                            updatedSeries
                                .addOptions
                                ?.searchForCutoffUnmetEpisodes ??
                            false,
                        onChanged: (value) {
                          final newSeries = updatedSeries.rebuild(
                            (b) => b
                              ..addOptions.update(
                                (b2) =>
                                    b2..searchForCutoffUnmetEpisodes = value,
                              ),
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
        ),
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title, IconData icon) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withAlpha(100),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 20, color: theme.colorScheme.primary),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
