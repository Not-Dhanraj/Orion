import 'package:client/src/core/application/api_provider.dart';
import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/features/queue/data/radarr_queue_repository.dart';
import 'package:client/src/features/queue/data/sonarr_queue_repository.dart';
import 'package:client/src/features/queue/domain/queue_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final queueServiceProvider = Provider<QueueService>((ref) {
  final enabled = ref.watch(enabledNotifierProvider);
  
  // Initialize repositories based on enabled services
  RadarrQueueRepository? radarrRepo;
  SonarrQueueRepository? sonarrRepo;
  
  if (enabled.radarr) {
    final radarrApi = ref.watch(moviesApiProvider);
    radarrRepo = RadarrQueueRepository(radarrApi);
  }
  
  if (enabled.sonarr) {
    final sonarrApi = ref.watch(seriesApiProvider);
    sonarrRepo = SonarrQueueRepository(sonarrApi);
  }
  
  return QueueService(radarrRepo: radarrRepo, sonarrRepo: sonarrRepo);
});
