import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_add_form.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_sheet_header.dart';
import 'package:client/src/shared/widgets/common/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesAddDialog extends ConsumerWidget {
  final SeriesResource series;

  const SeriesAddDialog({super.key, required this.series});

  static Future<void> show(BuildContext context, SeriesResource series) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      builder: (_) => SeriesAddDialog(series: series),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final state = ref.watch(seriesAddController).value;
    final selectedSeries = state?.selectedSeries;
    final isCreating = state?.isCreating ?? false;

    return DraggableScrollableSheet(
      initialChildSize: 0.92,
      minChildSize: 0.5,
      maxChildSize: 1.0,
      expand: false,
      builder: (context, _) {
        return Container(
          color: cs.surface,
          child: Column(
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

                    SeriesSheetHeader(
                      onClose: () => Navigator.of(context).pop(),
                      title: series.title ?? 'Unknown',
                      label: 'ADD SERIES',
                    ),
                    SizedBox(height: 6),
                  ],
                ),
              ),
              Expanded(
                child: selectedSeries == null
                    ? const Center(child: CircularProgressIndicator())
                    : Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 800),
                          child: SizedBox.expand(
                            child: SeriesConfigurationForm(
                              series: selectedSeries,
                              qualityProfiles: state?.qualityProfiles ?? [],
                              onSeriesChanged: (updated) => ref
                                  .read(seriesAddController.notifier)
                                  .updateSelectedSeriesInState(updated),
                            ),
                          ),
                        ),
                      ),
              ),
              _DialogFooter(
                isCreating: isCreating,
                selectedSeries: selectedSeries,
                onCancel: () => Navigator.of(context).pop(),
                onAdd: () => _doAdd(context, ref, selectedSeries!, cs),
                cs: cs,
                tt: tt,
              ),
            ],
          ),
        );
      },
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

class _DialogFooter extends StatelessWidget {
  final bool isCreating;
  final SeriesResource? selectedSeries;
  final VoidCallback onCancel;
  final VoidCallback onAdd;
  final ColorScheme cs;
  final TextTheme tt;

  const _DialogFooter({
    required this.isCreating,
    required this.selectedSeries,
    required this.onCancel,
    required this.onAdd,
    required this.cs,
    required this.tt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        24,
        12,
        24,
        12 + MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: BoxDecoration(
        color: cs.surfaceContainerLow,
        border: Border(
          top: BorderSide(color: cs.outlineVariant.withValues(alpha: 0.4)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            onPressed: onCancel,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              side: BorderSide(color: cs.outlineVariant),
            ),
            child: Text(
              'CANCEL',
              style: tt.labelLarge!.copyWith(color: cs.onSurfaceVariant),
            ),
          ),
          const SizedBox(width: 12),
          ElevatedButton(
            onPressed: isCreating || selectedSeries == null ? null : onAdd,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              backgroundColor: cs.primary,
              foregroundColor: cs.onPrimary,
              disabledBackgroundColor: cs.surfaceContainerHighest,
            ),
            child: isCreating
                ? SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: cs.onPrimary,
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add, size: 16, color: cs.onPrimary),
                      const SizedBox(width: 8),
                      Text(
                        'ADD SERIES',
                        style: tt.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: cs.onPrimary,
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
