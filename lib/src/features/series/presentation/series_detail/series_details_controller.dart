import 'package:client/src/features/series/application/series_service.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesDetailsControllerNotifier extends StateNotifier<SeriesResource> {
  final Ref _ref;
  SeriesDetailsControllerNotifier(this._ref) : super(SeriesResource());

  void initialize(SeriesResource series) {
    state = series;
  }

  Future<void> deleteSeries({
    required bool deleteFiles,
    required bool addImportListExclusion,
  }) async {
    final service = _ref.read(seriesServiceProvider);
    await service.deleteSeries(state.id!, deleteFiles, addImportListExclusion);
    _ref.invalidate(seriesLibraryController);
  }
}

final seriesDetailsController =
    StateNotifierProvider<SeriesDetailsControllerNotifier, SeriesResource>(
      (ref) => SeriesDetailsControllerNotifier(ref),
    );
