import 'package:client/src/features/movies/presentation/movie_add/movie_search_page.dart';
import 'package:client/src/shared/widgets/library/library_item_row.dart';
import 'package:client/src/shared/widgets/library/library_section_header.dart';
import 'package:client/src/features/movies/presentation/movie_detail/movie_details_controller.dart';
import 'package:client/src/features/movies/presentation/movie_library/movie_library_controller.dart';
import 'package:client/src/shared/utils/context_extensions.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:client/src/shared/utils/movie_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:radarr_api/radarr_api.dart';

class MovieLibraryPage extends ConsumerWidget {
  const MovieLibraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(movieLibraryController);

    return async.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(
        child: CustomErrorState(
          error: err,
          stackTrace: stack,
          onRetry: () => ref.invalidate(movieLibraryController),
        ),
      ),
      data: (movies) {
        return Stack(
          children: [
            if (movies.isEmpty)
              const Center(child: Text('No movies in your library.'))
            else
              ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: context.isDesktop ? 32 : 16,
                ),
                itemCount: movies.length + 1,
                itemBuilder: (context, index) {
                  if (index == movies.length) return const SizedBox(height: 30);

                  final item = movies[index];
                  if (item is String) return LibrarySectionHeader(letter: item);

                  final movieItem = item as MovieResource;
                  return LibraryItemRow(
                    id: 'movie-item: ${movieItem.id}',
                    title: movieItem.title ?? '',
                    year: '${movieItem.year ?? ''}',
                    posterUrl: movieItem.remotePosterUrlLink,
                    statusColor: movieItem.statusColor,
                    onTap: () {
                      ref
                          .read(movieDetailsController.notifier)
                          .initialize(movieItem);
                      context.push('/library/movie', extra: movieItem);
                    },
                  );
                },
              ),
            Positioned(
              bottom: 16,
              right: 16,
              child: SafeArea(
                top: false,
                child: ElevatedButton(
                  onPressed: () => _showMovieSearchSheet(context),
                  child: const Text('SEARCH'),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showMovieSearchSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const MovieSearchPage(),
    );
  }
}
