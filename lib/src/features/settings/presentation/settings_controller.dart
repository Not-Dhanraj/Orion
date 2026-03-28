import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/features/settings/application/settings_service.dart';
import 'package:client/src/features/settings/domain/settings_data.dart';
import 'package:client/src/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

class SettingsController extends Notifier<SettingsData> {
  @override
  SettingsData build() {
    final hiveService = ref.watch(hiveProvider);
    final radarrCredentials = hiveService.getRadarrCredentials();
    final sonarrCredentials = hiveService.getSonarrCredentials();

    return SettingsData(
      radarrCredentials: radarrCredentials,
      sonarrCredentials: sonarrCredentials,
    );
  }

  Future<void> updateRadarrCredentials(String url, String apiKey) async {
    try {
      final hiveService = ref.read(hiveProvider);
      final normalizedUrl = url.toNormalizedUrl();
      final credentials = RadarrCredentials(
        radarrUrl: normalizedUrl,
        radarrApi: apiKey,
      );

      await hiveService.saveRadarrCredentials(credentials);
      state = state.copyWith(radarrCredentials: credentials);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> validateAndUpdateSonarrCredentials(
    String url,
    String apiKey,
  ) async {
    try {
      final service = ref.read(settingsServiceProvider);
      await service.validateAndSaveSonarrCredentials(url, apiKey);
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
      final service = ref.read(settingsServiceProvider);
      await service.validateAndSaveRadarrCredentials(url, apiKey);
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

  Future<void> updateSonarrCredentials(String url, String apiKey) async {
    try {
      final hiveService = ref.read(hiveProvider);
      final normalizedUrl = url.toNormalizedUrl();
      final credentials = SonarrCredentials(
        sonarrUrl: normalizedUrl,
        sonarrApi: apiKey,
      );

      await hiveService.saveSonarrCredentials(credentials);
      state = state.copyWith(sonarrCredentials: credentials);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteRadarrService() async {
    final appConst = AppConst();

    if (!Hive.isBoxOpen(appConst.credentialsBox)) {
      await Hive.openBox(appConst.credentialsBox);
    }
    final credentialsBox = Hive.box(appConst.credentialsBox);
    await credentialsBox.delete(appConst.radarrCredKey);

    state = state.copyWith(radarrCredentials: null);
  }

  Future<void> deleteSonarrService() async {
    final appConst = AppConst();

    if (!Hive.isBoxOpen(appConst.credentialsBox)) {
      await Hive.openBox(appConst.credentialsBox);
    }
    final credentialsBox = Hive.box(appConst.credentialsBox);
    await credentialsBox.delete(appConst.sonarrCredKey);

    state = state.copyWith(sonarrCredentials: null);
  }
}

final settingsControllerProvider =
    NotifierProvider<SettingsController, SettingsData>(
      () => SettingsController(),
    );
