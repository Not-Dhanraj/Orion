import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for QualityProfileSchemaApi
void main() {
  final instance = Radarr().getQualityProfileSchemaApi();

  group(QualityProfileSchemaApi, () {
    //Future<QualityProfileResource> apiV3QualityprofileSchemaGet() async
    test('test apiV3QualityprofileSchemaGet', () async {
      // TODO
    });
  });
}
