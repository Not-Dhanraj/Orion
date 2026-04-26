import 'package:client/src/core/application/app_storage_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/core/exceptions/repository_exception.dart';
import 'package:client/src/core/data/server_validation_repository.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsService {
  final ServerValidationRepository _validator;
  final AppStorageService _storageService;

  SettingsService(this._validator, this._storageService);

  Future<void> validateAndSaveSonarrCredentials(
    String url,
    String apiKey,
  ) async {
    final normalizedUrl = url.toNormalizedUrl();

    try {
      await _validator.validateSonarr(normalizedUrl, apiKey);
    } catch (e, st) {
      throw RepositoryException(
        'Failed to validate Sonarr connection',
        error: e,
        stackTrace: st,
      );
    }

    try {
      await _storageService.saveSonarrCredentials(
        SonarrCredentials(sonarrUrl: normalizedUrl, sonarrApi: apiKey),
      );
    } catch (e, st) {
      throw RepositoryException(
        'Sonarr credentials validated but could not be saved',
        error: e,
        stackTrace: st,
      );
    }
  }

  Future<void> validateAndSaveRadarrCredentials(
    String url,
    String apiKey,
  ) async {
    final normalizedUrl = url.toNormalizedUrl();

    try {
      await _validator.validateRadarr(normalizedUrl, apiKey);
    } catch (e, st) {
      throw RepositoryException(
        'Failed to validate Radarr connection',
        error: e,
        stackTrace: st,
      );
    }

    try {
      await _storageService.saveRadarrCredentials(
        RadarrCredentials(radarrUrl: normalizedUrl, radarrApi: apiKey),
      );
    } catch (e, st) {
      throw RepositoryException(
        'Radarr credentials validated but could not be saved',
        error: e,
        stackTrace: st,
      );
    }
  }

  Future<JellyfinCredentials> validateAndSaveJellyfinCredentials(
    String url,
    String username,
    String password,
  ) async {
    final normalizedUrl = url.toNormalizedUrl();
    try {
      final deviceId = _storageService.deviceId;
      final data = await _validator.authenticateJellyfin(
        normalizedUrl,
        username,
        password,
        deviceId,
      );

      if (data == null || data.accessToken == null || data.user?.id == null) {
        throw Exception('No access token returned');
      }

      final creds = JellyfinCredentials(
        jellyfinUrl: normalizedUrl,
        username: username,
        accessToken: data.accessToken!,
        userId: data.user!.id!,
      );
      await _storageService.saveJellyfinCredentials(creds);
      return creds;
    } catch (e, st) {
      throw RepositoryException(
        'Failed to validate Jellyfin connection',
        error: e,
        stackTrace: st,
      );
    }
  }
}

final settingsServiceProvider = Provider<SettingsService>(
  (ref) => SettingsService(
    ref.watch(serverValidationRepositoryProvider),
    ref.watch(appStorageProvider),
  ),
);
