import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for MovieFolderApi
void main() {
  final instance = Radarr().getMovieFolderApi();

  group(MovieFolderApi, () {
    //Future apiV3MovieIdFolderGet(int id) async
    test('test apiV3MovieIdFolderGet', () async {
      // TODO
    });
  });
}
