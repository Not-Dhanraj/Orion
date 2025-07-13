import 'package:radarr_flutter/radarr_flutter.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

enum QueueItemType { sonarr, radarr }

class UnifiedQueueItem {
  final String id;
  final String title;
  final String? subtitle;
  final String? status;
  final String? quality;
  final double? progress;
  final String? timeLeft;
  final double? size;
  final double? sizeLeft;
  final QueueItemType type;
  final dynamic originalItem; // Store the original item for type-specific operations

  UnifiedQueueItem({
    required this.id,
    required this.title,
    this.subtitle,
    this.status,
    this.quality,
    this.progress,
    this.timeLeft,
    this.size,
    this.sizeLeft,
    required this.type,
    required this.originalItem,
  });

  factory UnifiedQueueItem.fromSonarr(SonarrQueueRecord sonarrItem) {
    final size = sonarrItem.size ?? 0;
    final sizeLeft = sonarrItem.sizeLeft ?? 0;
    final progress = size > 0 ? (size - sizeLeft) / size : 0.0;
    
    return UnifiedQueueItem(
      id: sonarrItem.id?.toString() ?? '',
      title: sonarrItem.title ?? 'Unknown Title',
      subtitle: sonarrItem.episode?.title,
      status: sonarrItem.status,
      quality: sonarrItem.quality?.quality?.name,
      progress: progress,
      timeLeft: sonarrItem.timeLeft,
      size: size,
      sizeLeft: sizeLeft,
      type: QueueItemType.sonarr,
      originalItem: sonarrItem,
    );
  }

  factory UnifiedQueueItem.fromRadarr(RadarrQueueRecord radarrItem) {
    final size = radarrItem.size ?? 0;
    final sizeLeft = radarrItem.sizeLeft ?? 0;
    final progress = size > 0 ? (size - sizeLeft) / size : 0.0;
    
    return UnifiedQueueItem(
      id: radarrItem.id?.toString() ?? '',
      title: radarrItem.title ?? 'Unknown Title',
      subtitle: null, // Movies don't have episodes
      status: radarrItem.status?.name,
      quality: radarrItem.quality?.quality?.name,
      progress: progress,
      timeLeft: radarrItem.timeLeft,
      size: size,
      sizeLeft: sizeLeft,
      type: QueueItemType.radarr,
      originalItem: radarrItem,
    );
  }

  String get downloadedSize {
    if (size == null) return '0 MB';
    final downloadedBytes = size! * (progress ?? 0);
    final downloadedMB = downloadedBytes / (1024 * 1024);
    return '${downloadedMB.toStringAsFixed(2)} MB';
  }

  String get totalSize {
    if (size == null) return '0 MB';
    final totalMB = size! / (1024 * 1024);
    return '${totalMB.toStringAsFixed(2)} MB';
  }

  String get progressPercentage {
    if (progress == null) return '0%';
    return '${(progress! * 100).toInt()}%';
  }

  String get formatTimeLeft {
    if (timeLeft == null || timeLeft!.toLowerCase() == 'unknown') {
      return 'Calculating...';
    }
    return '$timeLeft left';
  }
}
