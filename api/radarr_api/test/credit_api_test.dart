import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for CreditApi
void main() {
  final instance = Radarr().getCreditApi();

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
