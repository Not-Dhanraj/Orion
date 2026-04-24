import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/jelly_api.dart';
import 'package:radarr_api/radarr_api.dart' as radarr;
import 'package:sonarr_api/sonarr_api.dart' as sonarr;

class AuthRepository {
  Future<sonarr.SystemResource?> validateSonarr(String url, String apiKey) async {
    var sonarrApi = sonarr.SonarrApi(basePathOverride: url);
    sonarrApi.setApiKey('X-Api-Key', apiKey);
    await Future.delayed(const Duration(seconds: 1));
    var response = await sonarrApi.getSystemApi().apiV3SystemStatusGet();
    return response.data;
  }

  Future<radarr.SystemResource?> validateRadarr(String url, String apiKey) async {
    var radarrApi = radarr.RadarrApi(basePathOverride: url);
    radarrApi.setApiKey('X-Api-Key', apiKey);
    await Future.delayed(const Duration(seconds: 1));
    var response = await radarrApi.getSystemApi().apiV3SystemStatusGet();
    return response.data;
  }

  Future<AuthenticationResult?> authenticateJellyfin(
    String url,
    String username,
    String password,
    String deviceId,
  ) async {
    var jellyApi = JellyApi(basePathOverride: url);
    final authHeader =
        'MediaBrowser Client="Orion", Device="Orion App", '
        'DeviceId="$deviceId", Version="1.0.0"';

    final response = await jellyApi.getUserApi().authenticateUserByName(
      authenticateUserByName: AuthenticateUserByName(
        username: username,
        pw: password,
      ),
      headers: {'Authorization': authHeader},
    );
    
    return response.data;
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});