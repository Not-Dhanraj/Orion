import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/features/settings/application/settings_service.dart';
import 'package:client/src/features/settings/domain/settings_data.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

class SettingsController extends Notifier<SettingsData> {
  late SettingsService _settingsService;
  late HiveService _hiveService;

  @override
  SettingsData build() {
    _settingsService = ref.watch(settingsServiceProvider);
    _hiveService = ref.watch(hiveProvider);
    final radarrCredentials = _hiveService.getRadarrCredentials();
    final sonarrCredentials = _hiveService.getSonarrCredentials();

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

final settingsController = NotifierProvider<SettingsController, SettingsData>(
  SettingsController.new,
);
