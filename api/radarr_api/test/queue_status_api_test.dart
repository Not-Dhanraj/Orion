import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for QueueStatusApi
void main() {
  final instance = RadarrApi().getQueueStatusApi();

  group(QueueStatusApi, () {
    //Future<QueueStatusResource> apiV3QueueStatusGet() async
    test('test apiV3QueueStatusGet', () async {
      // TODO
    });

  });
}
