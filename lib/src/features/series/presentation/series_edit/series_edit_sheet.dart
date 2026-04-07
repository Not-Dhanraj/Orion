import 'package:client/src/features/series/presentation/series_edit/series_edit_controller.dart';
import 'package:client/src/shared/widgets/indicators/animated_loading_text.dart';
import 'package:client/src/shared/widgets/indicators/animated_progress_bar.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/shared/widgets/sheets/sheet_footer.dart';
import 'package:client/src/shared/widgets/sheets/sheet_form_widgets.dart';
import 'package:client/src/shared/widgets/sheets/sheet_header.dart';
import 'package:client/src/shared/widgets/inputs/custom_switch_tile.dart';
import 'package:client/src/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesEditSheet extends ConsumerWidget {
  final SeriesResource series;
  const SeriesEditSheet({super.key, required this.series});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final editStateAsync = ref.watch(seriesEditController(series.id!));

    final isLoading = editStateAsync.value?.isLoading ?? false;
    final hasChanges = editStateAsync.value?.hasChanges ?? false;
    final state = editStateAsync.value;

    return Container(
      color: cs.surface,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: cs.surfaceContainerLow,
                border: Border(
                  bottom: BorderSide(
                    color: cs.outlineVariant.withValues(alpha: 0.4),
                  ),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 3),
                  SheetHeader(
                    onClose: () => Navigator.of(context).pop(),
                    title: series.title ?? 'Unknown',
                    label: 'EDIT SERIES',
                  ),
                  const SizedBox(height: 6),
                ],
              ),
            ),
            Flexible(
              child: AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOutCubic,
                alignment: Alignment.topCenter,
                child: editStateAsync.when(
                  data: (state) {
                    final seriesData = state.series ?? SeriesResource();
                    final qualityProfiles = state.qualityProfiles;
                    final controller = ref.read(
                      seriesEditController(series.id!).notifier,
                    );

                    return ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                        children: [
                          FormSectionHeader(label: 'BASIC OPTIONS'),
                          OutlinedFormSection(
                            children: [
                              CustomSwitchTile(
                                title: 'Monitored',
                                subtitle:
                                    'Download Monitored episodes in this series',
                                value: seriesData.monitored ?? false,
                                onChanged: (value) => controller.updateSeries(
                                  seriesData.rebuild(
                                    (b) => b..monitored = value,
                                  ),
                                ),
                              ),
                              FormRowDivider(),
                              CustomSwitchTile(
                                title: 'Season Folder',
                                subtitle: 'Sort episodes into season folders',
                                value: seriesData.seasonFolder ?? true,
                                onChanged: (value) => controller.updateSeries(
                                  seriesData.rebuild(
                                    (b) => b..seasonFolder = value,
                                  ),
                                ),
                              ),
                              FormRowDivider(),
                              GenericDropdownRow<SeriesTypes>(
                                label: 'Type',
                                subtitle: 'Affects how episodes are matched',
                                value:
                                    seriesData.seriesType ??
                                    SeriesTypes.standard,
                                items: SeriesTypes.values.toList(),
                                itemToString: (t) => t.name.capitalizeByWord(),
                                onChanged: (selected) =>
                                    controller.updateSeries(
                                      seriesData.rebuild(
                                        (b) => b..seriesType = selected,
                                      ),
                                    ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          FormSectionHeader(label: 'QUALITY'),
                          OutlinedFormSection(
                            children: [
                              GenericDropdownRow<QualityProfileResource>(
                                label: 'Profile',
                                subtitle:
                                    'Quality profile to use for downloads',
                                value: qualityProfiles
                                    .where(
                                      (p) =>
                                          p.id == seriesData.qualityProfileId,
                                    )
                                    .firstOrNull,
                                items: qualityProfiles,
                                itemToString: (p) => p.name ?? 'Unknown',
                                onChanged: (selected) =>
                                    controller.updateSeries(
                                      seriesData.rebuild(
                                        (b) =>
                                            b..qualityProfileId = selected.id,
                                      ),
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  loading: () => SizedBox(
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          child: SizedBox(
                            height: 1.5,
                            child: AnimatedProgressBar(),
                          ),
                        ),
                        Center(child: AnimatedLoadingText()),
                      ],
                    ),
                  ),
                  error: (e, stk) => SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Center(
                      child: CustomErrorState(error: e, stackTrace: stk),
                    ),
                  ),
                ),
              ),
            ),
            SheetFooter(
              isLoading: isLoading,
              isDisabled: !hasChanges || state == null,
              confirmLabel: 'SAVE CHANGES',
              confirmIcon: Icons.save,
              onCancel: () => Navigator.of(context).pop(),
              onConfirm: () => _doSave(context, ref, series.id!),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _doSave(
    BuildContext context,
    WidgetRef ref,
    int seriesId,
  ) async {
    final success = await ref
        .read(seriesEditController(seriesId).notifier)
        .saveChanges();

    if (context.mounted) {
      if (success) {
        CustomSnackbar.show(
          context,
          message: 'Changes saved successfully',
          type: CustomSnackbarType.success,
        );
        Navigator.of(context).pop(true);
      } else {
        CustomSnackbar.show(
          context,
          message: 'Failed to save changes',
          type: CustomSnackbarType.error,
        );
      }
    }
  }
}
