import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for ActivityLogApi
void main() {
  final instance = JellyApi().getActivityLogApi();

  group(ActivityLogApi, () {
    // Gets activity log entries.
    //
    //Future<ActivityLogEntryQueryResult> getLogEntries({ int startIndex, int limit, DateTime minDate, bool hasUserId }) async
    test('test getLogEntries', () async {
      // TODO
    });

  });
}
