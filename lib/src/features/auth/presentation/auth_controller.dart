import 'package:client/src/exceptions/auth_exception.dart';
import 'package:client/src/features/auth/application/auth_service.dart';
import 'package:client/src/features/auth/domain/auth_state.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthController extends Notifier<AuthState> {
  late AuthService _authService;

  @override
  AuthState build() {
    _authService = ref.watch(authServiceProvider);
    return AuthState(sonarrConfigured: false, radarrConfigured: false);
  }

  void setStep(WelcomeStep step) {
    state = state.copyWith(currentStep: step);
  }

  void selectService(ServiceType type) {
    state = state.copyWith(
      selectedServiceType: type,
      currentStep: WelcomeStep.form,
    );
  }

  Future<void> updateSonarr(
    String url,
    String apiKey,
    BuildContext context,
  ) async {
    state = state.copyWith(isLoadingSonarr: true, clearSonarrError: true);

    try {
      await _authService.validateAndConfigureService(
        url,
        apiKey,
        ServiceType.sonarr,
      );

      state = state.copyWith(
        isLoadingSonarr: false,
        sonarrConfigured: true,
        currentStep: WelcomeStep.selector,
      );

      await Future.delayed(const Duration(milliseconds: 500));

      if (context.mounted) {
        showSuccessSnackbar(
          context,
          'Sonarr linked successfully. Initializing system...',
        );
      }
    } catch (e) {
      final errorMessage = e is AuthException
          ? e.message
          : 'An unexpected error occurred: ${e.toString()}';

      state = state.copyWith(isLoadingSonarr: false, sonarrError: errorMessage);
      if (context.mounted) {
        showErrorSnackbar(context, errorMessage);
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
      await _authService.validateAndConfigureService(
        url,
        apiKey,
        ServiceType.radarr,
      );

      state = state.copyWith(
        isLoadingRadarr: false,
        radarrConfigured: true,
        currentStep: WelcomeStep.selector,
      );

      await Future.delayed(const Duration(milliseconds: 500));
      if (context.mounted) {
        showSuccessSnackbar(
          context,
          'Radarr linked successfully. Initializing system...',
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

  void showErrorSnackbar(BuildContext context, String message) {
    if (context.mounted) {
      CustomSnackbar.show(
        context,
        message: message,
        type: CustomSnackbarType.error,
      );
    }
  }

  void showSuccessSnackbar(BuildContext context, String message) {
    if (context.mounted) {
      CustomSnackbar.show(
        context,
        message: message,
        type: CustomSnackbarType.success,
      );
    }
  }
}

final authController = NotifierProvider<AuthController, AuthState>(
  AuthController.new,
);
