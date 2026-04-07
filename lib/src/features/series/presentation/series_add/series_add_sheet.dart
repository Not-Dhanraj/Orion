import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_add_form.dart';
import 'package:client/src/shared/widgets/indicators/animated_loading_text.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:client/src/shared/widgets/sheets/sheet_header.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/shared/widgets/sheets/sheet_footer.dart';
import 'package:client/src/utils/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesAddSheet extends ConsumerWidget {
  final SeriesResource series;

  const SeriesAddSheet({super.key, required this.series});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final state = ref.watch(seriesAddController).value;
    final selectedSeries = state?.selectedSeries;
    final isCreating = state?.isCreating ?? false;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: context.screenHeight * .85),
      child: Container(
        color: cs.surface,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: cs.surfaceContainerLow,
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: cs.outlineVariant.withValues(alpha: 0.4),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 3),
                    SheetHeader(
                      onClose: () => Navigator.of(context).pop(),
                      title: series.title ?? 'Unknown',
                      label: 'ADD SERIES',
                    ),
                    SizedBox(height: 6),
                  ],
                ),
              ),
              Flexible(
                child: selectedSeries == null
                    ? const Padding(
                        padding: EdgeInsets.all(32),
                        child: Center(
                          child: CustomErrorState(
                            error: 'Selected Series is null',
                          ),
                        ),
                      )
                    : ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: SeriesConfigurationForm(
                          series: selectedSeries,
                          rootFolders: state?.rootFolders ?? [],
                          qualityProfiles: state?.qualityProfiles ?? [],
                          onSeriesChanged: (updated) => ref
                              .read(seriesAddController.notifier)
                              .updateSelectedSeriesInState(updated),
                        ),
                      ),
              ),
              SheetFooter(
                isLoading: isCreating,
                isDisabled: selectedSeries == null,
                confirmLabel: 'ADD SERIES',
                confirmIcon: Icons.add,
                onCancel: () => Navigator.of(context).pop(),
                onConfirm: () => _doAdd(context, ref, selectedSeries!, cs),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _doAdd(
    BuildContext context,
    WidgetRef ref,
    SeriesResource seriesToAdd,
    ColorScheme cs,
  ) async {
    final success = await ref
        .read(seriesAddController.notifier)
        .addSeries(seriesToAdd);

    if (!context.mounted) return;

    if (success) {
      Navigator.of(context).pop();
      Navigator.of(context).pop();
      CustomSnackbar.show(
        context,
        message: 'Successfully added "${series.title}"',
        type: CustomSnackbarType.success,
      );
    } else {
      CustomSnackbar.show(
        context,
        message: 'Failed to add series',
        type: CustomSnackbarType.error,
      );
    }
  }
}
