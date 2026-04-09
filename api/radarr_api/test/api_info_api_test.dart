import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for ApiInfoApi
void main() {
  final instance = RadarrApi().getApiInfoApi();

  group(ApiInfoApi, () {
    //Future<ApiInfoResource> apiGet() async
    test('test apiGet', () async {
      // TODO
    });

  });
}
