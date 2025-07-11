import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:client/features/sonarr/application/sonarr_service.dart';
import 'package:client/features/sonarr/domain/series.dart';

final seriesProvider = FutureProvider<List<Series>>((ref) async {
  return ref.watch(sonarrServiceProvider).getSeries();
});
