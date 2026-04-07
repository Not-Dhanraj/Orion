import 'package:client/src/features/series/application/series_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

// Contains String as well as SeriesResource as this directly provides the build list to UI without multipe builds
class SeriesLibraryController extends AsyncNotifier<List<dynamic>> {
  late SeriesService _seriesService;

  @override
  Future<List<dynamic>> build() async {
    _seriesService = ref.watch(seriesServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    final seriesList = await _seriesService.fetchAllSeries();
    return _buildDisplayList(seriesList);
  }

  List<SeriesResource> _sortList(List<SeriesResource> list) {
    return [...list]..sort(
      (a, b) => (a.sortTitle ?? a.title ?? '').compareTo(
        b.sortTitle ?? b.title ?? '',
      ),
    );
  }

  List<dynamic> _buildDisplayList(List<SeriesResource> list) {
    final sorted = _sortList(list);
    final displayList = <dynamic>[];
    String? currentSection;

    for (final s in sorted) {
      final t = s.sortTitle ?? s.title ?? '';
      final section = t.isNotEmpty ? t[0].toUpperCase() : '#';
      if (section != currentSection) {
        currentSection = section;
        displayList.add(section);
      }
      displayList.add(s);
    }

    return displayList;
  }
}

final seriesLibraryController =
    AsyncNotifierProvider<SeriesLibraryController, List<dynamic>>(
      SeriesLibraryController.new,
    );
