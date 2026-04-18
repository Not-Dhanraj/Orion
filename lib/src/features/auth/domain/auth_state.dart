import 'package:client/src/features/auth/application/auth_service.dart';

import 'package:client/src/features/auth/domain/welcome_step.dart';

class AuthState {
  final bool isLoadingSonarr;
  final bool isLoadingRadarr;
  final bool isLoadingJellyfin;
  final bool sonarrConfigured;
  final bool radarrConfigured;
  final bool jellyfinConfigured;
  final String sonarrError;
  final String radarrError;
  final String jellyfinError;
  final WelcomeStep currentStep;
  final ServiceType? selectedServiceType;

  AuthState({
    this.isLoadingSonarr = false,
    this.isLoadingRadarr = false,
    this.isLoadingJellyfin = false,
    this.sonarrConfigured = false,
    this.radarrConfigured = false,
    this.jellyfinConfigured = false,
    this.sonarrError = '',
    this.radarrError = '',
    this.jellyfinError = '',
    this.currentStep = WelcomeStep.brand,
    this.selectedServiceType,
  });

  AuthState copyWith({
    bool? isLoadingSonarr,
    bool? isLoadingRadarr,
    bool? isLoadingJellyfin,
    bool? sonarrConfigured,
    bool? radarrConfigured,
    bool? jellyfinConfigured,
    String? sonarrError,
    String? radarrError,
    String? jellyfinError,
    WelcomeStep? currentStep,
    ServiceType? selectedServiceType,
    bool clearSonarrError = false,
    bool clearRadarrError = false,
    bool clearJellyfinError = false,
    bool clearSelectedService = false,
  }) {
    return AuthState(
      isLoadingSonarr: isLoadingSonarr ?? this.isLoadingSonarr,
      isLoadingRadarr: isLoadingRadarr ?? this.isLoadingRadarr,
      isLoadingJellyfin: isLoadingJellyfin ?? this.isLoadingJellyfin,
      sonarrConfigured: sonarrConfigured ?? this.sonarrConfigured,
      radarrConfigured: radarrConfigured ?? this.radarrConfigured,
      jellyfinConfigured: jellyfinConfigured ?? this.jellyfinConfigured,
      sonarrError: clearSonarrError ? '' : sonarrError ?? this.sonarrError,
      radarrError: clearRadarrError ? '' : radarrError ?? this.radarrError,
      jellyfinError: clearJellyfinError ? '' : jellyfinError ?? this.jellyfinError,
      currentStep: currentStep ?? this.currentStep,
      selectedServiceType: clearSelectedService
          ? null
          : selectedServiceType ?? this.selectedServiceType,
    );
  }
}
