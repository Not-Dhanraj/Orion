import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for CalendarApi
void main() {
  final instance = RadarrApi().getCalendarApi();

  group(CalendarApi, () {
    //Future<List<MovieResource>> apiV3CalendarGet({ DateTime start, DateTime end, bool unmonitored, String tags }) async
    test('test apiV3CalendarGet', () async {
      // TODO
    });

  });
}
