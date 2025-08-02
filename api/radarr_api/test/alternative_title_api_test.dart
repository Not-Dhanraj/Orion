import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for AlternativeTitleApi
void main() {
  final instance = Radarr().getAlternativeTitleApi();

  group(AlternativeTitleApi, () {
    //Future<BuiltList<AlternativeTitleResource>> apiV3AlttitleGet({ int movieId, int movieMetadataId }) async
    test('test apiV3AlttitleGet', () async {
      // TODO
    });

    //Future<AlternativeTitleResource> apiV3AlttitleIdGet(int id) async
    test('test apiV3AlttitleIdGet', () async {
      // TODO
    });
  });
}
