import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/jelly_api.dart';
import 'package:radarr_api/radarr_api.dart' as radarr;
import 'package:sonarr_api/sonarr_api.dart' as sonarr;

class ServerValidationRepository {
  Future<sonarr.SystemResource?> validateSonarr(String url, String apiKey) async {
    final api = sonarr.SonarrApi(basePathOverride: url.toNormalizedUrl());
    api.setApiKey('X-Api-Key', apiKey);
    await Future.delayed(const Duration(seconds: 1));
    final response = await api.getSystemApi().apiV3SystemStatusGet();
    if (response.data == null) throw Exception('No data returned from Sonarr');
    return response.data;
  }

  Future<radarr.SystemResource?> validateRadarr(String url, String apiKey) async {
    final api = radarr.RadarrApi(basePathOverride: url.toNormalizedUrl());
    api.setApiKey('X-Api-Key', apiKey);
    await Future.delayed(const Duration(seconds: 1));
    final response = await api.getSystemApi().apiV3SystemStatusGet();
    if (response.data == null) throw Exception('No data returned from Radarr');
    return response.data;
  }

  Future<AuthenticationResult?> authenticateJellyfin(
    String url,
    String username,
    String password,
    String deviceId,
  ) async {
    var jellyApi = JellyApi(basePathOverride: url.toNormalizedUrl());
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
    
    if (response.statusCode != 200) {
      throw Exception('Jellyfin API returned ${response.statusMessage}');
    }
    
    return response.data;
  }
}

final serverValidationRepositoryProvider = Provider<ServerValidationRepository>((ref) {
  return ServerValidationRepository();
});
