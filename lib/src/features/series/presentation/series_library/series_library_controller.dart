import 'package:client/src/features/series/application/series_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesLibraryController extends AsyncNotifier<List<dynamic>> {
  @override
  Future<List<dynamic>> build() async {
    final seriesService = ref.watch(seriesServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    final seriesList = await seriesService.fetchAllSeries();
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

  // Future<void> refreshSeries() async {
  //   state = const AsyncLoading();
  //   try {
  //     await Future.delayed(const Duration(milliseconds: 500));
  //     final seriesService = ref.watch(seriesServiceProvider);
  //     final seriesList = await seriesService.fetchAllSeries();
  //     state = AsyncData(_buildDisplayList(seriesList));
  //   } catch (e) {
  //     state = AsyncError(e, StackTrace.current);
  //   }
  // }
}

final seriesLibraryController =
    AsyncNotifierProvider<SeriesLibraryController, List<dynamic>>(() {
      return SeriesLibraryController();
    });
