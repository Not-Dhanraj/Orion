import 'package:client/src/features/movies/presentation/movie_detail/movie_details_controller.dart';
import 'package:client/src/features/movies/presentation/movie_detail/movie_details_page.dart';
import 'package:client/src/features/movies/presentation/movie_add/movie_add_page.dart';
import 'package:client/src/shared/error_widget.dart';
import 'package:client/src/shared/widgets/media_grid_items.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/src/features/movies/presentation/movie_home/movie_home_controller.dart';
import 'package:radarr/radarr.dart';

class MovieHome extends ConsumerWidget {
  const MovieHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieAsyncValue = ref.watch(movieHomeControllerProvider);

    return Entry.opacity(
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text('Movies'),
                floating: true,
                snap: true,
              ),

              movieAsyncValue.when(
                data: (movies) {
                  if (movies.isEmpty) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: Text(
                          'No movies found. Add a movie to get started.',
                        ),
                      ),
                    );
                  }

                  return SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    sliver: SliverGrid.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            (MediaQuery.of(context).size.width / 175)
                                .floor()
                                .clamp(1, 7),
                        childAspectRatio: 0.68,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        final movieItem = movies[index];

                        return MediaGridItem(
                          title: movieItem.title,
                          year: movieItem.year,
                          imgUrl: movieItem.images
                              ?.firstWhere(
                                (image) =>
                                    image.coverType == MediaCoverTypes.poster,
                                orElse: () => MediaCover(),
                              )
                              .remoteUrl,
                          onTap: () {
                            ref
                                .read(movieDetailsControllerProvider.notifier)
                                .initialize(movieItem);

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    MovieDetailsPage(movie: movieItem),
                              ),
                            );
                          },
                          ratings: movieItem.ratings?.imdb?.value,
                        );
                      },
                      itemCount: movies.length,
                    ),
                  );
                },
                loading: () => const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (error, stackTrace) => SliverFillRemaining(
                  child: ErrorWidgetCe(errorMessage: error.toString()),
                ),
              ),
            ],
          ),

          Positioned(
            bottom: 20,
            right: 20,
            child: SafeArea(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MovieAddPage(),
                    ),
                  );
                },
                tooltip: 'Add Movie',
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
