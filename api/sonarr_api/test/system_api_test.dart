import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for SystemApi
void main() {
  final instance = Sonarr().getSystemApi();

  group(SystemApi, () {
    //Future apiV3SystemRestartPost() async
    test('test apiV3SystemRestartPost', () async {
      // TODO
    });

    //Future apiV3SystemRoutesDuplicateGet() async
    test('test apiV3SystemRoutesDuplicateGet', () async {
      // TODO
    });

    //Future apiV3SystemRoutesGet() async
    test('test apiV3SystemRoutesGet', () async {
      // TODO
    });

    //Future apiV3SystemShutdownPost() async
    test('test apiV3SystemShutdownPost', () async {
      // TODO
    });

    //Future<SystemResource> apiV3SystemStatusGet() async
    test('test apiV3SystemStatusGet', () async {
      // TODO
    });
  });
}
