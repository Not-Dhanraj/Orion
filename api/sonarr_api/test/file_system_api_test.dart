import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for FileSystemApi
void main() {
  final instance = Sonarr().getFileSystemApi();

  group(FileSystemApi, () {
    //Future apiV3FilesystemGet({ String path, bool includeFiles, bool allowFoldersWithoutTrailingSlashes }) async
    test('test apiV3FilesystemGet', () async {
      // TODO
    });

    //Future apiV3FilesystemMediafilesGet({ String path }) async
    test('test apiV3FilesystemMediafilesGet', () async {
      // TODO
    });

    //Future apiV3FilesystemTypeGet({ String path }) async
    test('test apiV3FilesystemTypeGet', () async {
      // TODO
    });
  });
}
