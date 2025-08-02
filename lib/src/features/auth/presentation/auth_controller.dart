import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:client/src/features/auth/domain/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'package:radarr/radarr.dart';

class AuthController extends Notifier<AuthState> {
  late final HiveService _hiveService;

  @override
  AuthState build() {
    _hiveService = ref.read(hiveProvider);

    final state = AuthState(sonarrConfigured: false, radarrConfigured: false);

    return state;
  }

  Future<void> updateSonarr(
    String url,
    String apiKey,
    BuildContext context,
  ) async {
    state = state.copyWith(
      isLoadingSonarr: true,
      sonarrError: '',
      clearSonarrError: true,
    );
    var sonarrApi = Sonarr(basePathOverride: url);
    sonarrApi.setApiKey('X-Api-Key', apiKey);
    try {
      await sonarrApi.getSystemApi().apiV3SystemStatusGet();
    } catch (e) {
      state = state.copyWith(sonarrError: e.toString());
      state = state.copyWith(isLoadingSonarr: false);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${state.sonarrError}'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    await _configureSonarr(url, apiKey);

    await Future.delayed(const Duration(milliseconds: 200));
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Sonarr configured successfully, please add other details or go to home',
          ),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  Future<void> updateRadarr(
    String url,
    String apiKey,
    BuildContext context,
  ) async {
    state = state.copyWith(
      isLoadingRadarr: true,
      radarrError: '',
      clearRadarrError: true,
    );
    var radarrApi = Radarr(basePathOverride: url);
    radarrApi.setApiKey('X-Api-Key', apiKey);
    try {
      await radarrApi.getSystemApi().apiV3SystemStatusGet();
    } catch (e) {
      state = state.copyWith(radarrError: e.toString());
      state = state.copyWith(isLoadingRadarr: false);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${state.radarrError}'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    await _configureRadarr(url, apiKey);

    await Future.delayed(const Duration(milliseconds: 200));
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Radarr configured successfully, please add other details or go to home',
          ),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  Future<void> _configureSonarr(String url, String apiKey) async {
    if (url.isEmpty || apiKey.isEmpty) {
      state = state.copyWith(sonarrError: 'URL and API key are required');
      return;
    }

    final normalizedUrl = url.endsWith('/') ? url : '$url/';

    state = state.copyWith(isLoadingSonarr: true, clearSonarrError: true);
    await Future.delayed(const Duration(seconds: 1));
    try {
      await _hiveService.saveSonarrCredentials(
        SonarrCredentials(sonarrUrl: normalizedUrl, sonarrApi: apiKey),
      );
      ref.invalidate(enabledNotifierProvider);
      state = state.copyWith(isLoadingSonarr: false, sonarrConfigured: true);
    } catch (e) {
      state = state.copyWith(
        isLoadingSonarr: false,
        sonarrError: 'Failed to save Sonarr credentials: ${e.toString()}',
      );
    }
  }

  Future<void> _configureRadarr(String url, String apiKey) async {
    if (url.isEmpty || apiKey.isEmpty) {
      state = state.copyWith(radarrError: 'URL and API key are required');
      return;
    }

    final normalizedUrl = url.endsWith('/') ? url : '$url/';

    state = state.copyWith(isLoadingRadarr: true, clearRadarrError: true);
    await Future.delayed(const Duration(seconds: 1));

    try {
      await _hiveService.saveRadarrCredentials(
        RadarrCredentials(radarrUrl: normalizedUrl, radarrApi: apiKey),
      );
      ref.invalidate(enabledNotifierProvider);
      state = state.copyWith(isLoadingRadarr: false, radarrConfigured: true);
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
