import 'package:client/src/features/series/application/series_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesHomeController extends AsyncNotifier<List<SeriesResource>> {
  @override
  Future<List<SeriesResource>> build() async {
    final seriesService = ref.watch(seriesServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    return await seriesService.fetchAllSeries();
  }
}

final seriesHomeControllerProvider =
    AsyncNotifierProvider<SeriesHomeController, List<SeriesResource>>(() {
      return SeriesHomeController();
    });
