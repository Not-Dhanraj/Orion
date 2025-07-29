class Credentials {
  final String? sonarrUrl;
  final String? sonarrApi;
  final String? radarrUrl;
  final String? radarrApi;

  Credentials({this.sonarrUrl, this.sonarrApi, this.radarrUrl, this.radarrApi});

  Credentials copyWith({
    String? sonarrUrl,
    String? sonarrApi,
    String? radarrUrl,
    String? radarrApi,
  }) {
    return Credentials(
      sonarrUrl: sonarrUrl ?? this.sonarrUrl,
      sonarrApi: sonarrApi ?? this.sonarrApi,
      radarrUrl: radarrUrl ?? this.radarrUrl,
      radarrApi: radarrApi ?? this.radarrApi,
    );
  }
}
