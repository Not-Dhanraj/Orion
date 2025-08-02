import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/features/auth/domain/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

class AuthController extends Notifier<AuthState> {
  late final HiveService _hiveService;
  late final EnabledNotifier _enabledNotifier;

  @override
  AuthState build() {
    _hiveService = ref.read(hiveProvider);
    _enabledNotifier = ref.read(enabledNotifierProvider.notifier);

    final state = AuthState(sonarrConfigured: false, radarrConfigured: false);

    return state;
  }

  Future<void> configureSonarr(String url, String apiKey) async {
    if (url.isEmpty || apiKey.isEmpty) {
      state = state.copyWith(sonarrError: 'URL and API key are required');
      return;
    }

    final normalizedUrl = url.endsWith('/') ? url : '$url/';

    state = state.copyWith(isLoadingSonarr: true, clearSonarrError: true);

    try {
      await _hiveService.saveSonarrCredentials(
        SonarrCredentials(sonarrUrl: normalizedUrl, sonarrApi: apiKey),
      );

      state = state.copyWith(isLoadingSonarr: false, sonarrConfigured: true);

      _enabledNotifier.build();
    } catch (e) {
      state = state.copyWith(
        isLoadingSonarr: false,
        sonarrError: 'Failed to save Sonarr credentials: ${e.toString()}',
      );
    }
  }

  Future<void> configureRadarr(String url, String apiKey) async {
    if (url.isEmpty || apiKey.isEmpty) {
      state = state.copyWith(radarrError: 'URL and API key are required');
      return;
    }

    final normalizedUrl = url.endsWith('/') ? url : '$url/';

    state = state.copyWith(isLoadingRadarr: true, clearRadarrError: true);

    try {
      await _hiveService.saveRadarrCredentials(
        RadarrCredentials(radarrUrl: normalizedUrl, radarrApi: apiKey),
      );

      state = state.copyWith(isLoadingRadarr: false, radarrConfigured: true);

      _enabledNotifier.build();
    } catch (e) {
      state = state.copyWith(
        isLoadingRadarr: false,
        radarrError: 'Failed to save Radarr credentials: ${e.toString()}',
      );
    }
  }
}

final authControllerProvider = NotifierProvider<AuthController, AuthState>(
  () => AuthController(),
);
