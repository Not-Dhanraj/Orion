import 'package:client/src/features/series/presentation/widgets/details_page/series_actions.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'widgets/details_page/media_info_card.dart';
import 'widgets/details_page/series_info_card.dart';
import 'widgets/details_page/series_overview_card.dart';
import 'package:client/src/features/series/presentation/widgets/details_page/series_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'widgets/details_page/series_seasons_card.dart';

class SeriesDetailsPage extends ConsumerStatefulWidget {
  final SeriesResource series;
  const SeriesDetailsPage({super.key, required this.series});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeriesDetailsPageState();
}

class _SeriesDetailsPageState extends ConsumerState<SeriesDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final series = widget.series;
    final posterUrl =
        series.images
            ?.firstWhere(
              (image) => image.coverType == MediaCoverTypes.poster,
              orElse: () => MediaCover(),
            )
            .remoteUrl ??
        '';
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            title: Text("Series Details"),
            floating: true,
            snap: true,
          ),

          SliverPadding(
            padding: EdgeInsets.all(12),
            sliver: SliverMasonryGrid.extent(
              maxCrossAxisExtent: 600,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              itemBuilder: (context, index) {
                final widgets = [
                  SeriesHeader(posterUrl: posterUrl, series: series),
                  SeriesActionCard(),
                  SeriesOverviewCard(overview: series.overview),
                  SeriesSeasonsCard(seasons: series.seasons?.toList()),
                  SeriesInfoCard(series: series),
                  MediaInfoCard(series: series),
                ];
                return widgets[index];
              },
              childCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}
