class AuthState {
  final bool isLoadingSonarr;
  final bool isLoadingRadarr;
  final bool sonarrConfigured;
  final bool radarrConfigured;
  final String? sonarrError;
  final String? radarrError;

  AuthState({
    this.isLoadingSonarr = false,
    this.isLoadingRadarr = false,
    this.sonarrConfigured = false,
    this.radarrConfigured = false,
    this.sonarrError,
    this.radarrError,
  });

  AuthState copyWith({
    bool? isLoadingSonarr,
    bool? isLoadingRadarr,
    bool? sonarrConfigured,
    bool? radarrConfigured,
    String? sonarrError,
    String? radarrError,
    bool clearSonarrError = false,
    bool clearRadarrError = false,
  }) {
    return AuthState(
      isLoadingSonarr: isLoadingSonarr ?? this.isLoadingSonarr,
      isLoadingRadarr: isLoadingRadarr ?? this.isLoadingRadarr,
      sonarrConfigured: sonarrConfigured ?? this.sonarrConfigured,
      radarrConfigured: radarrConfigured ?? this.radarrConfigured,
      sonarrError: clearSonarrError ? null : sonarrError ?? this.sonarrError,
      radarrError: clearRadarrError ? null : radarrError ?? this.radarrError,
    );
  }
}
