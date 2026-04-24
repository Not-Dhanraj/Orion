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

class JellyfinCredentials {
  final String jellyfinUrl;
  final String username;
  final String accessToken;
  final String userId;

  JellyfinCredentials({
    required this.jellyfinUrl,
    required this.username,
    required this.accessToken,
    required this.userId,
  });

  @override
  String toString() =>
      'JellyfinCredentials(url: $jellyfinUrl, username: $username, userId: $userId, accessToken: ${accessToken.substring(0, 8)}...)';
}
