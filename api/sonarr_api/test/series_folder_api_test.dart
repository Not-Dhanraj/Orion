import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for SeriesFolderApi
void main() {
  final instance = Sonarr().getSeriesFolderApi();

  group(SeriesFolderApi, () {
    //Future apiV3SeriesIdFolderGet(int id) async
    test('test apiV3SeriesIdFolderGet', () async {
      // TODO
    });
  });
}
