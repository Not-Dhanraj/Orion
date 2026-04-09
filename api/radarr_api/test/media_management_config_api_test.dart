import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for MediaManagementConfigApi
void main() {
  final instance = RadarrApi().getMediaManagementConfigApi();

  group(MediaManagementConfigApi, () {
    //Future<MediaManagementConfigResource> apiV3ConfigMediamanagementGet() async
    test('test apiV3ConfigMediamanagementGet', () async {
      // TODO
    });

    //Future<MediaManagementConfigResource> apiV3ConfigMediamanagementIdGet(int id) async
    test('test apiV3ConfigMediamanagementIdGet', () async {
      // TODO
    });

    //Future<MediaManagementConfigResource> apiV3ConfigMediamanagementIdPut(String id, { MediaManagementConfigResource mediaManagementConfigResource }) async
    test('test apiV3ConfigMediamanagementIdPut', () async {
      // TODO
    });

  });
}
