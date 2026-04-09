import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for HostConfigApi
void main() {
  final instance = SonarrApi().getHostConfigApi();

  group(HostConfigApi, () {
    //Future<HostConfigResource> apiV3ConfigHostGet() async
    test('test apiV3ConfigHostGet', () async {
      // TODO
    });

    //Future<HostConfigResource> apiV3ConfigHostIdGet(int id) async
    test('test apiV3ConfigHostIdGet', () async {
      // TODO
    });

    //Future<HostConfigResource> apiV3ConfigHostIdPut(String id, { HostConfigResource hostConfigResource }) async
    test('test apiV3ConfigHostIdPut', () async {
      // TODO
    });

  });
}
