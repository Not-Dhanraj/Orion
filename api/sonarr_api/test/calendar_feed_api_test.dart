import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for CalendarFeedApi
void main() {
  final instance = Sonarr().getCalendarFeedApi();

  group(CalendarFeedApi, () {
    //Future feedV3CalendarSonarrIcsGet({ int pastDays, int futureDays, String tags, bool unmonitored, bool premieresOnly, bool asAllDay }) async
    test('test feedV3CalendarSonarrIcsGet', () async {
      // TODO
    });
  });
}
