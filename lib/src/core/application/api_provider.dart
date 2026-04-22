import 'package:client/src/core/application/app_storage_service.dart';
import 'package:client/src/exceptions/api_not_found.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/jelly_api.dart';
import 'package:radarr_api/radarr_api.dart';
import 'package:sonarr_api/sonarr_api.dart';

final seriesApiProvider = Provider<SonarrApi>((ref) {
  final credentials = ref.watch(appStorageProvider);
  var sonarrCred = credentials.getSonarrCredentials();
  if (sonarrCred == null) {
    throw ApiNotFoundException('Sonarr API not found in local storage');
  }
  var sonarrApi = SonarrApi(basePathOverride: sonarrCred.sonarrUrl);
  sonarrApi.setApiKey('X-Api-Key', sonarrCred.sonarrApi);
  return sonarrApi;
});

final moviesApiProvider = Provider<RadarrApi>((ref) {
  final credentials = ref.watch(appStorageProvider);
  var radarrCred = credentials.getRadarrCredentials();
  if (radarrCred == null) {
    throw ApiNotFoundException('Radarr API not found in local storage');
  }
  var radarrApi = RadarrApi(basePathOverride: radarrCred.radarrUrl);
  radarrApi.setApiKey('X-Api-Key', radarrCred.radarrApi);
  return radarrApi;
});

final jellyfinApiProvider = Provider<JellyApi>((ref) {
  final credentials = ref.watch(appStorageProvider);
  final jellyfinCred = credentials.getJellyfinCredentials();
  if (jellyfinCred == null) {
    throw ApiNotFoundException('Jellyfin API not found in local storage');
  }

  final baseUrl = jellyfinCred.jellyfinUrl.removeEndingSlash();

  final jellyApi = JellyApi(basePathOverride: baseUrl);

  // unique deviceId per installation
  final deviceId = credentials.deviceId;
  final authHeader =
      'MediaBrowser Client="Orion", Device="Orion App", '
      'DeviceId="$deviceId", Version="1.0.0", '
      'Token="${jellyfinCred.accessToken}"';
  jellyApi.dio.options.headers['Authorization'] = authHeader;
  jellyApi.setApiKey('CustomAuthentication', authHeader);
  return jellyApi;
});
