import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for IndexerFlagApi
void main() {
  final instance = Radarr().getIndexerFlagApi();

  group(IndexerFlagApi, () {
    //Future<BuiltList<IndexerFlagResource>> apiV3IndexerflagGet() async
    test('test apiV3IndexerflagGet', () async {
      // TODO
    });
  });
}
