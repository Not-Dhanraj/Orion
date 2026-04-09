import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for MovieFolderApi
void main() {
  final instance = SonarrApi().getMovieFolderApi();

  group(MovieFolderApi, () {
    //Future apiV3MovieIdFolderGet(int id) async
    test('test apiV3MovieIdFolderGet', () async {
      // TODO
    });

  });
}
