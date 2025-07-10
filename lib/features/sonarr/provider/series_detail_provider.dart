import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

final seriesDetailProvider = FutureProvider.family<SonarrSeries, int>((
  ref,
  seriesId,
) async {
  final sonarr = ref.watch(sonarrProvider);
  return await sonarr.series.getSeries(seriesId: seriesId);
});
