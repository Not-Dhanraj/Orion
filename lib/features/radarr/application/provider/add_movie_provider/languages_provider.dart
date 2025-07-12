import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

final languagesProvider = FutureProvider<List<RadarrLanguage>>((ref) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.language.getAll();
});
