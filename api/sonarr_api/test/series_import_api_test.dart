import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for SeriesImportApi
void main() {
  final instance = SonarrApi().getSeriesImportApi();

  group(SeriesImportApi, () {
    //Future apiV3SeriesImportPost({ List<SeriesResource> seriesResource }) async
    test('test apiV3SeriesImportPost', () async {
      // TODO
    });

  });
}
