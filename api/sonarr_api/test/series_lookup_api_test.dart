import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for SeriesLookupApi
void main() {
  final instance = Sonarr().getSeriesLookupApi();

  group(SeriesLookupApi, () {
    //Future<BuiltList<SeriesResource>> apiV3SeriesLookupGet({ String term }) async
    test('test apiV3SeriesLookupGet', () async {
      // TODO
    });
  });
}
