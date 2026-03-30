import 'package:client/src/features/movies/domain/movie_add_state.dart';
import 'package:client/src/features/movies/presentation/movie_add/movie_add_controller.dart';
import 'package:client/src/features/movies/presentation/movie_add/movie_add_dialog.dart';
import 'package:client/src/features/movies/presentation/movie_add/widgets/movie_result_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';
import 'package:client/src/shared/widgets/indicators/empty_state_widget.dart';

class MovieSearchBody extends ConsumerWidget {
  const MovieSearchBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(movieAddController).requireValue;
    final results = state.searchResults;

    if (results == null) {
      return const EmptyStateWidget(
        icon: Icons.movie_filter_rounded,
        title: 'Search for a Movie to add',
        subtitle: 'Enter a movie name above and press SEARCH.',
      );
    }
    if (results.isEmpty) {
      return const EmptyStateWidget(
        icon: Icons.search_off_rounded,
        title: 'No movies found',
        subtitle:
            'Try different keywords or check if the movie is already in your library.',
      );
    }

    return _ResultsList(results: results, state: state);
  }
}

class _ResultsList extends ConsumerWidget {
  final List<MovieResource> results;
  final MovieAddState state;

  const _ResultsList({required this.results, required this.state});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final hitCount = results.length.toString().padLeft(3, '0');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'RESULTS / $hitCount HITS',
                style: tt.labelMedium!.copyWith(
                  color: cs.primary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'SORT: RELEVANCE',
                style: tt.labelSmall!.copyWith(color: cs.outline),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
            itemCount: results.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final movie = results[index];
              final isAdded = state.addedIds?.contains(movie.tmdbId) ?? false;
              final imageUrl = movie.images?.isNotEmpty == true
                  ? movie.images!
                            .firstWhere(
                              (i) => i.coverType == MediaCoverTypes.poster,
                              orElse: () => movie.images!.firstWhere(
                                (i) =>
                                    i.coverType == MediaCoverTypes.poster ||
                                    i.coverType == MediaCoverTypes.banner,
                                orElse: () => movie.images!.first,
                              ),
                            )
                            .remoteUrl ??
                        ""
                  : "";

              return MovieResultItem(
                movie: movie,
                subtitle: _buildSubtitle(movie),
                imageUrl: imageUrl,
                isAdded: isAdded,
                isCreating: state.isCreating,
                onAdd: isAdded
                    ? null
                    : () => _openAddDialog(context, ref, movie),
              );
            },
          ),
        ),
      ],
    );
  }

  String _buildSubtitle(MovieResource movie) => [
    if (movie.year != null) movie.year.toString(),
    if (movie.status != null) movie.status!.name.toUpperCase(),
  ].join(' • ');

  Future<void> _openAddDialog(
    BuildContext context,
    WidgetRef ref,
    MovieResource movie,
  ) async {
    ref.read(movieAddController.notifier).selectMovieToState(movie);

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      builder: (_) => MovieAddDialog(movie: movie),
    );
  }
}
