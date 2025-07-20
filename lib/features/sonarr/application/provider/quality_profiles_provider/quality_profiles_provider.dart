import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

/// Provider for fetching Sonarr quality profiles
final qualityProfilesProvider = FutureProvider<List<SonarrQualityProfile>>((
  ref,
) async {
  final sonarrApi = ref.watch(sonarrProvider);
  return await sonarrApi.profile.getQualityProfiles();
});
