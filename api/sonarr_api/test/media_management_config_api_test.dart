import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for MediaManagementConfigApi
void main() {
  final instance = Sonarr().getMediaManagementConfigApi();

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
