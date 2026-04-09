import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for HealthApi
void main() {
  final instance = SonarrApi().getHealthApi();

  group(HealthApi, () {
    //Future<List<HealthResource>> apiV3HealthGet() async
    test('test apiV3HealthGet', () async {
      // TODO
    });

  });
}
