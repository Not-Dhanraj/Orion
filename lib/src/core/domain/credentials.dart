class SonarrCredentials {
  final String sonarrUrl;

  final String sonarrApi;

  SonarrCredentials({required this.sonarrUrl, required this.sonarrApi});

  @override
  String toString() =>
      'SonarrCredentials(url: $sonarrUrl, api: ${sonarrApi.substring(0, 8)}...)';
}

class RadarrCredentials {
  final String radarrUrl;

  final String radarrApi;

  RadarrCredentials({required this.radarrUrl, required this.radarrApi});

  @override
  String toString() =>
      'RadarrCredentials(url: $radarrUrl, api: ${radarrApi.substring(0, 8)}...)';
}
