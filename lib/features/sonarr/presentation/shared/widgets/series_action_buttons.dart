import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

/// A widget that provides actions for managing a series
class SeriesActionButtons extends ConsumerWidget {
  final SonarrSeries series;

  const SeriesActionButtons({super.key, required this.series});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesManagement = ref.watch(seriesManagementProvider);
    final notifier = ref.read(seriesManagementProvider.notifier);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(
          message: 'Refresh Series Data & Metadata',
          child: IconButton(
            onPressed: seriesManagement is AsyncLoading
                ? null
                : () async {
                    try {
                      // Refresh metadata from Sonarr API
                      await notifier.refreshSeries(series.id!);
                      
                      // Refresh local data by invalidating the provider
                      ref.invalidate(singleSeriesProvider(series.id!));
                      
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Refreshing series: ${series.title}'),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      }
                    } catch (e) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Error refreshing series: $e'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  },
            icon: seriesManagement is AsyncLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.refresh),
          ),
        ),
        Tooltip(
          message: 'Rescan Series Files',
          child: IconButton(
            onPressed: seriesManagement is AsyncLoading
                ? null
                : () async {
                    try {
                      await notifier.rescanSeries(series.id!);
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Rescanning files for: ${series.title}',
                            ),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      }
                    } catch (e) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Error rescanning series: $e'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  },
            icon: seriesManagement is AsyncLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.folder),
          ),
        ),
        // Tooltip(
        //   message: series.monitored == true
        //       ? 'Unmonitor Series'
        //       : 'Monitor Series',
        //   child: IconButton(
        //     onPressed: seriesManagement is AsyncLoading
        //         ? null
        //         : () async {
        //             try {
        //               final updatedSeries = await notifier
        //                   .toggleSeriesMonitoring(series);
        //               if (context.mounted) {
        //                 ScaffoldMessenger.of(context).showSnackBar(
        //                   SnackBar(
        //                     content: Text(
        //                       updatedSeries.monitored == true
        //                           ? 'Series is now being monitored: ${series.title}'
        //                           : 'Series is no longer being monitored: ${series.title}',
        //                     ),
        //                     duration: const Duration(seconds: 2),
        //                   ),
        //                 );
        //               }
        //             } catch (e) {
        //               if (context.mounted) {
        //                 ScaffoldMessenger.of(context).showSnackBar(
        //                   SnackBar(
        //                     content: Text(
        //                       'Error toggling monitoring status: $e',
        //                     ),
        //                     backgroundColor: Colors.red,
        //                   ),
        //                 );
        //               }
        //             }
        //           },
        //     icon: seriesManagement is AsyncLoading
        //         ? const SizedBox(
        //             width: 20,
        //             height: 20,
        //             child: CircularProgressIndicator(strokeWidth: 2),
        //           )
        //         : Icon(
        //             series.monitored == true
        //                 ? Icons.visibility
        //                 : Icons.visibility_off,
        //             color: series.monitored == true
        //                 ? Colors.green
        //                 : Colors.grey,
        //           ),
        //   ),
        // ),
      ],
    );
  }
}
