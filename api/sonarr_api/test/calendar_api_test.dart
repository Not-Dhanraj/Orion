import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for CalendarApi
void main() {
  final instance = SonarrApi().getCalendarApi();

  group(CalendarApi, () {
    //Future<List<MovieResource>> apiV3CalendarGet({ DateTime start, DateTime end, bool unmonitored, String tags }) async
    test('test apiV3CalendarGet', () async {
      // TODO
    });

  });
}
