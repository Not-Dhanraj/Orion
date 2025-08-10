import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieHomeController extends AsyncNotifier<List<MovieResource>> {
  @override
  Future<List<MovieResource>> build() async {
    final movieService = ref.watch(movieServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    return await movieService.fetchAllMovies();
  }

  Future<void> refreshMovies() async {
    state = const AsyncLoading();
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      final movieService = ref.watch(movieServiceProvider);
      final moviesList = await movieService.fetchAllMovies();
      state = AsyncData(moviesList);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      // Handle error, e.g., show a message to the user
    }
  }
}

final movieHomeControllerProvider =
    AsyncNotifierProvider<MovieHomeController, List<MovieResource>>(() {
  return MovieHomeController();
});
