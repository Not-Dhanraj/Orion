import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/shared/widgets/common/custom_dropdown.dart';
import 'package:client/src/shared/widgets/custom_switch_tile.dart';
import 'package:client/src/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

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
    final seriesState = ref.watch(seriesAddController);
    final updatedSeries = seriesState.value?.selectedSeries ?? series;
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: [
        _SectionHeader(label: 'BASIC OPTIONS', cs: cs, tt: tt),
        _OutlinedSection(
          cs: cs,
          children: [
            CustomSwitchTile(
              title: 'Season Folder',
              subtitle: 'Sort episodes into season folders',
              value: updatedSeries.seasonFolder ?? true,
              onChanged: (value) => onSeriesChanged(
                updatedSeries.rebuild((b) => b..seasonFolder = value),
              ),
            ),
            _RowDivider(cs: cs),
            _LabeledDropdownRow(
              cs: cs,
              tt: tt,
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
          ],
        ),

        const SizedBox(height: 20),

        _SectionHeader(label: 'QUALITY PROFILE', cs: cs, tt: tt),
        _OutlinedSection(
          cs: cs,
          children: [
            _LabeledDropdownRow(
              cs: cs,
              tt: tt,
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
          ],
        ),

        const SizedBox(height: 20),

        _SectionHeader(label: 'SERIES TYPE', cs: cs, tt: tt),
        _OutlinedSection(
          cs: cs,
          children: [
            _LabeledDropdownRow(
              cs: cs,
              tt: tt,
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

        _SectionHeader(label: 'SEARCH OPTIONS', cs: cs, tt: tt),
        _OutlinedSection(
          cs: cs,
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
            _RowDivider(cs: cs),
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

class _SectionHeader extends StatelessWidget {
  final String label;
  final ColorScheme cs;
  final TextTheme tt;

  const _SectionHeader({
    required this.label,
    required this.cs,
    required this.tt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        label,
        style: tt.labelSmall!.copyWith(
          color: cs.primary,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}

class _OutlinedSection extends StatelessWidget {
  final List<Widget> children;
  final ColorScheme cs;

  const _OutlinedSection({required this.children, required this.cs});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.4)),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}

class _RowDivider extends StatelessWidget {
  final ColorScheme cs;
  const _RowDivider({required this.cs});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      indent: 16,
      endIndent: 16,
      color: cs.outlineVariant.withValues(alpha: 0.4),
    );
  }
}

class _LabeledDropdownRow extends StatelessWidget {
  final ColorScheme cs;
  final TextTheme tt;
  final String label;
  final String subtitle;
  final Widget child;

  const _LabeledDropdownRow({
    required this.cs,
    required this.tt,
    required this.label,
    required this.subtitle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: tt.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: tt.bodySmall!.copyWith(color: cs.onSurfaceVariant),
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }
}
