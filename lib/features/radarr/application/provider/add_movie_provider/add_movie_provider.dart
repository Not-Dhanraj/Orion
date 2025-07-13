import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

final addMovieProvider = Provider<AddMovieNotifier>((ref) {
  return AddMovieNotifier(ref);
});

class AddMovieNotifier {
  AddMovieNotifier(this._ref);

  final Ref _ref;

  Future<RadarrMovie> addMovie({
    required RadarrMovie movie,
    required RadarrRootFolder rootFolder,
    required bool monitored,
    required RadarrAvailability minimumAvailability,
    required RadarrQualityProfile qualityProfile,
    RadarrMovieTypes? monitor,
  }) async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.movie.create(
      movie: movie,
      rootFolder: rootFolder,
      monitored: monitored,
      minimumAvailability: minimumAvailability,
      qualityProfile: qualityProfile,
      monitor: monitor,
    );
  }
}
