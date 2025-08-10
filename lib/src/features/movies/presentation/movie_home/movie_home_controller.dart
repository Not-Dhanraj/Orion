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
}

final movieHomeControllerProvider =
    AsyncNotifierProvider<MovieHomeController, List<MovieResource>>(() {
      return MovieHomeController();
    });
