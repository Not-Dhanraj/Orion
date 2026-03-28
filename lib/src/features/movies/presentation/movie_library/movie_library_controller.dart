import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieLibraryController extends AsyncNotifier<List<dynamic>> {
  @override
  Future<List<dynamic>> build() async {
    final movieService = ref.watch(movieServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    final movieList = await movieService.fetchAllMovies();
    return _buildDisplayList(movieList);
  }

  List<MovieResource> _sortList(List<MovieResource> list) {
    return [...list]..sort(
      (a, b) => (a.sortTitle ?? a.title ?? '').compareTo(
        b.sortTitle ?? b.title ?? '',
      ),
    );
  }

  List<dynamic> _buildDisplayList(List<MovieResource> list) {
    final sorted = _sortList(list);
    final displayList = <dynamic>[];
    String? currentSection;

    for (final m in sorted) {
      final t = m.sortTitle ?? m.title ?? '';
      final section = t.isNotEmpty ? t[0].toUpperCase() : '#';
      if (section != currentSection) {
        currentSection = section;
        displayList.add(section);
      }
      displayList.add(m);
    }

    return displayList;
  }

  // Future<void> refreshMovies() async {
  //   state = const AsyncLoading();
  //   try {
  //     await Future.delayed(const Duration(milliseconds: 500));
  //     final movieService = ref.watch(movieServiceProvider);
  //     final movieList = await movieService.fetchAllMovies();
  //     state = AsyncData(_buildDisplayList(movieList));
  //   } catch (e) {
  //     state = AsyncError(e, StackTrace.current);
  //   }
  // }
}

final movieLibraryController =
    AsyncNotifierProvider<MovieLibraryController, List<dynamic>>(() {
      return MovieLibraryController();
    });
