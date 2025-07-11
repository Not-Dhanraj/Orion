import 'package:client/features/auth/application/provider/credentials_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

final sonarrProvider = Provider<Sonarr>((ref) {
  final credentials = ref.watch(credentialsProvider);
  return Sonarr(host: credentials!.sonarrUrl, apiKey: credentials.sonarrApiKey);
});

final radarrProvider = Provider<Radarr>((ref) {
  final credentials = ref.watch(credentialsProvider);
  return Radarr(host: credentials!.radarrUrl, apiKey: credentials.radarrApiKey);
});
