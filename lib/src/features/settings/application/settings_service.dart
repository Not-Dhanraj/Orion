import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/settings/data/settings_validation_repository.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsService {
  final Ref _ref;
  SettingsService(this._ref);

  Future<void> validateAndSaveSonarrCredentials(
    String url,
    String apiKey,
  ) async {
    final normalizedUrl = url.toNormalizedUrl();

    try {
      final validator = _ref.read(settingsValidationRepositoryProvider);
      await validator.validateSonarr(normalizedUrl, apiKey);
    } catch (e, st) {
      throw RepositoryException(
        'Failed to validate Sonarr connection',
        error: e,
        stackTrace: st,
      );
    }

    try {
      final hive = _ref.read(hiveProvider);
      await hive.saveSonarrCredentials(
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
      final validator = _ref.read(settingsValidationRepositoryProvider);
      await validator.validateRadarr(normalizedUrl, apiKey);
    } catch (e, st) {
      throw RepositoryException(
        'Failed to validate Radarr connection',
        error: e,
        stackTrace: st,
      );
    }

    try {
      final hive = _ref.read(hiveProvider);
      await hive.saveRadarrCredentials(
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
}

final settingsServiceProvider = Provider<SettingsService>(
  (ref) => SettingsService(ref),
);
