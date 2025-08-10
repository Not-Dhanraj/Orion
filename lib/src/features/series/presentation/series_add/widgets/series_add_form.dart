import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/shared/utils/string_extension.dart';
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
        Card(
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: theme.colorScheme.outline.withAlpha(100),
                      width: 1,
                    ),
                  ),
                  child: DropdownButtonFormField<int>(
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
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Card(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                _buildSectionTitle(context, 'Series Type', Icons.category),
                const SizedBox(height: 8),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: theme.colorScheme.outline.withAlpha(100),
                      width: 1,
                    ),
                  ),
                  child: DropdownButtonFormField<SeriesTypes>(
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
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),

        Card(
          child: Padding(
            padding: EdgeInsets.all(12),

            child: Column(
              children: [
                _buildSectionTitle(
                  context,
                  'Monitoring Options',
                  Icons.visibility,
                ),
                const SizedBox(height: 8),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(
                      color: theme.colorScheme.outline.withCustomOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      _CustomListTile(
                        enabledIcon: Icons.monitor_heart,
                        disabledIcon: Icons.monitor_heart_outlined,
                        condition: updatedSeries.monitored,
                        title: 'Monitored',
                        description:
                            'Download Monitored episodes in this series',
                        onChanged: (value) {
                          final newSeries = updatedSeries.rebuild(
                            (b) => b..monitored = value,
                          );
                          onSeriesChanged(newSeries);
                        },
                      ),
                      Divider(
                        height: 1,
                        indent: 56,
                        color: theme.colorScheme.outlineVariant
                            .withCustomOpacity(0.5),
                      ),

                      _CustomListTile(
                        enabledIcon: Icons.folder_special,
                        disabledIcon: Icons.folder_special_outlined,
                        condition: updatedSeries.seasonFolder,
                        title: 'Season Folder',
                        description: 'Sort episodes into season folders',
                        onChanged: (value) {
                          final newSeries = updatedSeries.rebuild(
                            (b) => b..seasonFolder = value,
                          );
                          onSeriesChanged(newSeries);
                        },
                      ),
                      Divider(
                        height: 1,
                        indent: 56,
                        color: theme.colorScheme.outlineVariant
                            .withCustomOpacity(0.5),
                      ),

                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 4.0,
                        ),
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer
                                .withCustomOpacity(0.4),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.monitor,
                            size: 20,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        title: Text('Episodes to Monitor'),
                        subtitle: Text(
                          'Which episodes to monitor when adding the series',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        trailing: Builder(
                          builder: (_) {
                            final currentValue =
                                updatedSeries.addOptions?.monitor ??
                                MonitorTypes.all;

                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    theme.colorScheme.surfaceContainerHighest,
                              ),
                              width: 160,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<MonitorTypes>(
                                  value: currentValue,
                                  isDense: true,
                                  isExpanded: true,
                                  borderRadius: BorderRadius.circular(8),
                                  dropdownColor:
                                      theme.colorScheme.surfaceContainerHighest,
                                  items: MonitorTypes.values.map((type) {
                                    String label;

                                    label = type
                                        .toString()
                                        .capitalizeByWord()
                                        .split('.')
                                        .last;

                                    return DropdownMenuItem(
                                      value: type,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0,
                                        ),
                                        child: Text(
                                          label,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (MonitorTypes? newValue) {
                                    if (newValue != null) {
                                      final newSeries = updatedSeries.rebuild(
                                        (b) => b
                                          ..addOptions.update(
                                            (b2) => b2..monitor = newValue,
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
          ),
        ),

        const SizedBox(height: 10),

        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _buildSectionTitle(context, 'Search Options', Icons.search),
                const SizedBox(height: 8),
                Card(
                  elevation: 2,
                  shadowColor: theme.colorScheme.shadow.withCustomOpacity(0.1),
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(
                      color: theme.colorScheme.outline.withCustomOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      _CustomListTile(
                        enabledIcon: Icons.search,
                        disabledIcon: Icons.search_off,
                        condition:
                            updatedSeries.addOptions?.searchForMissingEpisodes,
                        title: 'Search for Missing Episodes',
                        description:
                            'Search for all missing episodes when adding the series',
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
                        indent: 56,
                        color: theme.colorScheme.outlineVariant
                            .withCustomOpacity(0.5),
                      ),

                      _CustomListTile(
                        enabledIcon: Icons.upgrade,
                        disabledIcon: Icons.upgrade_outlined,
                        condition: updatedSeries
                            .addOptions
                            ?.searchForCutoffUnmetEpisodes,
                        title: 'Search for Cutoff Unmet Episodes',
                        description:
                            'Search for episodes with quality lower than the cutoff',
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

class _CustomListTile extends StatelessWidget {
  final bool? condition;
  final IconData enabledIcon;
  final IconData disabledIcon;
  final String title;
  final String description;
  final void Function(bool)? onChanged;

  const _CustomListTile({
    this.condition,
    required this.enabledIcon,
    required this.disabledIcon,
    this.onChanged,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 4.0,
      ),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer.withCustomOpacity(0.4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          (condition ?? false) ? enabledIcon : disabledIcon,
          size: 20,
          color: theme.colorScheme.primary,
        ),
      ),
      title: Text(title),
      subtitle: Text(
        description,
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ),
      trailing: Switch(
        value: condition ?? true,
        activeColor: theme.colorScheme.primary,
        activeTrackColor: theme.colorScheme.primaryContainer,
        onChanged: onChanged,
      ),
    );
  }
}
