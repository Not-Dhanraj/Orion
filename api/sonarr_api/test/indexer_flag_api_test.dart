import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for IndexerFlagApi
void main() {
  final instance = SonarrApi().getIndexerFlagApi();

  group(IndexerFlagApi, () {
    //Future<List<IndexerFlagResource>> apiV3IndexerflagGet() async
    test('test apiV3IndexerflagGet', () async {
      // TODO
    });

  });
}
