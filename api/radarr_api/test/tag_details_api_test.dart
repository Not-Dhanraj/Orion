import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for TagDetailsApi
void main() {
  final instance = RadarrApi().getTagDetailsApi();

  group(TagDetailsApi, () {
    //Future<List<TagDetailsResource>> apiV3TagDetailGet() async
    test('test apiV3TagDetailGet', () async {
      // TODO
    });

    //Future<TagDetailsResource> apiV3TagDetailIdGet(int id) async
    test('test apiV3TagDetailIdGet', () async {
      // TODO
    });

  });
}
