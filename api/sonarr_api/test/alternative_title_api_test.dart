import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for AlternativeTitleApi
void main() {
  final instance = SonarrApi().getAlternativeTitleApi();

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
