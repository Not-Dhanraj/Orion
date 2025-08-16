import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for CalendarApi
void main() {
  final instance = Sonarr().getCalendarApi();

  group(CalendarApi, () {
    //Future<BuiltList<EpisodeResource>> apiV3CalendarGet({ DateTime start, DateTime end, bool unmonitored, bool includeSeries, bool includeEpisodeFile, bool includeEpisodeImages, String tags }) async
    test('test apiV3CalendarGet', () async {
      // TODO
    });

    //Future<EpisodeResource> apiV3CalendarIdGet(int id) async
    test('test apiV3CalendarIdGet', () async {
      // TODO
    });
  });
}
