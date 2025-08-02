import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for QueueActionApi
void main() {
  final instance = Radarr().getQueueActionApi();

  group(QueueActionApi, () {
    //Future apiV3QueueGrabBulkPost({ QueueBulkResource queueBulkResource }) async
    test('test apiV3QueueGrabBulkPost', () async {
      // TODO
    });

    //Future apiV3QueueGrabIdPost(int id) async
    test('test apiV3QueueGrabIdPost', () async {
      // TODO
    });
  });
}
