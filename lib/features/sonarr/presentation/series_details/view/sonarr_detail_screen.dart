import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_details.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/series_action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_episodes.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_info.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_media_info.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_overview.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_status_indicators.dart';

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
      BuildContext context, WidgetRef ref, SonarrSeries series) async {
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final seriesManagementNotifier =
        ref.read(seriesManagementProvider.notifier);

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
            ),
          );
        }
      } catch (e) {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Error deleting series: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    final fanartUrl = _getImageUrl(series, coverType: 'fanart');
    final posterUrl = _getImageUrl(series, coverType: 'poster');

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          DetailSliverAppBar(
            title: 'Details',
            fanartUrl: fanartUrl,
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                tooltip: 'Refresh series data',
                onPressed: () {
                  ref.invalidate(singleSeriesProvider(series.id!));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Refreshing series data...'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete_outline),
                tooltip: 'Delete Series',
                onPressed: () => _deleteSeries(context, ref, series),
              ),
              SeriesActionButtons(series: series),
            ],
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
                  SeriesDetails(series: series, posterUrl: posterUrl),
                  SeriesStatusIndicators(series: series),
                  const SizedBox(height: 24.0),
                  SeriesOverview(
                    overview: series.overview ?? 'No plot summary available.',
                  ),
                  const SizedBox(height: 24.0),
                  SeriesEpisodes(series: series),
                  const SizedBox(height: 24.0),
                  SeriesInfo(series: series),
                  const SizedBox(height: 24.0),
                  SeriesMediaInfo(series: series),
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
