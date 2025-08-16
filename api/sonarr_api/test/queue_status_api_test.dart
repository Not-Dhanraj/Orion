import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for QueueStatusApi
void main() {
  final instance = Sonarr().getQueueStatusApi();

  group(QueueStatusApi, () {
    //Future<QueueStatusResource> apiV3QueueStatusGet() async
    test('test apiV3QueueStatusGet', () async {
      // TODO
    });
  });
}
