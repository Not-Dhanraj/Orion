import 'package:client/core/widgets/error_view.dart';
import 'package:client/core/api/api_client.dart';
import 'package:client/features/sonarr/application/provider/queue_provider/queue_provider.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'dart:async';

class SonarrQueueScreen extends ConsumerStatefulWidget {
  const SonarrQueueScreen({super.key});

  @override
  ConsumerState<SonarrQueueScreen> createState() => _SonarrQueueScreenState();
}

class _SonarrQueueScreenState extends ConsumerState<SonarrQueueScreen> {
  Timer? _refreshTimer;

  @override
  void initState() {
    super.initState();
    _setupRefreshTimer();
  }

  @override
  void dispose() {
    _refreshTimer?.cancel();
    super.dispose();
  }

  void _setupRefreshTimer() {
    // Cancel any existing timer
    _refreshTimer?.cancel();

    // Create a new timer that refreshes every 2 seconds
    _refreshTimer = Timer.periodic(const Duration(seconds: 4), (_) async {
      if (mounted) {
        // Refresh the queue

        // Also run refreshMonitoredDownloads
        try {
          final sonarrApi = ref.read(sonarrProvider);
          await sonarrApi.command.refreshMonitoredDownloads();
          ref.invalidate(sonarrQueueProvider);
        } catch (e) {
          debugPrint('Error refreshing monitored downloads: $e');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final queueValue = ref.watch(sonarrQueueProvider);
    final queueNotifier = ref.watch(queueNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Download Queue'), centerTitle: true),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(sonarrQueueProvider);

          // Also run refreshMonitoredDownloads
          try {
            final sonarrApi = ref.read(sonarrProvider);
            await sonarrApi.command.refreshMonitoredDownloads();
          } catch (e) {
            debugPrint('Error refreshing monitored downloads: $e');
          }
        },
        child: queueValue.when(
          data: (queue) {
            if (queue.isEmpty) {
              return const _EmptyQueueView();
            }

            return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: queue.length,
              itemBuilder: (context, index) {
                final queueItem = queue[index];
                return Entry.opacity(
                  duration: const Duration(milliseconds: 300),
                  child: _QueueItemCard(
                    queueItem: queueItem,
                    onDelete: (blacklist) async {
                      try {
                        await queueNotifier.deleteQueueItem(
                          queueItem.id!,
                          blacklist: blacklist,
                        );
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Removed ${queueItem.title} from queue',
                              ),
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
                    },
                  ),
                );
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => ErrorView(
            error: err,
            onRetry: () => ref.refresh(sonarrQueueProvider),
          ),
        ),
      ),
    );
  }
}

class _EmptyQueueView extends StatelessWidget {
  const _EmptyQueueView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withAlpha(51),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.download_done,
                  size: 64,
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Queue is empty',
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'There are no items currently downloading',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QueueItemCard extends StatelessWidget {
  final SonarrQueueRecord queueItem;
  final Function(bool blacklist) onDelete;

  const _QueueItemCard({required this.queueItem, required this.onDelete});

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

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.downloading,
                    color: theme.colorScheme.primary,
                  ),
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
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: _getStatusColor(
                                queueItem.status,
                              ).withAlpha(38),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              queueItem.status ?? 'Unknown',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: _getStatusColor(queueItem.status),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
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
                PopupMenuButton<String>(
                  icon: Icon(Icons.more_vert, color: theme.colorScheme.primary),
                  tooltip: 'Queue Actions',
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  position: PopupMenuPosition.under,
                  onSelected: (String action) {
                    switch (action) {
                      case 'remove':
                        _showDeleteDialog(context, false);
                        break;
                      case 'blacklist':
                        _showDeleteDialog(context, true);
                        break;
                    }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'remove',
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete_outline,
                            color: Colors.red.shade700,
                            size: 20,
                          ),
                          const SizedBox(width: 12),
                          const Text('Remove'),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'blacklist',
                      child: Row(
                        children: [
                          Icon(
                            Icons.block,
                            color: Colors.red.shade900,
                            size: 20,
                          ),
                          const SizedBox(width: 12),
                          const Text('Remove & Blacklist'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Progress', style: theme.textTheme.bodyMedium),
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
            ),
          ],
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, bool blacklist) {
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
              onDelete(blacklist);
            },
            child: Text(blacklist ? 'REMOVE & BLACKLIST' : 'REMOVE'),
          ),
        ],
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
