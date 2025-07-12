import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/radarr/application/provider/queue_provider/queue_provider.dart';
import 'package:client/features/radarr/application/provider/queue_provider/delete_queue_item_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class RadarrQueueScreen extends ConsumerWidget {
  const RadarrQueueScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queueData = ref.watch(queueProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Download Queue'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 2,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh',
            onPressed: () {
              ref.refresh(queueProvider);
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.surfaceContainerHighest.withOpacity(0.3),
              colorScheme.surface,
            ],
            stops: const [0.0, 0.3],
          ),
        ),
        child: queueData.when(
          data: (queueItems) {
            final records = queueItems['records'] as List?;

            if (records == null || records.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.download_done,
                      size: 64,
                      color: colorScheme.onSurfaceVariant.withOpacity(0.5),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No items in queue',
                      style: TextStyle(color: colorScheme.onSurfaceVariant),
                    ),
                  ],
                ),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: records.length,
              itemBuilder: (context, index) {
                final item = records[index];
                return _buildQueueItem(context, ref, item);
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => ErrorView(
            error: error,
            customMessage: 'Failed to load queue',
            onRetry: () => ref.refresh(queueProvider),
          ),
        ),
      ),
    );
  }

  Widget _buildQueueItem(BuildContext context, WidgetRef ref, dynamic item) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final title = item['title'] ?? 'Unknown';
    final quality = item['quality']?['quality']?['name'] ?? 'Unknown';
    final status = item['status'] ?? 'Unknown';
    final timeLeft = item['timeleft'] ?? 'Unknown';
    final size = item['size'] ?? 0;
    final sizeFormatted = _formatFileSize(size);
    final progress = item['sizeleft'] != null && size > 0
        ? (size - item['sizeleft']) / size
        : 0.0;
    final progressPercent = (progress * 100).toStringAsFixed(1);

    // Get estimated completion time
    String? estimatedCompletionTime;
    if (timeLeft != 'Unknown' && timeLeft != 'unknown') {
      try {
        final now = DateTime.now();
        final formattedTime = DateFormat.Hm().format(now);
        estimatedCompletionTime = 'Completion: $formattedTime';
      } catch (e) {
        // Ignore errors
      }
    }

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and quality
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
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
                              color: colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              quality,
                              style: TextStyle(
                                fontSize: 12,
                                color: colorScheme.onPrimaryContainer,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: _getStatusColor(status, colorScheme),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              status,
                              style: TextStyle(
                                fontSize: 12,
                                color: _getStatusTextColor(status, colorScheme),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Delete button
                IconButton(
                  icon: const Icon(Icons.delete_outline),
                  tooltip: 'Remove from queue',
                  onPressed: () {
                    final id = item['id'];
                    if (id != null) {
                      _showDeleteConfirmation(context, ref, id, title);
                    }
                  },
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Progress bar
            LinearProgressIndicator(
              value: progress.clamp(0.0, 1.0),
              backgroundColor: colorScheme.surfaceVariant,
            ),

            const SizedBox(height: 8),

            // Progress details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$progressPercent% of $sizeFormatted',
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                if (estimatedCompletionTime != null)
                  Text(
                    estimatedCompletionTime,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showDeleteConfirmation(
    BuildContext context,
    WidgetRef ref,
    int id,
    String title,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remove from Queue'),
        content: Text(
          'Are you sure you want to remove "$title" from the queue?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();

              // Show loading indicator
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Removing from queue...')),
              );

              try {
                // Delete queue item
                await ref.read(deleteQueueItemProvider(id).future);

                // Refresh queue and show success message
                ref.refresh(queueProvider);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Item removed from queue')),
                );
              } catch (e) {
                // Show error message
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Error: $e')));
              }
            },
            child: const Text('Remove'),
          ),
        ],
      ),
    );
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024)
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }

  Color _getStatusColor(String status, ColorScheme colorScheme) {
    switch (status.toLowerCase()) {
      case 'completed':
        return Colors.green.withOpacity(0.2);
      case 'downloading':
        return Colors.blue.withOpacity(0.2);
      case 'warning':
        return Colors.orange.withOpacity(0.2);
      case 'error':
        return Colors.red.withOpacity(0.2);
      default:
        return colorScheme.surfaceVariant;
    }
  }

  Color _getStatusTextColor(String status, ColorScheme colorScheme) {
    switch (status.toLowerCase()) {
      case 'completed':
        return Colors.green.shade800;
      case 'downloading':
        return Colors.blue.shade800;
      case 'warning':
        return Colors.orange.shade800;
      case 'error':
        return Colors.red.shade800;
      default:
        return colorScheme.onSurfaceVariant;
    }
  }
}
