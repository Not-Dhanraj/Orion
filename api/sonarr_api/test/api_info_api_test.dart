import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for ApiInfoApi
void main() {
  final instance = SonarrApi().getApiInfoApi();

  group(ApiInfoApi, () {
    //Future<ApiInfoResource> apiGet() async
    test('test apiGet', () async {
      // TODO
    });

  });
}
