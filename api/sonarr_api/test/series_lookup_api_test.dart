import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for SeriesLookupApi
void main() {
  final instance = SonarrApi().getSeriesLookupApi();

  group(SeriesLookupApi, () {
    //Future<List<SeriesResource>> apiV3SeriesLookupGet({ String term }) async
    test('test apiV3SeriesLookupGet', () async {
      // TODO
    });

  });
}
