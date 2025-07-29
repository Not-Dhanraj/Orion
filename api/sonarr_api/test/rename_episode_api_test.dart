import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for RenameEpisodeApi
void main() {
  final instance = Sonarr().getRenameEpisodeApi();

  group(RenameEpisodeApi, () {
    //Future<BuiltList<RenameEpisodeResource>> apiV3RenameGet({ int seriesId, int seasonNumber }) async
    test('test apiV3RenameGet', () async {
      // TODO
    });
  });
}
