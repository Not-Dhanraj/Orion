import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for AlternativeTitleApi
void main() {
  final instance = RadarrApi().getAlternativeTitleApi();

  group(AlternativeTitleApi, () {
    //Future<List<AlternativeTitleResource>> apiV3AlttitleGet({ int movieId, int movieMetadataId }) async
    test('test apiV3AlttitleGet', () async {
      // TODO
    });

    //Future<AlternativeTitleResource> apiV3AlttitleIdGet(int id) async
    test('test apiV3AlttitleIdGet', () async {
      // TODO
    });

  });
}
