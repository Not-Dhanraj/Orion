import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for QueueDetailsApi
void main() {
  final instance = Radarr().getQueueDetailsApi();

  group(QueueDetailsApi, () {
    //Future<BuiltList<QueueResource>> apiV3QueueDetailsGet({ int movieId, bool includeMovie }) async
    test('test apiV3QueueDetailsGet', () async {
      // TODO
    });
  });
}
