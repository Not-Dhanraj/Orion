import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/core/widgets/overview_card.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_details.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_information_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

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
        slivers: [
          DetailSliverAppBar(title: 'Details', fanartUrl: fanartUrl),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SeriesDetails(series: series, posterUrl: posterUrl),
                  const SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: OverviewCard(
                      overview: series.overview ?? 'No plot summary available.',
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SeriesInformationCard(series: series),
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
