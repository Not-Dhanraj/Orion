import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for QueueDetailsApi
void main() {
  final instance = RadarrApi().getQueueDetailsApi();

  group(QueueDetailsApi, () {
    //Future<List<QueueResource>> apiV3QueueDetailsGet({ int movieId, bool includeMovie }) async
    test('test apiV3QueueDetailsGet', () async {
      // TODO
    });

  });
}
