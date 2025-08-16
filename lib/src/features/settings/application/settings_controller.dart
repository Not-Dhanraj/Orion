import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/features/settings/domain/service_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

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

final serviceSettingsProvider =
    NotifierProvider<ServiceSettingsNotifier, ServiceSettings>(
      () => ServiceSettingsNotifier(),
    );
