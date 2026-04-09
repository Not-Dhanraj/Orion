import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for TagApi
void main() {
  final instance = RadarrApi().getTagApi();

  group(TagApi, () {
    //Future<List<TagResource>> apiV3TagGet() async
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
