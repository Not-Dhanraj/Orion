import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for QualityProfileSchemaApi
void main() {
  final instance = RadarrApi().getQualityProfileSchemaApi();

  group(QualityProfileSchemaApi, () {
    //Future<QualityProfileResource> apiV3QualityprofileSchemaGet() async
    test('test apiV3QualityprofileSchemaGet', () async {
      // TODO
    });

  });
}
