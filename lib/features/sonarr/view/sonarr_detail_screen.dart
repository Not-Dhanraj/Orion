import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/core/widgets/error_view.dart';
import 'package:client/core/widgets/overview_card.dart';
import 'package:client/features/sonarr/provider/series_detail_provider.dart';
import 'package:client/features/sonarr/view/widgets/series_details.dart';
import 'package:client/features/sonarr/view/widgets/series_information_card.dart';
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
    final seriesDetailValue = ref.watch(seriesDetailProvider(series.id!));
    final theme = Theme.of(context);

    return seriesDetailValue.when(
      data: (seriesDetail) {
        final fanartUrl = _getImageUrl(seriesDetail, coverType: 'fanart');
        final posterUrl = _getImageUrl(seriesDetail, coverType: 'poster');

        return Scaffold(
          backgroundColor: theme.colorScheme.surface,
          body: CustomScrollView(
            slivers: [
              DetailSliverAppBar(
                title: seriesDetail.title ?? 'Details',
                fanartUrl: fanartUrl,
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.background,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SeriesDetails(series: seriesDetail, posterUrl: posterUrl),
                      const SizedBox(height: 24.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: OverviewCard(
                          overview: seriesDetail.overview ??
                              'No plot summary available.',
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SeriesInformationCard(series: seriesDetail),
                      ),
                      const SizedBox(height: 24.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              ref.invalidate(seriesDetailProvider(series.id!));
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Refresh'),
            backgroundColor: theme.primaryColor,
            foregroundColor: theme.colorScheme.onPrimary,
          ),
        );
      },
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (err, stack) => Scaffold(
        body: ErrorView(
          error: err.toString(),
          onRetry: () => ref.refresh(seriesDetailProvider(series.id!)),
        ),
      ),
    );
  }
}