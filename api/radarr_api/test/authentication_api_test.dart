import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for AuthenticationApi
void main() {
  final instance = RadarrApi().getAuthenticationApi();

  group(AuthenticationApi, () {
    //Future loginPost({ String returnUrl, String username, String password, String rememberMe }) async
    test('test loginPost', () async {
      // TODO
    });

    //Future logoutGet() async
    test('test logoutGet', () async {
      // TODO
    });

  });
}
