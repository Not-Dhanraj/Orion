import 'package:client/features/sonarr/application/series_management_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seriesManagementServiceProvider = Provider<SeriesManagementService>((
  ref,
) {
  return SeriesManagementService(ref);
});
