import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for CustomFilterApi
void main() {
  final instance = SonarrApi().getCustomFilterApi();

  group(CustomFilterApi, () {
    //Future<List<CustomFilterResource>> apiV3CustomfilterGet() async
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
