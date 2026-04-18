class Enabled {
  final bool sonarr;
  final bool radarr;
  final bool jellyfin;

  Enabled({
    required this.sonarr,
    required this.radarr,
    required this.jellyfin,
  });

  Enabled copyWith({bool? sonarr, bool? radarr, bool? jellyfin}) {
    return Enabled(
      sonarr: sonarr ?? this.sonarr,
      radarr: radarr ?? this.radarr,
      jellyfin: jellyfin ?? this.jellyfin,
    );
  }
}
