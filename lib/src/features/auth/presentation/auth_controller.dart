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
    state = state.copyWith(isLoadingSonarr: true, clearSonarrError: true);
    if (context.mounted) {
      try {
        final authService = ref.read(authServiceProvider);
        await authService.validateAndConfigureService(
          url,
          apiKey,
          ServiceType.sonarr,
        );

        state = state.copyWith(isLoadingSonarr: false, sonarrConfigured: true);

        await Future.delayed(const Duration(milliseconds: 200));

        if (context.mounted) {
          showSuccessSnackbar(
            context,
            'Sonarr configured successfully, please add other details or go to home',
          );
        }
      } catch (e) {
        final errorMessage = e is AuthException
            ? e.message
            : 'An unexpected error occurred: ${e.toString()}';

        state = state.copyWith(
          isLoadingSonarr: false,
          sonarrError: errorMessage,
        );
        if (context.mounted) {
          showErrorSnackbar(context, errorMessage);
        }
      }
    }
  }

  Future<void> updateRadarr(
    String url,
    String apiKey,
    BuildContext context,
  ) async {
    state = state.copyWith(isLoadingRadarr: true, clearRadarrError: true);

    try {
      final authService = ref.read(authServiceProvider);
      await authService.validateAndConfigureService(
        url,
        apiKey,
        ServiceType.radarr,
      );

      state = state.copyWith(isLoadingRadarr: false, radarrConfigured: true);

      await Future.delayed(const Duration(milliseconds: 200));
      if (context.mounted) {
        showSuccessSnackbar(
          context,
          'Radarr configured successfully, please add other details or go to home',
        );
      }
    } catch (e) {
      final errorMessage = e is AuthException
          ? e.message
          : 'An unexpected error occurred: ${e.toString()}';

      state = state.copyWith(isLoadingRadarr: false, radarrError: errorMessage);
      if (context.mounted) showErrorSnackbar(context, errorMessage);
    }
  }

  String? urlValidatorCheck(String? value) {
    return UrlValidator.validate(value);
  }

  /// Helper method to display error messages in a snackbar
  void showErrorSnackbar(BuildContext context, String message) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $message'), backgroundColor: Colors.red),
      );
    }
  }

  /// Helper method to display success messages in a snackbar
  void showSuccessSnackbar(BuildContext context, String message) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), backgroundColor: Colors.green),
      );
    }
  }
}

final authControllerProvider = NotifierProvider<AuthController, AuthState>(
  () => AuthController(),
);
