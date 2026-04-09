import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for CalendarFeedApi
void main() {
  final instance = SonarrApi().getCalendarFeedApi();

  group(CalendarFeedApi, () {
    //Future feedV3CalendarRadarrIcsGet({ int pastDays, int futureDays, String tags, bool unmonitored, List<CalendarReleaseType> releaseTypes }) async
    test('test feedV3CalendarRadarrIcsGet', () async {
      // TODO
    });

  });
}
