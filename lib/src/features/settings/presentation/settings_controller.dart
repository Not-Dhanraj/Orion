import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/app_storage_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/features/settings/application/settings_service.dart';
import 'package:client/src/features/settings/domain/settings_data.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsController extends Notifier<SettingsData> {
  late SettingsService _settingsService;
  late AppStorageService _storageService;

  @override
  SettingsData build() {
    _settingsService = ref.watch(settingsServiceProvider);
    _storageService = ref.watch(appStorageProvider);
    final radarrCredentials = _storageService.getRadarrCredentials();
    final sonarrCredentials = _storageService.getSonarrCredentials();

    return SettingsData(
      radarrCredentials: radarrCredentials,
      sonarrCredentials: sonarrCredentials,
    );
  }

  Future<void> validateAndUpdateSonarrCredentials(
    String url,
    String apiKey,
  ) async {
    try {
      await _settingsService.validateAndSaveSonarrCredentials(url, apiKey);
      final normalizedUrl = url.toNormalizedUrl();
      final credentials = SonarrCredentials(
        sonarrUrl: normalizedUrl,
        sonarrApi: apiKey,
      );
      state = state.copyWith(sonarrCredentials: credentials);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> validateAndUpdateRadarrCredentials(
    String url,
    String apiKey,
  ) async {
    try {
      await _settingsService.validateAndSaveRadarrCredentials(url, apiKey);
      final normalizedUrl = url.toNormalizedUrl();
      final credentials = RadarrCredentials(
        radarrUrl: normalizedUrl,
        radarrApi: apiKey,
      );
      state = state.copyWith(radarrCredentials: credentials);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteRadarrService() async {
    await _storageService.deleteRadarrCredentials();
    ref.invalidate(enabledNotifierProvider);

    state = state.copyWith(radarrCredentials: null);
  }

  Future<void> deleteSonarrService() async {
    await _storageService.deleteSonarrCredentials();
    ref.invalidate(enabledNotifierProvider);

    state = state.copyWith(sonarrCredentials: null);
  }
}

final settingsController = NotifierProvider<SettingsController, SettingsData>(
  SettingsController.new,
);
