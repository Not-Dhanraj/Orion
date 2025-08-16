import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for SeriesImportApi
void main() {
  final instance = Sonarr().getSeriesImportApi();

  group(SeriesImportApi, () {
    //Future apiV3SeriesImportPost({ BuiltList<SeriesResource> seriesResource }) async
    test('test apiV3SeriesImportPost', () async {
      // TODO
    });
  });
}
