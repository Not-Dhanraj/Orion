import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_api/radarr_api.dart';

class RadarrCalendarRepository {
  final RadarrApi _radarrApi;

  RadarrCalendarRepository(this._radarrApi);

  Future<List<MovieResource>> getCalendar({
    DateTime? start,
    DateTime? end,
    bool includeUnmonitored = true,
  }) async {
    final response = await _radarrApi.getCalendarApi().apiV3CalendarGet(
      start: start,
      end: end,
      unmonitored: includeUnmonitored,
    );

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to fetch Radarr calendar: ${response.statusMessage}',
      );
    }

    return response.data!.toList();
  }
}

final radarrCalendarRepositoryProvider = Provider<RadarrCalendarRepository>((
  ref,
) {
  return RadarrCalendarRepository(ref.watch(moviesApiProvider));
});
