class Enabled {
  final bool sonarr;
  final bool radarr;

  Enabled({required this.sonarr, required this.radarr});

  Enabled copyWith({bool? sonarr, bool? radarr}) {
    return Enabled(
      sonarr: sonarr ?? this.sonarr,
      radarr: radarr ?? this.radarr,
    );
  }
}
