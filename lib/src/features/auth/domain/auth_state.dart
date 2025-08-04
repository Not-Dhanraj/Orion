class AuthState {
  final bool isLoadingSonarr;
  final bool isLoadingRadarr;
  final bool sonarrConfigured;
  final bool radarrConfigured;

  AuthState({
    this.isLoadingSonarr = false,
    this.isLoadingRadarr = false,
    this.sonarrConfigured = false,
    this.radarrConfigured = false,
  });

  AuthState copyWith({
    bool? isLoadingSonarr,
    bool? isLoadingRadarr,
    bool? sonarrConfigured,
    bool? radarrConfigured,
  }) {
    return AuthState(
      isLoadingSonarr: isLoadingSonarr ?? this.isLoadingSonarr,
      isLoadingRadarr: isLoadingRadarr ?? this.isLoadingRadarr,
      sonarrConfigured: sonarrConfigured ?? this.sonarrConfigured,
      radarrConfigured: radarrConfigured ?? this.radarrConfigured,
    );
  }
}
