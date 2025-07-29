import 'package:hive_ce/hive.dart';
part 'credentials.g.dart';

@HiveType(typeId: 1)
class Credentials extends HiveObject {
  @HiveField(0)
  final String? sonarrUrl;
  @HiveField(1)
  final String? sonarrApi;
  @HiveField(2)
  final String? radarrUrl;
  @HiveField(3)
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

  @override
  String toString() {
    return 'Credentials(sonarrUrl: $sonarrUrl, sonarrApi: $sonarrApi, radarrUrl: $radarrUrl, radarrApi: $radarrApi)';
  }
}
