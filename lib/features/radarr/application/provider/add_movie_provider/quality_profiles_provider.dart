import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

final qualityProfilesProvider = FutureProvider<List<RadarrQualityProfile>>((
  ref,
) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.qualityProfile.getAll();
});
