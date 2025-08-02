import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for HealthApi
void main() {
  final instance = Radarr().getHealthApi();

  group(HealthApi, () {
    //Future<BuiltList<HealthResource>> apiV3HealthGet() async
    test('test apiV3HealthGet', () async {
      // TODO
    });
  });
}
