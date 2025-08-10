import 'package:client/src/features/movies/presentation/movie_home/widgets/movie_grid_widget.dart';
import 'package:client/src/features/movies/presentation/movie_add/movie_add_page.dart';
import 'package:client/src/shared/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/src/features/movies/presentation/movie_home/movie_home_controller.dart';

class MovieHome extends ConsumerWidget {
  const MovieHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieAsyncValue = ref.watch(movieHomeControllerProvider);

    return movieAsyncValue.when(
      data: (movies) {
        if (movies.isEmpty) {
          return const Center(
            child: Text('No movies found. Add a movie to get started.'),
          );
        }

        return Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                var crossAxisCount = (constraints.maxWidth / 175).floor().clamp(
                  1,
                  7,
                ); // Ensure at least 1 and at most 6 columns
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      title: const Text('Movies'),
                      floating: true,
                      snap: true,
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      sliver: SliverGrid.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          childAspectRatio: 0.68,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          final movieItem = movies[index];

                          return MovieGridItem(
                            index: index,
                            movie: movieItem,
                            count: crossAxisCount,
                          );
                        },
                        itemCount: movies.length,
                      ),
                    ),
                  ],
                );
              },
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
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) =>
          ErrorWidgetCe(errorMessage: error.toString()),
    );
  }
}
