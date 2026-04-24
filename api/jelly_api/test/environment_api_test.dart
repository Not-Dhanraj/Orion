import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for EnvironmentApi
void main() {
  final instance = JellyApi().getEnvironmentApi();

  group(EnvironmentApi, () {
    // Get Default directory browser.
    //
    //Future<DefaultDirectoryBrowserInfoDto> getDefaultDirectoryBrowser() async
    test('test getDefaultDirectoryBrowser', () async {
      // TODO
    });

    // Gets the contents of a given directory in the file system.
    //
    //Future<List<FileSystemEntryInfo>> getDirectoryContents(String path, { bool includeFiles, bool includeDirectories }) async
    test('test getDirectoryContents', () async {
      // TODO
    });

    // Gets available drives from the server's file system.
    //
    //Future<List<FileSystemEntryInfo>> getDrives() async
    test('test getDrives', () async {
      // TODO
    });

    // Gets network paths.
    //
    //Future<List<FileSystemEntryInfo>> getNetworkShares() async
    test('test getNetworkShares', () async {
      // TODO
    });

    // Gets the parent path of a given path.
    //
    //Future<String> getParentPath(String path) async
    test('test getParentPath', () async {
      // TODO
    });

    // Validates path.
    //
    //Future validatePath(ValidatePathDto validatePathDto) async
    test('test validatePath', () async {
      // TODO
    });

  });
}
