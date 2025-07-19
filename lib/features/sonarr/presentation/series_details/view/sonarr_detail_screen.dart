import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_details.dart';
import 'package:client/features/sonarr/presentation/series_edit/view/series_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_episodes.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_info.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_media_info.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_overview.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_status_indicators.dart';
import 'package:entry/entry.dart';

class SonarrDetailScreen extends ConsumerWidget {
  final SonarrSeries series;

  const SonarrDetailScreen({super.key, required this.series});

  String? _getImageUrl(SonarrSeries series, {String coverType = 'poster'}) {
    try {
      final image = series.images?.firstWhere(
        (image) => image.coverType == coverType,
      );
      return image?.remoteUrl;
    } catch (e) {
      // Ignore if not found
    }
    return null;
  }

  Future<void> _deleteSeries(
    BuildContext context,
    WidgetRef ref,
    SonarrSeries series,
  ) async {
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final seriesManagementNotifier = ref.read(
      seriesManagementProvider.notifier,
    );

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Series'),
        content: Text(
          'Are you sure you want to delete "${series.title}"?\n\nThis will remove the entire series from Sonarr server.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('CANCEL'),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('DELETE'),
          ),
        ],
      ),
    );

    if (confirmed == true && series.id != null) {
      try {
        final result = await seriesManagementNotifier.deleteSeries(series.id!);

        if (result) {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text('${series.title} has been deleted'),
              backgroundColor: Colors.green,
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 2),
            ),
          );

          if (navigator.canPop()) {
            navigator.pop();
          }
        } else {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text('Failed to delete ${series.title}'),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      } catch (e) {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Error deleting series: $e'),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  Widget _buildActionButton(
    BuildContext context,
    WidgetRef ref, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.withAlpha(20),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color.withAlpha(100), width: 1),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: color),
            iconSize: 24,
            padding: const EdgeInsets.all(12),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    final fanartUrl = _getImageUrl(series, coverType: 'fanart');
    final posterUrl = _getImageUrl(series, coverType: 'poster');

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: CustomScrollView(
        slivers: [
          DetailSliverAppBar(
            title: 'Details',
            fanartUrl: fanartUrl,
            actions: [],
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.shadow.withAlpha(25),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Entry.opacity(
                    duration: const Duration(milliseconds: 400),
                    child: SeriesDetails(series: series, posterUrl: posterUrl),
                  ),
                  Entry.opacity(
                    duration: const Duration(milliseconds: 450),
                    delay: const Duration(milliseconds: 50),
                    child: SeriesStatusIndicators(series: series),
                  ),
                  const SizedBox(height: 24.0),

                  // Action buttons card
                  Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 100),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Actions',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildActionButton(
                                    context,
                                    ref,
                                    icon: Icons.edit,
                                    label: 'Edit',
                                    color: theme.colorScheme.primary,
                                    onPressed: () async {
                                      final result = await Navigator.of(context)
                                          .push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SeriesEditScreen(
                                                    series: series,
                                                  ),
                                            ),
                                          );

                                      // If changes were made and saved successfully
                                      if (result == true) {
                                        // Invalidate provider to refresh the series data
                                        ref.invalidate(
                                          singleSeriesProvider(series.id!),
                                        );
                                      }
                                    },
                                  ),
                                  _buildActionButton(
                                    context,
                                    ref,
                                    icon: Icons.delete_outline,
                                    label: 'Delete',
                                    color: Colors.red,
                                    onPressed: () =>
                                        _deleteSeries(context, ref, series),
                                  ),
                                  _buildActionButton(
                                    context,
                                    ref,
                                    icon: Icons.refresh,
                                    label: 'Refresh',
                                    color: theme.colorScheme.secondary,
                                    onPressed: () async {
                                      final seriesManagement = ref.watch(
                                        seriesManagementProvider,
                                      );
                                      final notifier = ref.read(
                                        seriesManagementProvider.notifier,
                                      );

                                      if (seriesManagement is! AsyncLoading) {
                                        try {
                                          // Refresh metadata from Sonarr API
                                          await notifier.refreshSeries(
                                            series.id!,
                                          );

                                          // Refresh local data by invalidating the provider
                                          ref.invalidate(
                                            singleSeriesProvider(series.id!),
                                          );

                                          if (context.mounted) {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Refreshing series: ${series.title}',
                                                ),
                                                duration: const Duration(
                                                  seconds: 2,
                                                ),
                                              ),
                                            );
                                          }
                                        } catch (e) {
                                          if (context.mounted) {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Error refreshing series: $e',
                                                ),
                                                backgroundColor: Colors.red,
                                              ),
                                            );
                                          }
                                        }
                                      }
                                    },
                                  ),
                                  _buildActionButton(
                                    context,
                                    ref,
                                    icon: Icons.folder,
                                    label: 'Rescan',
                                    color: theme.colorScheme.tertiary,
                                    onPressed: () async {
                                      final seriesManagement = ref.watch(
                                        seriesManagementProvider,
                                      );
                                      final notifier = ref.read(
                                        seriesManagementProvider.notifier,
                                      );

                                      if (seriesManagement is! AsyncLoading) {
                                        try {
                                          await notifier.rescanSeries(
                                            series.id!,
                                          );
                                          if (context.mounted) {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Rescanning files for: ${series.title}',
                                                ),
                                                duration: const Duration(
                                                  seconds: 2,
                                                ),
                                              ),
                                            );
                                          }
                                        } catch (e) {
                                          if (context.mounted) {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Error rescanning series: $e',
                                                ),
                                                backgroundColor: Colors.red,
                                              ),
                                            );
                                          }
                                        }
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),

                  Entry.opacity(
                    duration: const Duration(milliseconds: 550),
                    delay: const Duration(milliseconds: 150),
                    child: SeriesOverview(
                      overview: series.overview ?? 'No plot summary available.',
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Entry.opacity(
                    duration: const Duration(milliseconds: 550),
                    delay: const Duration(milliseconds: 150),
                    child: SeriesEpisodes(series: series),
                  ),
                  const SizedBox(height: 24.0),
                  Entry.opacity(
                    duration: const Duration(milliseconds: 600),
                    delay: const Duration(milliseconds: 200),
                    child: SeriesInfo(series: series),
                  ),
                  const SizedBox(height: 24.0),
                  Entry.opacity(
                    duration: const Duration(milliseconds: 650),
                    delay: const Duration(milliseconds: 250),
                    child: SeriesMediaInfo(series: series),
                  ),
                  const SizedBox(height: 32.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
