import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:client/features/sonarr/application/series_management_service_provider.dart';
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
                onPressed: () => ref
                    .read(seriesManagementServiceProvider)
                    .deleteSeries(context, series),
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
