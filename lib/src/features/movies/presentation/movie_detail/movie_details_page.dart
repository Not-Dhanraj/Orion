import 'package:client/src/features/movies/presentation/movie_detail/movie_details_controller.dart';
import 'package:client/src/features/movies/presentation/movie_detail/widgets/media_info_card.dart';
import 'package:client/src/features/movies/presentation/movie_detail/widgets/movie_actions.dart';
import 'package:client/src/features/movies/presentation/movie_detail/widgets/movie_header.dart';
import 'package:client/src/features/movies/presentation/movie_detail/widgets/movie_info_card.dart';
import 'package:client/src/features/movies/presentation/movie_detail/widgets/movie_overview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:radarr/radarr.dart';

class MovieDetailsPage extends ConsumerStatefulWidget {
  final MovieResource movie;
  const MovieDetailsPage({super.key, required this.movie});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieDetailsPageState();
}

class _MovieDetailsPageState extends ConsumerState<MovieDetailsPage> {
  @override
  void initState() {
    super.initState();

    // Use a microtask to update the state after the build is complete
    Future.microtask(() {
      ref
          .read(movieDetailsControllerProvider.notifier)
          .initialize(widget.movie);
    });
  }

  @override
  Widget build(BuildContext context) {
    final movie = ref.watch(movieDetailsControllerProvider);
    final posterUrl =
        movie.images
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
            title: Text("Movie Details"),
            floating: true,
            snap: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),

          SliverPadding(
            padding: EdgeInsets.all(12),
            sliver: SliverMasonryGrid.extent(
              maxCrossAxisExtent: 600,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              itemBuilder: (context, index) {
                final widgets = [
                  MovieHeader(posterUrl: posterUrl, movie: movie),
                  MovieActionCard(movie: movie),
                  MovieOverviewCard(overview: movie.overview),
                  MovieInfoCard(movie: movie),
                  MediaInfoCard(movie: movie),
                  const SizedBox(height: 16),
                ];
                return widgets[index];
              },
              childCount: 6, // One less than series since we don't have seasons
            ),
          ),
        ],
      ),
    );
  }
}
