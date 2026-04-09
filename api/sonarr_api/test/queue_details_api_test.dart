import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for QueueDetailsApi
void main() {
  final instance = SonarrApi().getQueueDetailsApi();

  group(QueueDetailsApi, () {
    //Future<List<QueueResource>> apiV3QueueDetailsGet({ int movieId, bool includeMovie }) async
    test('test apiV3QueueDetailsGet', () async {
      // TODO
    });

  });
}
