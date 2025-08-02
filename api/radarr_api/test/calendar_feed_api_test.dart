import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for CalendarFeedApi
void main() {
  final instance = Radarr().getCalendarFeedApi();

  group(CalendarFeedApi, () {
    //Future feedV3CalendarRadarrIcsGet({ int pastDays, int futureDays, String tags, bool unmonitored, BuiltList<CalendarReleaseType> releaseTypes }) async
    test('test feedV3CalendarRadarrIcsGet', () async {
      // TODO
    });
  });
}
