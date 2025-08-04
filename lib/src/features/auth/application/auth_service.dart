import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/exceptions/auth_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';
import 'package:sonarr/sonarr.dart';

class AuthService {
  AuthService(this._ref);
  final Ref _ref;

  Future<void> makeSonarrRequest(String url, String apiKey) async {
    if (url.isEmpty || apiKey.isEmpty) {
      throw AuthException('Sonarr URL or API key cannot be empty');
    }

    try {
      var sonarrApi = Sonarr(basePathOverride: url);
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
      var radarrApi = Radarr(basePathOverride: url);
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
    try {
      final normalizedUrl = url.endsWith('/') ? url : '$url/';

      var hiveService = _ref.read(hiveProvider);
      await hiveService.saveSonarrCredentials(
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
    try {
      final normalizedUrl = url.endsWith('/') ? url : '$url/';

      var hiveService = _ref.read(hiveProvider);
      await hiveService.saveRadarrCredentials(
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
}

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService(ref);
});
