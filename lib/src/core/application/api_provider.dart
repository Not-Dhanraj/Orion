import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/exceptions/api_not_found.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_api/radarr_api.dart';
import 'package:sonarr_api/sonarr_api.dart';

final seriesApiProvider = Provider<SonarrApi>((ref) {
  final credentials = ref.watch(hiveProvider);
  var sonarrCred = credentials.getSonarrCredentials();
  if (sonarrCred == null) {
    throw ApiNotFoundException('Sonarr API not found in local storage');
  }
  var sonarrApi = SonarrApi(basePathOverride: sonarrCred.sonarrUrl);
  sonarrApi.setApiKey('X-Api-Key', sonarrCred.sonarrApi);
  return sonarrApi;
});

final moviesApiProvider = Provider<RadarrApi>((ref) {
  final credentials = ref.watch(hiveProvider);
  var radarrCred = credentials.getRadarrCredentials();
  if (radarrCred == null) {
    throw ApiNotFoundException('Radarr API not found in local storage');
  }
  var radarrApi = RadarrApi(basePathOverride: radarrCred.radarrUrl);
  radarrApi.setApiKey('X-Api-Key', radarrCred.radarrApi);
  return radarrApi;
});
