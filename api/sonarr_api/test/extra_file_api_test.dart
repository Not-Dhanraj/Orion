import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for ExtraFileApi
void main() {
  final instance = SonarrApi().getExtraFileApi();

  group(ExtraFileApi, () {
    //Future<List<ExtraFileResource>> apiV3ExtrafileGet({ int movieId }) async
    test('test apiV3ExtrafileGet', () async {
      // TODO
    });

  });
}
