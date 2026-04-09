import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_api/radarr_api.dart';

class MovieLibraryController extends AsyncNotifier<List<dynamic>> {
  late MovieService _movieService;

  @override
  Future<List<dynamic>> build() async {
    _movieService = ref.watch(movieServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    final movieList = await _movieService.fetchAllMovies();
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
}

final movieLibraryController =
    AsyncNotifierProvider<MovieLibraryController, List<dynamic>>(
      MovieLibraryController.new,
    );
