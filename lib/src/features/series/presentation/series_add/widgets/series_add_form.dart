import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/shared/widgets/sheets/sheet_form_widgets.dart';
import 'package:client/src/shared/widgets/inputs/custom_switch_tile.dart';
import 'package:client/src/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesConfigurationForm extends ConsumerWidget {
  final SeriesResource series;
  final List<QualityProfileResource> qualityProfiles;
  final List<RootFolderResource> rootFolders;

  final Function(SeriesResource) onSeriesChanged;

  const SeriesConfigurationForm({
    super.key,
    required this.series,
    required this.rootFolders,
    required this.qualityProfiles,
    required this.onSeriesChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesState = ref.watch(seriesAddController);
    final updatedSeries = seriesState.value?.selectedSeries ?? series;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: [
        FormSectionHeader(label: 'BASIC OPTIONS'),
        OutlinedFormSection(
          children: [
            CustomSwitchTile(
              title: 'Season Folder',
              subtitle: 'Sort episodes into season folders',
              value: updatedSeries.seasonFolder ?? true,
              onChanged: (value) => onSeriesChanged(
                updatedSeries.rebuild((b) => b..seasonFolder = value),
              ),
            ),
            FormRowDivider(),
            GenericDropdownRow<MonitorTypes>(
              label: 'Episodes to Monitor',
              subtitle: 'Which episodes to monitor when adding',
              value: updatedSeries.addOptions?.monitor ?? MonitorTypes.all,
              items: MonitorTypes.values.toList(),
              itemToString: (t) => t.name.capitalizeByWord(),
              onChanged: (newType) {
                onSeriesChanged(
                  updatedSeries.rebuild(
                    (b) => b..addOptions.update((b2) => b2..monitor = newType),
                  ),
                );
              },
            ),
            FormRowDivider(),
            GenericDropdownRow<SeriesTypes>(
              label: 'Type',
              subtitle: 'Affects how episodes are matched',
              value: updatedSeries.seriesType ?? SeriesTypes.standard,
              items: SeriesTypes.values.toList(),
              itemToString: (t) => t.name.capitalizeByWord(),
              onChanged: (selected) {
                onSeriesChanged(
                  updatedSeries.rebuild((b) => b..seriesType = selected),
                );
              },
            ),
          ],
        ),

        const SizedBox(height: 20),

        FormSectionHeader(label: 'QUALITY AND PATH'),
        OutlinedFormSection(
          children: [
            GenericDropdownRow<QualityProfileResource>(
              label: 'Profile',
              subtitle: 'Quality profile to use for downloads',
              value: qualityProfiles.where((p) => p.id == updatedSeries.qualityProfileId).firstOrNull,
              items: qualityProfiles,
              itemToString: (p) => p.name ?? 'Unknown',
              onChanged: (selected) {
                onSeriesChanged(
                  updatedSeries.rebuild(
                    (b) => b..qualityProfileId = selected.id,
                  ),
                );
              },
            ),
            FormRowDivider(),
            GenericDropdownRow<RootFolderResource>(
              label: 'Series Path',
              subtitle: 'Where the series should be saved',
              value: rootFolders.where((f) => f.path == updatedSeries.rootFolderPath).firstOrNull,
              items: rootFolders,
              itemToString: (f) => f.path ?? 'Unknown',
              onChanged: (selected) {
                onSeriesChanged(
                  updatedSeries.rebuild(
                    (b) => b..rootFolderPath = selected.path,
                  ),
                );
              },
            ),
          ],
        ),

        const SizedBox(height: 20),

        FormSectionHeader(label: 'SEARCH OPTIONS'),
        OutlinedFormSection(
          children: [
            CustomSwitchTile(
              title: 'Search for Missing Episodes',
              subtitle: 'Search for all missing episodes when adding',
              value: updatedSeries.addOptions?.searchForMissingEpisodes ?? true,
              onChanged: (value) => onSeriesChanged(
                updatedSeries.rebuild(
                  (b) => b
                    ..addOptions.update(
                      (b2) => b2..searchForMissingEpisodes = value,
                    ),
                ),
              ),
            ),
            FormRowDivider(),
            CustomSwitchTile(
              title: 'Search for Cutoff Unmet',
              subtitle: 'Search for episodes below the quality cutoff',
              value:
                  updatedSeries.addOptions?.searchForCutoffUnmetEpisodes ??
                  false,
              onChanged: (value) => onSeriesChanged(
                updatedSeries.rebuild(
                  (b) => b
                    ..addOptions.update(
                      (b2) => b2..searchForCutoffUnmetEpisodes = value,
                    ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
