import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for SeriesFolderApi
void main() {
  final instance = SonarrApi().getSeriesFolderApi();

  group(SeriesFolderApi, () {
    //Future apiV3SeriesIdFolderGet(int id) async
    test('test apiV3SeriesIdFolderGet', () async {
      // TODO
    });

  });
}
