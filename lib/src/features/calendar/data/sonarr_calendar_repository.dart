import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_api/sonarr_api.dart';

class SonarrCalendarRepository {
  final SonarrApi _sonarrApi;

  SonarrCalendarRepository(this._sonarrApi);

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

final sonarrCalendarRepositoryProvider = Provider<SonarrCalendarRepository>((
  ref,
) {
  return SonarrCalendarRepository(ref.watch(seriesApiProvider));
});
