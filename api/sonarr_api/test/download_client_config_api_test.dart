import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for DownloadClientConfigApi
void main() {
  final instance = Sonarr().getDownloadClientConfigApi();

  group(DownloadClientConfigApi, () {
    //Future<DownloadClientConfigResource> apiV3ConfigDownloadclientGet() async
    test('test apiV3ConfigDownloadclientGet', () async {
      // TODO
    });

    //Future<DownloadClientConfigResource> apiV3ConfigDownloadclientIdGet(int id) async
    test('test apiV3ConfigDownloadclientIdGet', () async {
      // TODO
    });

    //Future<DownloadClientConfigResource> apiV3ConfigDownloadclientIdPut(String id, { DownloadClientConfigResource downloadClientConfigResource }) async
    test('test apiV3ConfigDownloadclientIdPut', () async {
      // TODO
    });
  });
}
