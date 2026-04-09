import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for RemotePathMappingApi
void main() {
  final instance = SonarrApi().getRemotePathMappingApi();

  group(RemotePathMappingApi, () {
    //Future<List<RemotePathMappingResource>> apiV3RemotepathmappingGet() async
    test('test apiV3RemotepathmappingGet', () async {
      // TODO
    });

    //Future apiV3RemotepathmappingIdDelete(int id) async
    test('test apiV3RemotepathmappingIdDelete', () async {
      // TODO
    });

    //Future<RemotePathMappingResource> apiV3RemotepathmappingIdGet(int id) async
    test('test apiV3RemotepathmappingIdGet', () async {
      // TODO
    });

    //Future<RemotePathMappingResource> apiV3RemotepathmappingIdPut(String id, { RemotePathMappingResource remotePathMappingResource }) async
    test('test apiV3RemotepathmappingIdPut', () async {
      // TODO
    });

    //Future<RemotePathMappingResource> apiV3RemotepathmappingPost({ RemotePathMappingResource remotePathMappingResource }) async
    test('test apiV3RemotepathmappingPost', () async {
      // TODO
    });

  });
}
