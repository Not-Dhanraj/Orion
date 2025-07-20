import 'package:client/features/queue/domain/queue_item.dart';
import 'package:client/features/queue/application/provider/combined_queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:with_opacity/with_opacity.dart';

class UnifiedQueueItemCard extends ConsumerWidget {
  final UnifiedQueueItem queueItem;

  const UnifiedQueueItemCard({super.key, required this.queueItem});

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
  final UnifiedQueueItem queueItem;

  const _QueueItemHeader({required this.queueItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: queueItem.type == QueueItemType.sonarr
                ? Colors.blue.withCustomOpacity(0.1)
                : Colors.orange.withCustomOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            queueItem.type == QueueItemType.sonarr ? Icons.tv : Icons.movie,
            color: queueItem.type == QueueItemType.sonarr
                ? Colors.blue
                : Colors.orange,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                queueItem.title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              if (queueItem.subtitle != null)
                Text(
                  queueItem.subtitle!,
                  style: theme.textTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              const SizedBox(height: 4),
              Row(
                children: [
                  _StatusBadge(status: queueItem.status),
                  const SizedBox(width: 8),
                  _QualityBadge(quality: queueItem.quality),
                  const SizedBox(width: 8),
                  _TypeBadge(type: queueItem.type),
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
  final UnifiedQueueItem queueItem;

  const _QueueItemProgress({required this.queueItem});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final progress = queueItem.progress ?? 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Downloads', style: theme.textTheme.bodyMedium),
            Text(
              queueItem.progressPercentage,
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
              '${queueItem.downloadedSize} / ${queueItem.totalSize}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            if (queueItem.timeLeft != null)
              Text(
                queueItem.formatTimeLeft,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
          ],
        ),
      ],
    );
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

class _QualityBadge extends StatelessWidget {
  final String? quality;

  const _QualityBadge({this.quality});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withAlpha(100),
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

class _TypeBadge extends StatelessWidget {
  final QueueItemType type;

  const _TypeBadge({required this.type});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isTV = type == QueueItemType.sonarr;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: isTV ? Colors.blue.withAlpha(38) : Colors.orange.withAlpha(38),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        isTV ? 'TV' : 'Movie',
        style: theme.textTheme.bodySmall?.copyWith(
          color: isTV ? Colors.blue : Colors.orange,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _ActionsMenu extends ConsumerWidget {
  final UnifiedQueueItem queueItem;

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
          .read(combinedQueueNotifierProvider.notifier)
          .deleteQueueItem(queueItem, blacklist: blacklist);
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
