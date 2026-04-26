import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/app_storage_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/core/exceptions/auth_exception.dart';
import 'package:client/src/core/data/server_validation_repository.dart';
import 'package:client/src/core/application/api_provider.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthService {
  final Ref _ref;
  final AppStorageService _storageService;
  final ServerValidationRepository _validationRepository;

  AuthService(this._ref, this._storageService, this._validationRepository);

  Future<void> _configureSonarr(String url, String apiKey) async {
    final normalizedUrl = url.toNormalizedUrl();

    try {
      await _storageService.saveSonarrCredentials(
        SonarrCredentials(sonarrUrl: normalizedUrl, sonarrApi: apiKey),
      );
      _ref.invalidate(enabledNotifierProvider);
      _ref.invalidate(seriesApiProvider);
    } catch (e, stackTrace) {
      throw AuthException(
        'Failed to save Sonarr configuration',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> _configureRadarr(String url, String apiKey) async {
    final normalizedUrl = url.toNormalizedUrl();

    try {
      await _storageService.saveRadarrCredentials(
        RadarrCredentials(radarrUrl: normalizedUrl, radarrApi: apiKey),
      );
      _ref.invalidate(enabledNotifierProvider);
      _ref.invalidate(moviesApiProvider);
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
    if (url.isEmpty || apiKey.isEmpty) {
      throw AuthException('${serviceType.name} URL or API key cannot be empty');
    }

    try {
      if (serviceType == ServiceType.sonarr) {
        final data = await _validationRepository.validateSonarr(url, apiKey);
        if (data == null) throw AuthException('Sonarr API returned no data');
        if (data.appName != 'Sonarr') {
          throw AuthException(
            'Invalid Sonarr API App name response: ${data.appName}',
          );
        }
        await _configureSonarr(url, apiKey);
      } else {
        final data = await _validationRepository.validateRadarr(url, apiKey);
        if (data == null) throw AuthException('Radarr API returned no data');
        if (data.appName != 'Radarr') {
          throw AuthException(
            'Invalid Radarr API App name response: ${data.appName}',
          );
        }
        await _configureRadarr(url, apiKey);
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      throw AuthException(
        'Failed to connect to ${serviceType.name}',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> validateAndConfigureJellyfin(
    String url,
    String username,
    String password,
  ) async {
    if (url.isEmpty || username.isEmpty) {
      throw AuthException('Jellyfin URL and username cannot be empty');
    }

    final normalizedUrl = url.toNormalizedUrl();
    final deviceId = _storageService.deviceId;

    try {
      final data = await _validationRepository.authenticateJellyfin(
        normalizedUrl,
        username,
        password,
        deviceId,
      );

      if (data == null || data.accessToken == null || data.user?.id == null) {
        throw AuthException(
          'Jellyfin login failed: No access token or user ID returned',
        );
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
      _ref.invalidate(jellyfinApiProvider);
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
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
  return AuthService(
    ref,
    ref.watch(appStorageProvider),
    ref.watch(serverValidationRepositoryProvider),
  );
});
