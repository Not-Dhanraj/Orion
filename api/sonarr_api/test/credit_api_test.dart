import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for CreditApi
void main() {
  final instance = SonarrApi().getCreditApi();

  group(CreditApi, () {
    //Future apiV3CreditGet({ int movieId, int movieMetadataId }) async
    test('test apiV3CreditGet', () async {
      // TODO
    });

    //Future<CreditResource> apiV3CreditIdGet(int id) async
    test('test apiV3CreditIdGet', () async {
      // TODO
    });

  });
}
