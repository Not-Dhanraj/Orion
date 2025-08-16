import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for TagApi
void main() {
  final instance = Sonarr().getTagApi();

  group(TagApi, () {
    //Future<BuiltList<TagResource>> apiV3TagGet() async
    test('test apiV3TagGet', () async {
      // TODO
    });

    //Future apiV3TagIdDelete(int id) async
    test('test apiV3TagIdDelete', () async {
      // TODO
    });

    //Future<TagResource> apiV3TagIdGet(int id) async
    test('test apiV3TagIdGet', () async {
      // TODO
    });

    //Future<TagResource> apiV3TagIdPut(String id, { TagResource tagResource }) async
    test('test apiV3TagIdPut', () async {
      // TODO
    });

    //Future<TagResource> apiV3TagPost({ TagResource tagResource }) async
    test('test apiV3TagPost', () async {
      // TODO
    });
  });
}
