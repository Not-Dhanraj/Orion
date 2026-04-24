import 'package:client/src/core/domain/credentials.dart';

class SettingsData {
  final RadarrCredentials? radarrCredentials;
  final SonarrCredentials? sonarrCredentials;
  final JellyfinCredentials? jellyfinCredentials;

  SettingsData({
    this.radarrCredentials,
    this.sonarrCredentials,
    this.jellyfinCredentials,
  });

  SettingsData copyWith({
    RadarrCredentials? radarrCredentials,
    SonarrCredentials? sonarrCredentials,
    JellyfinCredentials? jellyfinCredentials,
  }) {
    return SettingsData(
      radarrCredentials: radarrCredentials ?? this.radarrCredentials,
      sonarrCredentials: sonarrCredentials ?? this.sonarrCredentials,
      jellyfinCredentials: jellyfinCredentials ?? this.jellyfinCredentials,
    );
  }
}
