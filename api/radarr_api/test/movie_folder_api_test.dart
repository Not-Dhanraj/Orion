import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for MovieFolderApi
void main() {
  final instance = RadarrApi().getMovieFolderApi();

  group(MovieFolderApi, () {
    //Future apiV3MovieIdFolderGet(int id) async
    test('test apiV3MovieIdFolderGet', () async {
      // TODO
    });

  });
}
