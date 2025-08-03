import 'package:client/src/features/auth/application/auth_service.dart';
import 'package:client/src/features/auth/domain/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthController extends Notifier<AuthState> {
  @override
  AuthState build() {
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

    try {
      var authService = ref.read(authServiceProvider);
      await authService.makeSonarrRequest(url, apiKey);
      await authService.configureSonarr(url, apiKey);
    } catch (e) {
      state = state.copyWith(sonarrError: e.toString(), isLoadingSonarr: false);
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
    state = state.copyWith(isLoadingSonarr: false, sonarrConfigured: true);
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

    try {
      var authService = ref.read(authServiceProvider);
      await authService.makeRadarrRequest(url, apiKey);
      await authService.configureRadarr(url, apiKey);
    } catch (e) {
      state = state.copyWith(radarrError: e.toString(), isLoadingRadarr: false);
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

    state = state.copyWith(isLoadingRadarr: false, radarrConfigured: true);
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
}

final authControllerProvider = NotifierProvider<AuthController, AuthState>(
  () => AuthController(),
);
