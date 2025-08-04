import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/series/application/series_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesHomeController extends AsyncNotifier<List<SeriesResource>> {
  @override
  Future<List<SeriesResource>> build() async {
    try {
      final seriesService = ref.watch(seriesServiceProvider);
      return await seriesService.fetchAllSeries();
    } catch (e, stackTrace) {
      if (e is RepositoryException) {
        throw e;
      }
      throw RepositoryException(
        'Failed to load series',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

final seriesHomeControllerProvider =
    AsyncNotifierProvider<SeriesHomeController, List<SeriesResource>>(() {
      return SeriesHomeController();
    });
