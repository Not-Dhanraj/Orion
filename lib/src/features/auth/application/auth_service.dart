import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/app_storage_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/exceptions/auth_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/jelly_api.dart';
import 'package:radarr_api/radarr_api.dart';
import 'package:sonarr_api/sonarr_api.dart';

class AuthService {
  final Ref _ref;
  final AppStorageService _storageService;
  AuthService(this._ref, this._storageService);

  Future<void> makeSonarrRequest(String url, String apiKey) async {
    if (url.isEmpty || apiKey.isEmpty) {
      throw AuthException('Sonarr URL or API key cannot be empty');
    }

    try {
      var sonarrApi = SonarrApi(basePathOverride: url);
      sonarrApi.setApiKey('X-Api-Key', apiKey);
      await Future.delayed(const Duration(seconds: 1));
      var response = await sonarrApi.getSystemApi().apiV3SystemStatusGet();

      if (response.statusCode != 200) {
        throw AuthException(
          'Sonarr API returned an error: ${response.statusMessage}',
          error: response.statusMessage,
        );
      }

      if (response.data == null) {
        throw AuthException('Sonarr API returned no data');
      }

      if (response.data!.appName != 'Sonarr') {
        throw AuthException(
          'Invalid Sonarr API App name response: ${response.data!.appName}',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) {
        rethrow;
      }
      throw AuthException(
        'Failed to connect to Sonarr',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> makeRadarrRequest(String url, String apiKey) async {
    if (url.isEmpty || apiKey.isEmpty) {
      throw AuthException('Radarr URL or API key cannot be empty');
    }

    try {
      var radarrApi = RadarrApi(basePathOverride: url);
      radarrApi.setApiKey('X-Api-Key', apiKey);
      await Future.delayed(const Duration(seconds: 1));
      var response = await radarrApi.getSystemApi().apiV3SystemStatusGet();

      if (response.statusCode != 200) {
        throw AuthException(
          'Radarr API returned an error: ${response.statusMessage}',
          error: response.statusMessage,
        );
      }

      if (response.data == null) {
        throw AuthException('Radarr API returned no data');
      }

      if (response.data!.appName != 'Radarr') {
        throw AuthException(
          'Invalid Radarr API App name response: ${response.data!.appName}',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) {
        rethrow;
      }
      throw AuthException(
        'Failed to connect to Radarr',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> configureSonarr(String url, String apiKey) async {
    final normalizedUrl = url.endsWith('/') ? url : '$url/';

    try {
      await _storageService.saveSonarrCredentials(
        SonarrCredentials(sonarrUrl: normalizedUrl, sonarrApi: apiKey),
      );
      _ref.invalidate(enabledNotifierProvider);
    } catch (e, stackTrace) {
      throw AuthException(
        'Failed to save Sonarr configuration',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> configureRadarr(String url, String apiKey) async {
    final normalizedUrl = url.endsWith('/') ? url : '$url/';

    try {
      await _storageService.saveRadarrCredentials(
        RadarrCredentials(radarrUrl: normalizedUrl, radarrApi: apiKey),
      );
      _ref.invalidate(enabledNotifierProvider);
    } catch (e, stackTrace) {
      throw AuthException(
        'Failed to save Radarr configuration',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> validateAndConfigureService(
    String url,
    String apiKey,
    ServiceType serviceType,
  ) async {
    if (serviceType == ServiceType.sonarr) {
      await makeSonarrRequest(url, apiKey);
      await configureSonarr(url, apiKey);
    } else {
      await makeRadarrRequest(url, apiKey);
      await configureRadarr(url, apiKey);
    }
  }

  Future<void> validateAndConfigureJellyfin(String url, String username, String password) async {
    if (url.isEmpty || username.isEmpty) {
      throw AuthException('Jellyfin URL and username cannot be empty');
    }

    final normalizedUrl = url.endsWith('/') ? url : '$url/';

    try {
      var jellyApi = JellyApi(basePathOverride: normalizedUrl);
      final authHeader = 'MediaBrowser Client="Orion", Device="Flutter", DeviceId="orion-app", Version="1.0.0"';
      
      final response = await jellyApi.getUserApi().authenticateUserByName(
        authenticateUserByName: AuthenticateUserByName(username: username, pw: password),
        headers: {'X-Emby-Authorization': authHeader},
      );

      if (response.statusCode != 200) {
        throw AuthException('Jellyfin API returned an error: ${response.statusMessage}');
      }

      final data = response.data;
      if (data == null || data.accessToken == null || data.user?.id == null) {
        throw AuthException('Jellyfin login failed: No access token or user ID returned');
      }

      await _storageService.saveJellyfinCredentials(
        JellyfinCredentials(
          jellyfinUrl: normalizedUrl,
          username: username,
          accessToken: data.accessToken!,
          userId: data.user!.id!,
        ),
      );
      _ref.invalidate(enabledNotifierProvider);
    } catch (e, stackTrace) {
      if (e is AuthException) {
        rethrow;
      }
      throw AuthException(
        'Failed to connect to Jellyfin. Please check your credentials and server URL.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

enum ServiceType { sonarr, radarr, jellyfin }

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService(ref, ref.watch(appStorageProvider));
});
