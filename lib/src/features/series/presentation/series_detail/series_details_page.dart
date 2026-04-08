import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:client/src/features/series/presentation/series_edit/series_edit_sheet.dart';
import 'package:client/src/features/series/presentation/season/widgets/season_accordion.dart';
import 'package:client/src/shared/domain/media_spec.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/shared/utils/series_utils.dart';
import 'package:client/src/shared/widgets/media/media_delete_dialog.dart';
import 'package:client/src/shared/widgets/media/media_hero_header.dart';
import 'package:client/src/shared/widgets/media/media_overview.dart';
import 'package:client/src/shared/widgets/media/media_specs_grid.dart';
import 'package:client/src/shared/widgets/media/media_telemetry.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
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
        context.pop();
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
      builder: (_) => MediaDeleteDialog(
        title: 'SERIES',
        heading: 'Confirm deletion of "${series.title}"',
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
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

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
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
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
                  posterUrl: series.remotePosterUrlLink,
                  syncProgress: syncProgress,
                  isMonitored: series.monitored ?? false,
                  actions: [
                    OutlinedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return SeriesEditSheet(series: series);
                          },
                        );
                      },
                      child: const Text('EDIT SERIES'),
                    ),
                    OutlinedButton(
                      onPressed: () => _confirmDelete(context, series),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: cs.error,
                        side: BorderSide(
                          color: cs.error.withValues(alpha: 0.4),
                        ),
                      ),
                      child: const Text('DELETE'),
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                if (series.overview != null && series.overview!.isNotEmpty)
                  MediaOverview(overview: series.overview!),
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
                MediaSpecsGrid(
                  title: 'SERIES SPECS',
                  specs: [
                    MediaSpec(
                      label: 'TYPE',
                      value:
                          series.seriesType?.name
                              .toString()
                              .split('.')
                              .last
                              .toUpperCase() ??
                          'UNKNOWN',
                    ),
                    MediaSpec(
                      label: 'STATUS',
                      value:
                          series.status?.name
                              .toString()
                              .split('.')
                              .last
                              .toUpperCase() ??
                          'UNKNOWN',
                    ),
                    MediaSpec(
                      label: 'RUNTIME',
                      value: '${series.runtime ?? 0} MIN',
                    ),
                    MediaSpec(
                      label: 'RATING',
                      value: series.ratings?.value != null
                          ? '${series.ratings!.value}/10'
                          : 'N/A',
                    ),
                    MediaSpec(
                      label: 'QUALITY',
                      value: 'PROFILE ${series.qualityProfileId ?? 0}',
                      isAccent: true,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'MEDIA TELEMETRY',
                    style: tt.labelSmall!.copyWith(
                      fontSize: 9,
                      color: cs.outline,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                MediaTelemetry(
                  categories: [
                    TelemetryCategory(
                      title: 'STORAGE TELEMETRY',
                      accentLeft: true,
                      rows: [
                        StatRow(
                          label: 'Total Weight',
                          value:
                              '${((series.statistics?.sizeOnDisk ?? 0) / 1073741824).toStringAsFixed(1)} GB',
                          accent: true,
                        ),
                        StatRow(
                          label: 'Episodes',
                          value:
                              '${series.statistics?.episodeFileCount ?? 0} / ${series.statistics?.episodeCount ?? 0}',
                        ),
                      ],
                    ),
                    TelemetryCategory(
                      title: 'METADATA HEALTH',
                      rows: [
                        StatRow(
                          label: 'Network',
                          value: series.network ?? 'UNKNOWN',
                        ),
                        StatRow(
                          label: 'Year',
                          value: '${series.year ?? 'UNKNOWN'}',
                        ),
                      ],
                    ),
                    TelemetryCategory(
                      title: 'NETWORK NODE',
                      rows: [
                        StatRow(
                          label: 'Language',
                          value: series.originalLanguage?.name ?? 'UNKNOWN',
                        ),
                        StatRow(
                          label: 'Path',
                          value: series.path?.split('/').last ?? 'UNKNOWN',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
