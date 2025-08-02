import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for UiConfigApi
void main() {
  final instance = Radarr().getUiConfigApi();

  group(UiConfigApi, () {
    //Future<UiConfigResource> apiV3ConfigUiGet() async
    test('test apiV3ConfigUiGet', () async {
      // TODO
    });

    //Future<UiConfigResource> apiV3ConfigUiIdGet(int id) async
    test('test apiV3ConfigUiIdGet', () async {
      // TODO
    });

    //Future<UiConfigResource> apiV3ConfigUiIdPut(String id, { UiConfigResource uiConfigResource }) async
    test('test apiV3ConfigUiIdPut', () async {
      // TODO
    });
  });
}
