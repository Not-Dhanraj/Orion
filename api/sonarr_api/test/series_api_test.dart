import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for SeriesApi
void main() {
  final instance = Sonarr().getSeriesApi();

  group(SeriesApi, () {
    //Future<BuiltList<SeriesResource>> apiV3SeriesGet({ int tvdbId, bool includeSeasonImages }) async
    test('test apiV3SeriesGet', () async {
      // TODO
    });

    //Future apiV3SeriesIdDelete(int id, { bool deleteFiles, bool addImportListExclusion }) async
    test('test apiV3SeriesIdDelete', () async {
      // TODO
    });

    //Future<SeriesResource> apiV3SeriesIdGet(int id, { bool includeSeasonImages }) async
    test('test apiV3SeriesIdGet', () async {
      // TODO
    });

    //Future<SeriesResource> apiV3SeriesIdPut(String id, { bool moveFiles, SeriesResource seriesResource }) async
    test('test apiV3SeriesIdPut', () async {
      // TODO
    });

    //Future<SeriesResource> apiV3SeriesPost({ SeriesResource seriesResource }) async
    test('test apiV3SeriesPost', () async {
      // TODO
    });
  });
}
