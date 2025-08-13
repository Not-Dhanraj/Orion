import 'package:client/src/features/queue/data/radarr_queue_repository.dart';
import 'package:client/src/features/queue/data/sonarr_queue_repository.dart';
import 'package:client/src/features/queue/domain/queue_item.dart';

class QueueService {
  final RadarrQueueRepository? radarrRepo;
  final SonarrQueueRepository? sonarrRepo;

  QueueService({
    this.radarrRepo,
    this.sonarrRepo,
  });

  /// Check if any service is enabled
  bool get hasEnabledService => radarrRepo != null || sonarrRepo != null;
  
  /// Check if Radarr service is enabled
  bool get isRadarrEnabled => radarrRepo != null;
  
  /// Check if Sonarr service is enabled
  bool get isSonarrEnabled => sonarrRepo != null;

  /// Fetch queue items from all enabled services
  Future<List<QueueItem>> getQueueItems({
    int? page,
    int? pageSize = 50,
  }) async {
    final List<QueueItem> combinedQueue = [];
    
    // Fetch from Radarr if enabled
    if (isRadarrEnabled) {
      try {
        final radarrQueue = await radarrRepo!.getQueue(
          page: page,
          pageSize: pageSize,
          includeMovie: true,
        );
        
        combinedQueue.addAll(
          radarrQueue.map((item) => QueueItem.fromRadarr(item)),
        );
      } catch (e) {
        // Log error but continue with other sources
        print('Error fetching Radarr queue: $e');
      }
    }
    
    // Fetch from Sonarr if enabled
    if (isSonarrEnabled) {
      try {
        final sonarrQueue = await sonarrRepo!.getQueue(
          page: page,
          pageSize: pageSize,
          includeSeries: true,
          includeEpisode: true,
        );
        
        combinedQueue.addAll(
          sonarrQueue.map((item) => QueueItem.fromSonarr(item)),
        );
      } catch (e) {
        // Log error but continue with other sources
        print('Error fetching Sonarr queue: $e');
      }
    }
    
    // Sort by status and then by progress
    combinedQueue.sort((a, b) {
      // First sort by status to group similar statuses
      final statusCompare = a.status.compareTo(b.status);
      if (statusCompare != 0) return statusCompare;
      
      // Then sort by progress (descending)
      return b.progress.compareTo(a.progress);
    });
    
    return combinedQueue;
  }
  
  /// Remove an item from the queue
  Future<void> removeQueueItem(QueueItem item, {bool removeFromClient = true, bool blocklist = false}) async {
    if (item.isRadarr) {
      if (isRadarrEnabled) {
        await radarrRepo!.removeFromQueue(item.id, removeFromClient: removeFromClient, blocklist: blocklist);
      } else {
        throw Exception('Cannot remove Radarr item: Radarr service is not enabled');
      }
    } else {
      if (isSonarrEnabled) {
        await sonarrRepo!.removeFromQueue(item.id, removeFromClient: removeFromClient, blocklist: blocklist);
      } else {
        throw Exception('Cannot remove Sonarr item: Sonarr service is not enabled');
      }
    }
  }
}
