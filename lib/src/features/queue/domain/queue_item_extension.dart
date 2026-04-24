import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:client/src/shared/utils/format_utils.dart';

extension QueueUtils on QueueItem {
  bool get isActive => isDownloading && !isStalled;
  int get progressClamped => progress.round().clamp(0, 100);
  String get formattedSize =>
      size != null ? FormatUtils.formatFileSize(size!) : '—';

  String get eta {
    if (isStalled) return 'Stalled';
    if (!isDownloading) return displayStatus;
    final etc = estimatedCompletionTime;
    if (etc == null) return '—';
    final diff = etc.difference(DateTime.now());
    if (diff.isNegative) return '—';
    if (diff.inHours > 0) {
      return '${diff.inHours}h ${diff.inMinutes.remainder(60)}m';
    }
    return '${diff.inMinutes}m';
  }
}
