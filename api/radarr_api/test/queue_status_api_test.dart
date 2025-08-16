import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for QueueStatusApi
void main() {
  final instance = Radarr().getQueueStatusApi();

  group(QueueStatusApi, () {
    //Future<QueueStatusResource> apiV3QueueStatusGet() async
    test('test apiV3QueueStatusGet', () async {
      // TODO
    });
  });
}
