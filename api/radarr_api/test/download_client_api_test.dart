import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for DownloadClientApi
void main() {
  final instance = Radarr().getDownloadClientApi();

  group(DownloadClientApi, () {
    //Future apiV3DownloadclientActionNamePost(String name, { DownloadClientResource downloadClientResource }) async
    test('test apiV3DownloadclientActionNamePost', () async {
      // TODO
    });

    //Future apiV3DownloadclientBulkDelete({ DownloadClientBulkResource downloadClientBulkResource }) async
    test('test apiV3DownloadclientBulkDelete', () async {
      // TODO
    });

    //Future<DownloadClientResource> apiV3DownloadclientBulkPut({ DownloadClientBulkResource downloadClientBulkResource }) async
    test('test apiV3DownloadclientBulkPut', () async {
      // TODO
    });

    //Future<BuiltList<DownloadClientResource>> apiV3DownloadclientGet() async
    test('test apiV3DownloadclientGet', () async {
      // TODO
    });

    //Future apiV3DownloadclientIdDelete(int id) async
    test('test apiV3DownloadclientIdDelete', () async {
      // TODO
    });

    //Future<DownloadClientResource> apiV3DownloadclientIdGet(int id) async
    test('test apiV3DownloadclientIdGet', () async {
      // TODO
    });

    //Future<DownloadClientResource> apiV3DownloadclientIdPut(int id, { bool forceSave, DownloadClientResource downloadClientResource }) async
    test('test apiV3DownloadclientIdPut', () async {
      // TODO
    });

    //Future<DownloadClientResource> apiV3DownloadclientPost({ bool forceSave, DownloadClientResource downloadClientResource }) async
    test('test apiV3DownloadclientPost', () async {
      // TODO
    });

    //Future<BuiltList<DownloadClientResource>> apiV3DownloadclientSchemaGet() async
    test('test apiV3DownloadclientSchemaGet', () async {
      // TODO
    });

    //Future apiV3DownloadclientTestPost({ bool forceTest, DownloadClientResource downloadClientResource }) async
    test('test apiV3DownloadclientTestPost', () async {
      // TODO
    });

    //Future apiV3DownloadclientTestallPost() async
    test('test apiV3DownloadclientTestallPost', () async {
      // TODO
    });
  });
}
