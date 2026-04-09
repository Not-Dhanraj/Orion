import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for SeriesEditorApi
void main() {
  final instance = SonarrApi().getSeriesEditorApi();

  group(SeriesEditorApi, () {
    //Future apiV3SeriesEditorDelete({ SeriesEditorResource seriesEditorResource }) async
    test('test apiV3SeriesEditorDelete', () async {
      // TODO
    });

    //Future apiV3SeriesEditorPut({ SeriesEditorResource seriesEditorResource }) async
    test('test apiV3SeriesEditorPut', () async {
      // TODO
    });

  });
}
