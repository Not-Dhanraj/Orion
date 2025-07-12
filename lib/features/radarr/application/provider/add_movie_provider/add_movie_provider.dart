import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addMovieProvider = Provider<AddMovieNotifier>((ref) {
  return AddMovieNotifier(ref);
});

class AddMovieNotifier {
  AddMovieNotifier(this._ref);

  final Ref _ref;

  Future<dynamic> addMovie({
    required dynamic movie,
    required dynamic rootFolder,
    required bool monitored,
    required dynamic minimumAvailability,
    required dynamic qualityProfile,
  }) async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.movie.create(
      movie: movie,
      rootFolder: rootFolder,
      monitored: monitored,
      minimumAvailability: minimumAvailability,
      qualityProfile: qualityProfile,
    );
  }
}
