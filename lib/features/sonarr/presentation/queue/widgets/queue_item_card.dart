import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

import 'package:client/features/sonarr/application/provider/queue_provider/queue_provider.dart';

class QueueItemCard extends ConsumerWidget {
  final SonarrQueueRecord queueItem;

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
  final SonarrQueueRecord queueItem;

  const _QueueItemHeader({required this.queueItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              if (queueItem.episode?.title != null)
                Text(
                  queueItem.episode!.title!,
                  style: theme.textTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              const SizedBox(height: 4),
              Row(
                children: [
                  _StatusBadge(status: queueItem.status),
                  const SizedBox(width: 8),
                  Text(
                    queueItem.protocol ?? '',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
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
  final SonarrQueueRecord queueItem;

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
            if (queueItem.estimatedCompletionTime != null)
              Text(
                _formatTimeLeft(queueItem.estimatedCompletionTime!),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
          ],
        ),
      ],
    );
  }

  String _formatTimeLeft(DateTime estimatedCompletionTime) {
    final now = DateTime.now();
    final difference = estimatedCompletionTime.difference(now);

    if (difference.isNegative) {
      return 'Completing...';
    }

    if (difference.inDays > 0) {
      return '${difference.inDays}d ${difference.inHours.remainder(24)}h left';
    }

    if (difference.inHours > 0) {
      return '${difference.inHours}h ${difference.inMinutes.remainder(60)}m left';
    }

    if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ${difference.inSeconds.remainder(60)}s left';
    }

    return '${difference.inSeconds}s left';
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
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}

class _ActionsMenu extends ConsumerWidget {
  final SonarrQueueRecord queueItem;

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
    try {
      await ref
          .read(queueNotifierProvider.notifier)
          .deleteQueueItem(queueItem.id!, blacklist: blacklist);
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
