import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for CustomFilterApi
void main() {
  final instance = Sonarr().getCustomFilterApi();

  group(CustomFilterApi, () {
    //Future<BuiltList<CustomFilterResource>> apiV3CustomfilterGet() async
    test('test apiV3CustomfilterGet', () async {
      // TODO
    });

    //Future apiV3CustomfilterIdDelete(int id) async
    test('test apiV3CustomfilterIdDelete', () async {
      // TODO
    });

    //Future<CustomFilterResource> apiV3CustomfilterIdGet(int id) async
    test('test apiV3CustomfilterIdGet', () async {
      // TODO
    });

    //Future<CustomFilterResource> apiV3CustomfilterIdPut(String id, { CustomFilterResource customFilterResource }) async
    test('test apiV3CustomfilterIdPut', () async {
      // TODO
    });

    //Future<CustomFilterResource> apiV3CustomfilterPost({ CustomFilterResource customFilterResource }) async
    test('test apiV3CustomfilterPost', () async {
      // TODO
    });
  });
}
