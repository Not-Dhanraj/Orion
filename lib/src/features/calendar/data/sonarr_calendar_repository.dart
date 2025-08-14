import 'package:sonarr/sonarr.dart';

/// Repository for fetching calendar data from Sonarr API
class SonarrCalendarRepository {
  final Sonarr _sonarrApi;

  SonarrCalendarRepository(this._sonarrApi);

  /// Fetch calendar data from Sonarr
  Future<List<EpisodeResource>> getCalendar({
    DateTime? start,
    DateTime? end,
    bool includeUnmonitored = true,
    bool includeSeries = true,
    bool includeEpisodeFile = true,
  }) async {
    final response = await _sonarrApi.getCalendarApi().apiV3CalendarGet(
      start: start,
      end: end,
      unmonitored: includeUnmonitored,
      includeSeries: includeSeries,
      includeEpisodeFile: includeEpisodeFile,
    );

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to fetch Sonarr calendar: ${response.statusMessage}',
      );
    }

    return response.data!.toList();
  }
}
