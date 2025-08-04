import 'package:client/src/exceptions/auth_exception.dart';
import 'package:client/src/features/auth/application/auth_service.dart';
import 'package:client/src/features/auth/domain/auth_state.dart';
import 'package:client/src/shared/utils/url_validator.dart';
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
    state = state.copyWith(isLoadingSonarr: true);

    try {
      final authService = ref.read(authServiceProvider);
      await authService.makeSonarrRequest(url, apiKey);
      await authService.configureSonarr(url, apiKey);
    } catch (e) {
      final errorMessage = e is AuthException
          ? e.message
          : 'An unexpected error occurred: ${e.toString()}';

      state = state.copyWith(isLoadingSonarr: false);

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $errorMessage'),
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
        const SnackBar(
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
    state = state.copyWith(isLoadingRadarr: true);

    try {
      final authService = ref.read(authServiceProvider);
      await authService.makeRadarrRequest(url, apiKey);
      await authService.configureRadarr(url, apiKey);
    } catch (e) {
      final errorMessage = e is AuthException
          ? e.message
          : 'An unexpected error occurred: ${e.toString()}';

      state = state.copyWith(isLoadingRadarr: false);

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $errorMessage'),
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
        const SnackBar(
          content: Text(
            'Radarr configured successfully, please add other details or go to home',
          ),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  //TODO move to service
  String? urlValidatorCheck(String? value) {
    return UrlValidator.validate(value);
  }
}

final authControllerProvider = NotifierProvider<AuthController, AuthState>(
  () => AuthController(),
);
