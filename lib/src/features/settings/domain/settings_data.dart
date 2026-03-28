import 'package:client/src/core/domain/credentials.dart';

class SettingsData {
  final RadarrCredentials? radarrCredentials;
  final SonarrCredentials? sonarrCredentials;

  SettingsData({this.radarrCredentials, this.sonarrCredentials});

  SettingsData copyWith({
    RadarrCredentials? radarrCredentials,
    SonarrCredentials? sonarrCredentials,
  }) {
    return SettingsData(
      radarrCredentials: radarrCredentials ?? this.radarrCredentials,
      sonarrCredentials: sonarrCredentials ?? this.sonarrCredentials,
    );
  }
}
