import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for ApiInfoApi
void main() {
  final instance = Radarr().getApiInfoApi();

  group(ApiInfoApi, () {
    //Future<ApiInfoResource> apiGet() async
    test('test apiGet', () async {
      // TODO
    });
  });
}
