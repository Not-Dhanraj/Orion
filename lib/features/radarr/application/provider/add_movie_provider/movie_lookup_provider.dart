import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

final movieLookupProvider = FutureProvider.family<List<RadarrMovie>, String>((
  ref,
  term,
) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.movieLookup.get(term: term);
});
