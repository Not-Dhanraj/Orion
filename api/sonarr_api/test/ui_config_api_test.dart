import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for UiConfigApi
void main() {
  final instance = Sonarr().getUiConfigApi();

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
