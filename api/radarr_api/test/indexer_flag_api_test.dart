import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for IndexerFlagApi
void main() {
  final instance = RadarrApi().getIndexerFlagApi();

  group(IndexerFlagApi, () {
    //Future<List<IndexerFlagResource>> apiV3IndexerflagGet() async
    test('test apiV3IndexerflagGet', () async {
      // TODO
    });

  });
}
