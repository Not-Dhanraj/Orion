import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for IndexerFlagApi
void main() {
  final instance = Sonarr().getIndexerFlagApi();

  group(IndexerFlagApi, () {
    //Future<BuiltList<IndexerFlagResource>> apiV3IndexerflagGet() async
    test('test apiV3IndexerflagGet', () async {
      // TODO
    });
  });
}
