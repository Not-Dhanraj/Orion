import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

import 'package:client/features/radarr/application/provider/queue_provider/delete_queue_item_provider.dart';
import 'package:client/features/radarr/application/provider/queue_provider/queue_provider.dart';

class QueueItemCard extends ConsumerWidget {
  final RadarrQueueRecord queueItem;

  const QueueItemCard({super.key, required this.queueItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _QueueItemHeader(queueItem: queueItem),
            const SizedBox(height: 12),
            _QueueItemProgress(queueItem: queueItem),
          ],
        ),
      ),
    );
  }
}

class _QueueItemHeader extends ConsumerWidget {
  final RadarrQueueRecord queueItem;

  const _QueueItemHeader({required this.queueItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var status = queueItem.status?.name.toString();
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.downloading, color: theme.colorScheme.primary),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                queueItem.title ?? 'Unknown Title',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  _StatusBadge(
                    status:
                        '${status?[0].toUpperCase()}${status?.substring(1)}',
                  ),
                  const SizedBox(width: 8),
                  _QualityBadge(quality: queueItem.quality?.quality?.name),
                ],
              ),
            ],
          ),
        ),
        _ActionsMenu(queueItem: queueItem),
      ],
    );
  }
}

class _QueueItemProgress extends StatelessWidget {
  final RadarrQueueRecord queueItem;

  const _QueueItemProgress({required this.queueItem});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = queueItem.size ?? 0;
    final sizeInMB = size / 1024 / 1024;
    final downloadedSize =
        size *
        (queueItem.sizeLeft != null && size > 0
            ? (size - queueItem.sizeLeft!) / size
            : 0);
    final downloadedSizeInMB = downloadedSize / 1024 / 1024;
    final progress = queueItem.sizeLeft != null && size > 0
        ? (size - queueItem.sizeLeft!) / size
        : 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Downloads', style: theme.textTheme.bodyMedium),
            Text(
              '${(progress * 100).toInt()}%',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: theme.colorScheme.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey.withAlpha(51),
            minHeight: 8,
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${downloadedSizeInMB.toStringAsFixed(2)}MB / ${sizeInMB.toStringAsFixed(2)}MB',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            if (queueItem.timeLeft != null && queueItem.timeLeft != 'Unknown')
              Text(
                _formatTimeLeft(queueItem.timeLeft!),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
          ],
        ),
      ],
    );
  }

  String _formatTimeLeft(String timeLeft) {
    if (timeLeft.toLowerCase() == 'unknown') {
      return 'Calculating...';
    }
    return '$timeLeft left';
  }
}

class _StatusBadge extends StatelessWidget {
  final String? status;

  const _StatusBadge({this.status});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: _getStatusColor(status).withAlpha(38),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status ?? 'Unknown',
        style: theme.textTheme.bodySmall?.copyWith(
          color: _getStatusColor(status),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Color _getStatusColor(String? status) {
    if (status == null) return Colors.grey;
    switch (status.toLowerCase()) {
      case 'queued':
        return Colors.blue;
      case 'downloading':
        return Colors.green;
      case 'paused':
        return Colors.amber;
      case 'completed':
        return Colors.purple;
      case 'failed':
      case 'warning':
      case 'error':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}

class _QualityBadge extends StatelessWidget {
  final String? quality;

  const _QualityBadge({this.quality});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        quality ?? 'Unknown',
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onPrimaryContainer,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _ActionsMenu extends ConsumerWidget {
  final RadarrQueueRecord queueItem;

  const _ActionsMenu({required this.queueItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert, color: theme.colorScheme.primary),
      tooltip: 'Queue Actions',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      position: PopupMenuPosition.under,
      onSelected: (String action) {
        switch (action) {
          case 'remove':
            _showDeleteDialog(context, ref, false);
            break;
          case 'blacklist':
            _showDeleteDialog(context, ref, true);
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'remove',
          child: Row(
            children: [
              Icon(Icons.delete_outline, color: Colors.red.shade700, size: 20),
              const SizedBox(width: 12),
              const Text('Remove'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'blacklist',
          child: Row(
            children: [
              Icon(Icons.block, color: Colors.red.shade900, size: 20),
              const SizedBox(width: 12),
              const Text('Remove & Blacklist'),
            ],
          ),
        ),
      ],
    );
  }

  void _showDeleteDialog(BuildContext context, WidgetRef ref, bool blacklist) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(blacklist ? 'Remove & Blacklist' : 'Remove Download'),
        content: Text(
          blacklist
              ? 'Are you sure you want to remove and blacklist "${queueItem.title}"? '
                    'This will prevent this release from being downloaded again.'
              : 'Are you sure you want to remove "${queueItem.title}" from the queue?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('CANCEL'),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () {
              Navigator.of(context).pop();
              _deleteQueueItem(context, ref, blacklist);
            },
            child: Text(blacklist ? 'REMOVE & BLACKLIST' : 'REMOVE'),
          ),
        ],
      ),
    );
  }

  Future<void> _deleteQueueItem(
    BuildContext context,
    WidgetRef ref,
    bool blacklist,
  ) async {
    final id = queueItem.id;
    if (id == null) return;

    try {
      // Show loading indicator
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            blacklist
                ? 'Removing and blacklisting...'
                : 'Removing from queue...',
          ),
          duration: const Duration(seconds: 1),
        ),
      );
      final deleteQueueItem = DeleteQueueItem(id: id, blacklist: blacklist);
      // Delete queue item (Note: blacklist functionality may need to be implemented in the provider)
      await ref.read(deleteQueueItemProvider(deleteQueueItem).future);

      // Refresh queue
      await ref.refresh(queueProvider).value;

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Removed ${queueItem.title} from queue'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error deleting queue item: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
