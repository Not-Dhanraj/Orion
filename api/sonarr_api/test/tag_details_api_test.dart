import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for TagDetailsApi
void main() {
  final instance = SonarrApi().getTagDetailsApi();

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
