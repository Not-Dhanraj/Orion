import 'package:client/src/features/auth/application/auth_service.dart';

import 'package:client/src/features/auth/domain/welcome_step.dart';

class AuthState {
  final bool isLoadingSonarr;
  final bool isLoadingRadarr;
  final bool sonarrConfigured;
  final bool radarrConfigured;
  final String sonarrError;
  final String radarrError;
  final WelcomeStep currentStep;
  final ServiceType? selectedServiceType;

  AuthState({
    this.isLoadingSonarr = false,
    this.isLoadingRadarr = false,
    this.sonarrConfigured = false,
    this.radarrConfigured = false,
    this.sonarrError = '',
    this.radarrError = '',
    this.currentStep = WelcomeStep.brand,
    this.selectedServiceType,
  });

  AuthState copyWith({
    bool? isLoadingSonarr,
    bool? isLoadingRadarr,
    bool? sonarrConfigured,
    bool? radarrConfigured,
    String? sonarrError,
    String? radarrError,
    WelcomeStep? currentStep,
    ServiceType? selectedServiceType,
    bool clearSonarrError = false,
    bool clearRadarrError = false,
    bool clearSelectedService = false,
  }) {
    return AuthState(
      isLoadingSonarr: isLoadingSonarr ?? this.isLoadingSonarr,
      isLoadingRadarr: isLoadingRadarr ?? this.isLoadingRadarr,
      sonarrConfigured: sonarrConfigured ?? this.sonarrConfigured,
      radarrConfigured: radarrConfigured ?? this.radarrConfigured,
      sonarrError: clearSonarrError ? '' : sonarrError ?? this.sonarrError,
      radarrError: clearRadarrError ? '' : radarrError ?? this.radarrError,
      currentStep: currentStep ?? this.currentStep,
      selectedServiceType: clearSelectedService
          ? null
          : selectedServiceType ?? this.selectedServiceType,
    );
  }
}
