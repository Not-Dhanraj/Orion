import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for TimeSyncApi
void main() {
  final instance = JellyApi().getTimeSyncApi();

  group(TimeSyncApi, () {
    // Gets the current UTC time.
    //
    //Future<UtcTimeResponse> getUtcTime() async
    test('test getUtcTime', () async {
      // TODO
    });

  });
}
