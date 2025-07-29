import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for QualityProfileSchemaApi
void main() {
  final instance = Sonarr().getQualityProfileSchemaApi();

  group(QualityProfileSchemaApi, () {
    //Future<QualityProfileResource> apiV3QualityprofileSchemaGet() async
    test('test apiV3QualityprofileSchemaGet', () async {
      // TODO
    });
  });
}
