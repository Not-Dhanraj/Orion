import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/radarr/application/provider/all_movies_provider/all_movies_provider.dart';
import 'package:client/features/radarr/presentation/movies/widgets/movies_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/features/radarr/presentation/add_movie/view/add_movie_screen.dart';
import 'package:with_opacity/with_opacity.dart';

class RadarrScreen extends ConsumerWidget {
  const RadarrScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesValue = ref.watch(allMoviesProvider);

    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Movies',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 2,
      ),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  colorScheme.surfaceContainerHighest.withCustomOpacity(0.3),
                  colorScheme.surface,
                ],
                stops: const [0.0, 0.3],
              ),
            ),
            child: SafeArea(
              child: RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(allMoviesProvider);
                  // Wait for the provider to reload
                  await ref.read(allMoviesProvider.future);
                },
                child: moviesValue.when(
                  data: (movies) => MoviesGridView(movies: movies),
                  loading: () => const CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ],
                  ),
                  error: (err, stack) => CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        child: ErrorView(
                          error: err,
                          customMessage: 'Failed to load movies',
                          onRetry: () => ref.refresh(allMoviesProvider),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 12,
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const AddMovieScreen(),
                    transitionsBuilder: (_, animation, __, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 0.25),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        ),
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 250),
                  ),
                );
              },
              backgroundColor: colorScheme.primary,
              foregroundColor: colorScheme.onPrimary,
              elevation: 6,
              icon: const Icon(Icons.add),
              label: const Text("Add Movie"),
            ),
          ),
        ],
      ),
    );
  }
}
