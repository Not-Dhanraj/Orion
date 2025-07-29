import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for HealthApi
void main() {
  final instance = Sonarr().getHealthApi();

  group(HealthApi, () {
    //Future<BuiltList<HealthResource>> apiV3HealthGet() async
    test('test apiV3HealthGet', () async {
      // TODO
    });
  });
}
