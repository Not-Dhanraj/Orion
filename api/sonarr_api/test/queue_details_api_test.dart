import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for QueueDetailsApi
void main() {
  final instance = Sonarr().getQueueDetailsApi();

  group(QueueDetailsApi, () {
    //Future<BuiltList<QueueResource>> apiV3QueueDetailsGet({ int seriesId, BuiltList<int> episodeIds, bool includeSeries, bool includeEpisode }) async
    test('test apiV3QueueDetailsGet', () async {
      // TODO
    });
  });
}
