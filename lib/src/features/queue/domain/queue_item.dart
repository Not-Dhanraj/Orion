import 'package:radarr/radarr.dart' as radarr;
import 'package:sonarr/sonarr.dart' as sonarr;

class QueueItem {
  final int id;
  final String title;
  final String? specs;
  final double? sizeRemaining;
  final double? size;
  final DateTime? estimatedCompletionTime;
  final String status;
  final String? trackedDownloadStatus; // 'ok' | 'warning' | 'error'
  final String? trackedDownloadState;
  final String? errorMessage;
  final bool isRadarr;
  final dynamic originalResource;

  QueueItem({
    required this.id,
    required this.title,
    this.specs,
    this.sizeRemaining,
    this.size,
    this.estimatedCompletionTime,
    required this.status,
    this.trackedDownloadStatus,
    this.trackedDownloadState,
    this.errorMessage,
    required this.isRadarr,
    required this.originalResource,
  });

  factory QueueItem.fromRadarr(radarr.QueueResource resource) {
    return QueueItem(
      id: resource.id ?? 0,
      title: resource.movie?.title ?? 'Unknown Movie',
      specs: resource.quality?.quality?.name,
      // ignore: deprecated_member_use
      sizeRemaining: resource.sizeleft,
      size: resource.size,
      estimatedCompletionTime: resource.estimatedCompletionTime,
      status: resource.status?.name ?? 'unknown',
      trackedDownloadStatus: resource.trackedDownloadStatus?.name,
      trackedDownloadState: resource.trackedDownloadState?.name,
      errorMessage: resource.errorMessage,
      isRadarr: true,
      originalResource: resource,
    );
  }

  factory QueueItem.fromSonarr(sonarr.QueueResource resource) {
    final episodeTitle = resource.episode?.title;
    final seriesTitle = resource.series?.title ?? 'Unknown Series';
    final title = episodeTitle != null
        ? '$seriesTitle — $episodeTitle'
        : seriesTitle;

    return QueueItem(
      id: resource.id ?? 0,
      title: title,
      specs: resource.quality?.quality?.name,
      // ignore: deprecated_member_use
      sizeRemaining: resource.sizeleft,
      size: resource.size,
      estimatedCompletionTime: resource.estimatedCompletionTime,
      status: resource.status?.name ?? 'unknown',
      trackedDownloadStatus: resource.trackedDownloadStatus?.name,
      trackedDownloadState: resource.trackedDownloadState?.name,
      errorMessage: resource.errorMessage,
      isRadarr: false,
      originalResource: resource,
    );
  }

  double get progress {
    if (size == null || sizeRemaining == null || size == 0) return 0;
    return ((size! - sizeRemaining!) / size!) * 100;
  }

  String get displayStatus {
    final s = status.toLowerCase();
    final tds = trackedDownloadStatus?.toLowerCase();

    if (s == 'downloading' && (tds == 'warning' || tds == 'error')) {
      return 'Stalled';
    }

    switch (s) {
      case 'downloading':
        return 'Downloading';
      case 'queued':
        return 'Queued';
      case 'paused':
        return 'Paused';
      case 'completed':
        return 'Completed';
      case 'failed':
        return 'Failed';
      case 'warning':
        return 'Warning';
      case 'delay':
        return 'Delayed';
      case 'downloadclientunavailable':
        return 'Client Unavailable';
      case 'fallback':
        return 'Fallback';
      default:
        return status;
    }
  }

  bool get isDownloading => status.toLowerCase() == 'downloading';
  bool get isStalled =>
      isDownloading &&
      (trackedDownloadStatus == 'warning' || trackedDownloadStatus == 'error');
}
