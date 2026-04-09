import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for QueueStatusApi
void main() {
  final instance = SonarrApi().getQueueStatusApi();

  group(QueueStatusApi, () {
    //Future<QueueStatusResource> apiV3QueueStatusGet() async
    test('test apiV3QueueStatusGet', () async {
      // TODO
    });

  });
}
