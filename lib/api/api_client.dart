import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:client/providers/credentials_provider.dart';

final sonarrProvider = Provider<Sonarr>((ref) {
  final credentials = ref.watch(credentialsProvider);
  return Sonarr(
    url: credentials!.sonarrUrl,
    apiKey: credentials.sonarrApiKey,
    dio: Dio(),
  );
});

final radarrProvider = Provider<Radarr>((ref) {
  final credentials = ref.watch(credentialsProvider);
  return Radarr(
    url: credentials!.radarrUrl,
    apiKey: credentials.radarrApiKey,
    dio: Dio(),
  );
});
