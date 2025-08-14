import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/features/settings/domain/service_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

// Theme settings provider - switched to StateNotifierProvider for better persistence
final themeSettingsProvider =
    StateNotifierProvider<ThemeSettingsNotifier, ThemeMode>(
      (ref) => ThemeSettingsNotifier(),
    );

class ThemeSettingsNotifier extends StateNotifier<ThemeMode> {
  static const String _themeBoxName = 'theme_settings';
  static const String _themeModeKey = 'theme_mode';

  // Initialize with system theme by default
  ThemeSettingsNotifier() : super(ThemeMode.system) {
    // Try to load theme immediately if Hive is already initialized
    _tryLoadTheme();
  }

  // Try to load theme without async operations
  void _tryLoadTheme() {
    try {
      if (Hive.isBoxOpen(_themeBoxName)) {
        state = _loadThemeMode();
      }
    } catch (e) {
      debugPrint('Error in quick theme load: $e');
    }
  }

  ThemeMode _loadThemeMode() {
    if (!Hive.isBoxOpen(_themeBoxName)) {
      return ThemeMode.system;
    }
    final box = Hive.box(_themeBoxName);
    final themeValue = box.get(
      _themeModeKey,
      defaultValue: ThemeMode.system.index,
    );
    return ThemeMode.values[themeValue];
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final box = Hive.box(_themeBoxName);
    await box.put(_themeModeKey, mode.index);
    state = mode;
  }
}

// Service credentials controllers
final serviceSettingsProvider =
    NotifierProvider<ServiceSettingsNotifier, ServiceSettings>(
      () => ServiceSettingsNotifier(),
    );

class ServiceSettingsNotifier extends Notifier<ServiceSettings> {
  @override
  ServiceSettings build() {
    final hiveService = ref.watch(hiveProvider);
    final radarrCredentials = hiveService.getRadarrCredentials();
    final sonarrCredentials = hiveService.getSonarrCredentials();

    return ServiceSettings(
      radarrCredentials: radarrCredentials,
      sonarrCredentials: sonarrCredentials,
    );
  }

  Future<void> updateRadarrCredentials(String url, String apiKey) async {
    final hiveService = ref.read(hiveProvider);
    final normalizedUrl = _normalizeUrl(url);
    final credentials = RadarrCredentials(
      radarrUrl: normalizedUrl,
      radarrApi: apiKey,
    );
    await hiveService.saveRadarrCredentials(credentials);

    state = state.copyWith(radarrCredentials: credentials);
  }

  Future<void> updateSonarrCredentials(String url, String apiKey) async {
    final hiveService = ref.read(hiveProvider);
    final normalizedUrl = _normalizeUrl(url);
    final credentials = SonarrCredentials(
      sonarrUrl: normalizedUrl,
      sonarrApi: apiKey,
    );
    await hiveService.saveSonarrCredentials(credentials);

    state = state.copyWith(sonarrCredentials: credentials);
  }

  Future<void> deleteRadarrService() async {
    try {
      final appConst = AppConst();

      if (!Hive.isBoxOpen(appConst.credentialsBox)) {
        await Hive.openBox(appConst.credentialsBox);
      }
      final credentialsBox = Hive.box(appConst.credentialsBox);
      await credentialsBox.delete(appConst.radarrCredKey);

      state = state.copyWith(radarrCredentials: null);
    } catch (e) {
      debugPrint('Error deleting Radarr service: $e');
    }
  }

  Future<void> deleteSonarrService() async {
    try {
      final appConst = AppConst();

      if (!Hive.isBoxOpen(appConst.credentialsBox)) {
        await Hive.openBox(appConst.credentialsBox);
      }
      final credentialsBox = Hive.box(appConst.credentialsBox);
      await credentialsBox.delete(appConst.sonarrCredKey);

      state = state.copyWith(sonarrCredentials: null);
    } catch (e) {
      debugPrint('Error deleting Sonarr service: $e');
    }
  }

  String _normalizeUrl(String url) {
    var normalizedUrl = url.trim();
    if (!normalizedUrl.startsWith('http')) {
      normalizedUrl = 'http://$normalizedUrl';
    }
    if (normalizedUrl.endsWith('/')) {
      normalizedUrl = normalizedUrl.substring(0, normalizedUrl.length - 1);
    }
    return normalizedUrl;
  }
}
