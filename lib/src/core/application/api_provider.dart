import 'package:client/src/core/application/credentials_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

final seriesApiProvider = Provider<Sonarr>((ref) {
  final credentials = ref.watch(credentialsProvider);
  var sonarrApi = Sonarr(basePathOverride: credentials.sonarrUrl);
  sonarrApi.setApiKey('X-Api-Key', credentials.sonarrApi!);
  return sonarrApi;
});
