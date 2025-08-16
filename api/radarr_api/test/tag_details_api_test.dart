import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for TagDetailsApi
void main() {
  final instance = Radarr().getTagDetailsApi();

  group(TagDetailsApi, () {
    //Future<BuiltList<TagDetailsResource>> apiV3TagDetailGet() async
    test('test apiV3TagDetailGet', () async {
      // TODO
    });

    //Future<TagDetailsResource> apiV3TagDetailIdGet(int id) async
    test('test apiV3TagDetailIdGet', () async {
      // TODO
    });
  });
}
