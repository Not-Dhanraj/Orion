import 'package:radarr/radarr.dart' as radarr;
import 'package:sonarr/sonarr.dart' as sonarr;

class QueueItem {
  final int id;
  final String title;
  final double? sizeRemaining;
  final double? size;
  final DateTime? estimatedCompletionTime;
  final String status;
  final String? errorMessage;
  final bool isRadarr;
  final dynamic originalResource;

  QueueItem({
    required this.id,
    required this.title,
    this.sizeRemaining,
    this.size,
    this.estimatedCompletionTime,
    required this.status,
    this.errorMessage,
    required this.isRadarr,
    required this.originalResource,
  });

  factory QueueItem.fromRadarr(radarr.QueueResource resource) {
    return QueueItem(
      id: resource.id ?? 0,
      title: resource.movie?.title ?? 'Unknown Movie',
      sizeRemaining: resource.sizeleft,
      size: resource.size,
      estimatedCompletionTime: resource.estimatedCompletionTime,
      status: resource.status?.name ?? 'Unknown',
      errorMessage: resource.errorMessage,
      isRadarr: true,
      originalResource: resource,
    );
  }

  factory QueueItem.fromSonarr(sonarr.QueueResource resource) {
    return QueueItem(
      id: resource.id ?? 0,
      title: resource.series?.title ?? 'Unknown Series',
      sizeRemaining: resource.sizeleft,
      size: resource.size,
      estimatedCompletionTime: resource.estimatedCompletionTime,
      status: resource.status?.name ?? 'Unknown',
      errorMessage: resource.errorMessage,
      isRadarr: false,
      originalResource: resource,
    );
  }

  double get progress {
    if (size == null || sizeRemaining == null || size == 0) {
      return 0;
    }
    return ((size! - sizeRemaining!) / size!) * 100;
  }
}
