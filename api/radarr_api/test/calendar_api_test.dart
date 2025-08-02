import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for CalendarApi
void main() {
  final instance = Radarr().getCalendarApi();

  group(CalendarApi, () {
    //Future<BuiltList<MovieResource>> apiV3CalendarGet({ DateTime start, DateTime end, bool unmonitored, String tags }) async
    test('test apiV3CalendarGet', () async {
      // TODO
    });
  });
}
