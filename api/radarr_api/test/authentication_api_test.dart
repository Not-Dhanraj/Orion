import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for AuthenticationApi
void main() {
  final instance = Radarr().getAuthenticationApi();

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
