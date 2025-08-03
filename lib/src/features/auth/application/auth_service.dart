import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';
import 'package:sonarr/sonarr.dart';

class AuthService {
  AuthService(this._ref);
  final Ref _ref;

  Future<void> makeSonarrRequest(String url, String apiKey) async {
    var sonarrApi = Sonarr(basePathOverride: url);
    sonarrApi.setApiKey('X-Api-Key', apiKey);
    await Future.delayed(const Duration(seconds: 1));
    var response = await sonarrApi.getSystemApi().apiV3SystemStatusGet();

    if (response.statusCode != 200) {
      throw Exception(
        'Sonarr API returned an error: ${response.statusMessage}',
      );
    } else if (response.data!.appName != 'Sonarr') {
      throw Exception(
        'Invalid Sonarr API App name response: ${response.data!.appName}',
      );
    }
  }

  Future<void> makeRadarrRequest(String url, String apiKey) async {
    var radarrApi = Radarr(basePathOverride: url);
    radarrApi.setApiKey('X-Api-Key', apiKey);
    await Future.delayed(const Duration(seconds: 1));
    var response = await radarrApi.getSystemApi().apiV3SystemStatusGet();

    if (response.statusCode != 200) {
      throw Exception(
        'Radarr API returned an error: ${response.statusMessage}',
      );
    } else if (response.data!.appName != 'Radarr') {
      throw Exception(
        'Invalid Radarr API App name response: ${response.data!.appName}',
      );
    }
  }

  Future<void> configureSonarr(String url, String apiKey) async {
    final normalizedUrl = url.endsWith('/') ? url : '$url/';

    var hiveService = _ref.read(hiveProvider);
    await hiveService.saveSonarrCredentials(
      SonarrCredentials(sonarrUrl: normalizedUrl, sonarrApi: apiKey),
    );
    _ref.invalidate(enabledNotifierProvider);
  }

  Future<void> configureRadarr(String url, String apiKey) async {
    final normalizedUrl = url.endsWith('/') ? url : '$url/';

    var hiveService = _ref.read(hiveProvider);
    await hiveService.saveRadarrCredentials(
      RadarrCredentials(radarrUrl: normalizedUrl, radarrApi: apiKey),
    );
    _ref.invalidate(enabledNotifierProvider);
  }
}

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService(ref);
});
