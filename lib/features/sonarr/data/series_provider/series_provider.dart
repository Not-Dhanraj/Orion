import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

final seriesProvider = FutureProvider<List<SonarrSeries>>((ref) async {
  final sonarr = ref.watch(sonarrProvider);
  return await sonarr.series.getAllSeries();
});
