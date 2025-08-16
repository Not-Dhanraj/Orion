import 'package:radarr/radarr.dart';

class RadarrCalendarRepository {
  final Radarr _radarrApi;

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
