import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for QualityProfileSchemaApi
void main() {
  final instance = SonarrApi().getQualityProfileSchemaApi();

  group(QualityProfileSchemaApi, () {
    //Future<QualityProfileResource> apiV3QualityprofileSchemaGet() async
    test('test apiV3QualityprofileSchemaGet', () async {
      // TODO
    });

  });
}
