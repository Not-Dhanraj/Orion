import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for HealthApi
void main() {
  final instance = RadarrApi().getHealthApi();

  group(HealthApi, () {
    //Future<List<HealthResource>> apiV3HealthGet() async
    test('test apiV3HealthGet', () async {
      // TODO
    });

  });
}
