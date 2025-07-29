import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for AuthenticationApi
void main() {
  final instance = Sonarr().getAuthenticationApi();

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
