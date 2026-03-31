import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:client/src/features/series/presentation/series_edit/series_edit_page.dart';
import 'package:client/src/features/series/presentation/series_detail/widgets/media_hero_header.dart';
import 'package:client/src/features/series/presentation/series_detail/widgets/media_specs_grid.dart';
import 'package:client/src/features/series/presentation/series_detail/widgets/media_telemetry.dart';
import 'package:client/src/features/series/presentation/series_detail/widgets/season_accordion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesDetailsPage extends ConsumerStatefulWidget {
  final SeriesResource series;
  const SeriesDetailsPage({super.key, required this.series});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeriesDetailsPageState();
}

class _SeriesDetailsPageState extends ConsumerState<SeriesDetailsPage> {
  void _confirmDelete(BuildContext context, SeriesResource series) {
    showDialog(
      context: context,
      builder: (context) {
        bool deleteFiles = false;
        bool addImportListExclusion = false;

        return StatefulBuilder(
          builder: (context, setState) => AlertDialog(
            title: const Text('Delete Series'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Are you sure you want to delete this series?'),
                const SizedBox(height: 16),
                CheckboxListTile(
                  title: const Text('Delete Files'),
                  value: deleteFiles,
                  onChanged: (value) {
                    setState(() {
                      deleteFiles = value ?? false;
                    });
                  },
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                ),
                CheckboxListTile(
                  title: const Text('Add Import List Exclusion'),
                  value: addImportListExclusion,
                  onChanged: (value) {
                    setState(() {
                      addImportListExclusion = value ?? false;
                    });
                  },
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                  try {
                    await ref
                        .read(seriesDetailsController.notifier)
                        .deleteSeries(
                          deleteFiles: deleteFiles,
                          addImportListExclusion: addImportListExclusion,
                        );

                    await Future.delayed(const Duration(milliseconds: 500));
                    if (context.mounted) {
                      final scaffoldMessenger = ScaffoldMessenger.of(context);
                      Navigator.of(context).pop();

                      scaffoldMessenger.showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  'Successfully deleted "${series.title}"',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          backgroundColor: Colors.red.shade600,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: const EdgeInsets.all(16),
                          duration: const Duration(seconds: 4),
                        ),
                      );
                    }
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              const Icon(
                                Icons.error_outline,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  'Failed to delete series: ${e.toString()}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: const EdgeInsets.all(16),
                          duration: const Duration(seconds: 5),
                        ),
                      );
                    }
                  }
                },
                child: const Text('Delete'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final series = ref.watch(seriesDetailsController);
    final posterUrl =
        series.images
            ?.firstWhere(
              (image) => image.coverType == MediaCoverTypes.poster,
              orElse: () => MediaCover(),
            )
            .remoteUrl ??
        '';

    final episodeCount = series.statistics?.episodeCount ?? 0;
    final downloadedFiles = series.statistics?.episodeFileCount ?? 0;
    final syncProgress = episodeCount > 0
        ? (downloadedFiles / episodeCount).clamp(0.0, 1.0)
        : 0.0;

    return Scaffold(
      appBar: AppBar(title: const Text('Series Details'), centerTitle: false),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 120),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MediaHeroHeader(
                  title: series.title ?? 'UNKNOWN',
                  agency: series.network ?? 'UNKNOWN',
                  posterUrl: posterUrl,
                  syncProgress: syncProgress,
                  onEdit: () {
                    showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return SeriesEditPage(series: series);
                      },
                    );
                  },
                  onDelete: () => _confirmDelete(context, series),
                ),
                const SizedBox(height: 32),
                if (series.seasons != null)
                  ...series.seasons!.reversed.map((season) {
                    final sFiles = season.statistics?.episodeFileCount ?? 0;
                    final sCount = season.statistics?.episodeCount ?? 0;
                    String status = 'UNFINISHED';
                    if (sCount > 0 && sFiles == sCount) {
                      status = 'COMPLETE';
                    } else if (season.monitored == false) {
                      status = 'UNMONITORED';
                    }

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: SeasonAccordion(
                        seriesId: series.id ?? 0,
                        seasonNumber: season.seasonNumber ?? 0,
                        episodeCount: '$sFiles/$sCount',
                        status: status,
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
    );
  }
}
