import 'package:client/src/core/domain/credentials.dart';

class ServiceSettings {
  final RadarrCredentials? radarrCredentials;
  final SonarrCredentials? sonarrCredentials;

  ServiceSettings({this.radarrCredentials, this.sonarrCredentials});

  ServiceSettings copyWith({
    RadarrCredentials? radarrCredentials,
    SonarrCredentials? sonarrCredentials,
  }) {
    return ServiceSettings(
      radarrCredentials: radarrCredentials ?? this.radarrCredentials,
      sonarrCredentials: sonarrCredentials ?? this.sonarrCredentials,
    );
  }
}
