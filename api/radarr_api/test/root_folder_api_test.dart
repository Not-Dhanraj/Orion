import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for RootFolderApi
void main() {
  final instance = Radarr().getRootFolderApi();

  group(RootFolderApi, () {
    //Future<BuiltList<RootFolderResource>> apiV3RootfolderGet() async
    test('test apiV3RootfolderGet', () async {
      // TODO
    });

    //Future apiV3RootfolderIdDelete(int id) async
    test('test apiV3RootfolderIdDelete', () async {
      // TODO
    });

    //Future<RootFolderResource> apiV3RootfolderIdGet(int id) async
    test('test apiV3RootfolderIdGet', () async {
      // TODO
    });

    //Future<RootFolderResource> apiV3RootfolderPost({ RootFolderResource rootFolderResource }) async
    test('test apiV3RootfolderPost', () async {
      // TODO
    });
  });
}
