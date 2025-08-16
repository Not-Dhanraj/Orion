import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesDetailsControllerNotifier extends StateNotifier<SeriesResource> {
  SeriesDetailsControllerNotifier() : super(SeriesResource());

  void initialize(SeriesResource series) {
    state = series;
  }
}

final seriesDetailsControllerProvider =
    StateNotifierProvider<SeriesDetailsControllerNotifier, SeriesResource>(
      (ref) => SeriesDetailsControllerNotifier(),
    );
