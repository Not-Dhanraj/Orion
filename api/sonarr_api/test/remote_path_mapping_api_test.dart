import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for RemotePathMappingApi
void main() {
  final instance = Sonarr().getRemotePathMappingApi();

  group(RemotePathMappingApi, () {
    //Future<BuiltList<RemotePathMappingResource>> apiV3RemotepathmappingGet() async
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
