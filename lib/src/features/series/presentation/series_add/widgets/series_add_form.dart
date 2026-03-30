import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/shared/widgets/common/custom_dropdown.dart';
import 'package:client/src/shared/widgets/common/sheet_form_widgets.dart';
import 'package:client/src/shared/widgets/custom_switch_tile.dart';
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
            LabeledDropdownRow(
              label: 'Episodes to Monitor',
              subtitle: 'Which episodes to monitor when adding',
              child: CustomDropdown(
                value: (updatedSeries.addOptions?.monitor ?? MonitorTypes.all)
                    .name
                    .capitalizeByWord(),
                items: MonitorTypes.values
                    .map((t) => t.name.capitalizeByWord())
                    .toList(),
                onChanged: (newValue) {
                  final newType = MonitorTypes.values.firstWhere(
                    (t) => t.name.capitalizeByWord() == newValue,
                  );
                  onSeriesChanged(
                    updatedSeries.rebuild(
                      (b) =>
                          b..addOptions.update((b2) => b2..monitor = newType),
                    ),
                  );
                },
              ),
            ),
            FormRowDivider(),
            LabeledDropdownRow(
              label: 'Type',
              subtitle: 'Affects how episodes are matched',
              child: CustomDropdown(
                value: (updatedSeries.seriesType ?? SeriesTypes.standard).name
                    .capitalizeByWord(),
                items: SeriesTypes.values
                    .map((t) => t.name.capitalizeByWord())
                    .toList(),
                onChanged: (newValue) {
                  final selected = SeriesTypes.values.firstWhere(
                    (t) => t.name.capitalizeByWord() == newValue,
                  );
                  onSeriesChanged(
                    updatedSeries.rebuild((b) => b..seriesType = selected),
                  );
                },
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        FormSectionHeader(label: 'QUALITY AND PATH'),
        OutlinedFormSection(
          children: [
            LabeledDropdownRow(
              label: 'Profile',
              subtitle: 'Quality profile to use for downloads',
              child: CustomDropdown(
                value: qualityProfiles.isEmpty
                    ? 'Unknown'
                    : (qualityProfiles
                              .firstWhere(
                                (p) => p.id == updatedSeries.qualityProfileId,
                                orElse: () => qualityProfiles.first,
                              )
                              .name ??
                          'Unknown'),
                items: qualityProfiles.map((p) => p.name ?? 'Unknown').toList(),
                onChanged: (newValue) {
                  final selected = qualityProfiles.firstWhere(
                    (p) => p.name == newValue,
                  );
                  onSeriesChanged(
                    updatedSeries.rebuild(
                      (b) => b..qualityProfileId = selected.id,
                    ),
                  );
                },
              ),
            ),
            FormRowDivider(),
            LabeledDropdownRow(
              label: 'Movie Path',
              subtitle: 'Where the movie should be saved',
              child: CustomDropdown(
                value: rootFolders.isEmpty
                    ? 'Unknown'
                    : (rootFolders
                              .firstWhere(
                                (f) => f.path == updatedSeries.rootFolderPath,
                                orElse: () => rootFolders.first,
                              )
                              .path ??
                          'Unknown'),
                items: rootFolders.map((f) => f.path ?? 'Unknown').toList(),
                onChanged: (newValue) {
                  final selected = rootFolders.firstWhere(
                    (f) => f.path == newValue,
                  );
                  onSeriesChanged(
                    updatedSeries.rebuild(
                      (b) => b..rootFolderPath = selected.path,
                    ),
                  );
                },
              ),
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
