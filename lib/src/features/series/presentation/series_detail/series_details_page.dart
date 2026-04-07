import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:client/src/features/series/presentation/series_edit/series_edit_sheet.dart';
import 'package:client/src/features/series/presentation/series_detail/widgets/media_hero_header.dart';
import 'package:client/src/features/series/presentation/series_detail/widgets/media_specs_grid.dart';
import 'package:client/src/features/series/presentation/series_detail/widgets/media_telemetry.dart';
import 'package:client/src/features/series/presentation/season/widgets/season_accordion.dart';
import 'package:client/src/shared/widgets/dialogs/custom_dialog.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/utils/series_utils.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:sonarr/sonarr.dart';

class SeriesDetailsPage extends ConsumerStatefulWidget {
  final SeriesResource series;
  const SeriesDetailsPage({super.key, required this.series});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeriesDetailsPageState();
}

class _SeriesDetailsPageState extends ConsumerState<SeriesDetailsPage> {
  Future<void> _deleteSeries({
    required BuildContext context,
    required SeriesResource series,
    required bool deleteFiles,
    required bool addImportListExclusion,
  }) async {
    try {
      await ref
          .read(seriesDetailsController.notifier)
          .deleteSeries(
            deleteFiles: deleteFiles,
            addImportListExclusion: addImportListExclusion,
          );
      await Future.delayed(const Duration(milliseconds: 500));
      if (context.mounted) {
        Navigator.of(context).pop();
        CustomSnackbar.show(
          context,
          message: 'Successfully deleted "${series.title}"',
          type: CustomSnackbarType.success,
        );
      }
    } catch (e) {
      if (context.mounted) {
        CustomSnackbar.show(
          context,
          message: 'Failed to delete series: ${e.toString()}',
          type: CustomSnackbarType.error,
        );
      }
    }
  }

  void _confirmDelete(BuildContext context, SeriesResource series) {
    showDialog(
      context: context,
      builder: (_) => _DeleteSeriesDialog(
        series: series,
        onConfirm: ({required deleteFiles, required addImportListExclusion}) =>
            _deleteSeries(
              context: context,
              series: series,
              deleteFiles: deleteFiles,
              addImportListExclusion: addImportListExclusion,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final series = ref.watch(seriesDetailsController);

    final episodeCount = series.statistics?.episodeCount ?? 0;
    final downloadedFiles = series.statistics?.episodeFileCount ?? 0;
    final syncProgress = episodeCount > 0
        ? (downloadedFiles / episodeCount).clamp(0.0, 1.0)
        : 0.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Series Details'),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(TablerIcons.arrow_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Entry.opacity(
        duration: const Duration(milliseconds: 300),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 120),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MediaHeroHeader(
                    title: series.title ?? 'UNKNOWN',
                    agency: series.network ?? 'UNKNOWN',
                    posterUrl: series.remotePosterUrlLink ?? '',
                    syncProgress: syncProgress,
                    isMonitored: series.monitored ?? false,
                    onEdit: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return SeriesEditSheet(series: series);
                        },
                      );
                    },
                    onDelete: () => _confirmDelete(context, series),
                  ),
                  const SizedBox(height: 28),
                  if (series.overview != null && series.overview!.isNotEmpty)
                    _SeriesOverview(overview: series.overview!),
                  const SizedBox(height: 28),
                  if (series.seasons != null)
                    ...series.seasons!.reversed.map((season) {
                      final sFiles = season.statistics?.episodeFileCount ?? 0;
                      final sCount = season.statistics?.episodeCount ?? 0;
                      final status = resolveSeasonStatus(season);

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: SeasonAccordion(
                          series: series,
                          seasonNumber: season.seasonNumber ?? 0,
                          episodeCount: '$sFiles/$sCount',
                          status: status.label,
                          initiallyExpanded: false,
                        ),
                      );
                    }),
                  const SizedBox(height: 32),
                  MediaSpecsGrid(series: series),
                  const SizedBox(height: 48),
                  MediaTelemetry(series: series),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SeriesOverview extends StatelessWidget {
  final String overview;
  const _SeriesOverview({required this.overview});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'OVERVIEW',
          style: tt.labelSmall!.copyWith(
            fontSize: 9,
            letterSpacing: 2.0,
            color: cs.outline,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          overview,
          style: tt.bodyMedium!.copyWith(
            color: cs.onSurfaceVariant,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}

class _DeleteSeriesDialog extends StatefulWidget {
  final SeriesResource series;
  final void Function({
    required bool deleteFiles,
    required bool addImportListExclusion,
  })
  onConfirm;

  const _DeleteSeriesDialog({required this.series, required this.onConfirm});

  @override
  State<_DeleteSeriesDialog> createState() => _DeleteSeriesDialogState();
}

class _DeleteSeriesDialogState extends State<_DeleteSeriesDialog> {
  bool _deleteFiles = false;
  bool _addImportListExclusion = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
        child: CustomDialog(
          title: 'DELETE SERIES',
          heading: 'Confirm deletion of "${widget.series.title}"',
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Are you sure you want to delete this series?'),
              const SizedBox(height: 12),
              CheckboxListTile(
                title: const Text('Delete Files'),
                value: _deleteFiles,
                onChanged: (v) => setState(() => _deleteFiles = v ?? false),
                contentPadding: EdgeInsets.zero,
                dense: true,
              ),
              CheckboxListTile(
                title: const Text('Add Import List Exclusion'),
                value: _addImportListExclusion,
                onChanged: (v) =>
                    setState(() => _addImportListExclusion = v ?? false),
                contentPadding: EdgeInsets.zero,
                dense: true,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
                widget.onConfirm(
                  deleteFiles: _deleteFiles,
                  addImportListExclusion: _addImportListExclusion,
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: cs.error,
                side: BorderSide(color: cs.error.withValues(alpha: 0.4)),
              ),
              child: const Text('DELETE'),
            ),
          ],
        ),
      ),
    );
  }
}
