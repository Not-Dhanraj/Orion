import 'package:client/src/features/queue/application/queue_service.dart';
import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:client/src/features/queue/presentation/queue_controller.dart';
import 'package:client/src/shared/widgets/error_message.dart';
import 'package:client/src/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueuePage extends ConsumerStatefulWidget {
  const QueuePage({super.key});

  @override
  ConsumerState<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends ConsumerState<QueuePage> {
  bool _isRefreshing = false;

  Future<void> _refreshQueue() async {
    setState(() => _isRefreshing = true);
    await ref.read(queueControllerProvider.notifier).refreshQueue();
    if (mounted) {
      // Add a very small delay to make sure the indicator is visible
      // This makes the user aware that refreshing is happening
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() => _isRefreshing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final queueState = ref.watch(queueControllerProvider);
    final queueService = ref.watch(queueServiceProvider);

    // Get enabled services info
    final radarrEnabled = queueService.isRadarrEnabled;
    final sonarrEnabled = queueService.isSonarrEnabled;
    final enabledText = _getEnabledServicesText(radarrEnabled, sonarrEnabled);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Queue'),
            if (_isRefreshing) ...[
              const SizedBox(width: 8),
              const SizedBox(
                width: 12,
                height: 12,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              const SizedBox(width: 8),
              Text(
                'Refreshing...',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshQueue,
            tooltip: 'Force refresh now',
          ),
        ],
      ),
      body: Column(
        children: [
          // Show enabled services banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: Text(
              'Services: $enabledText',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          // Main content
          Expanded(
            child: queueState.when(
              data: (queueItems) {
                if (queueItems.isEmpty) {
                  return const Center(child: Text('No items in queue'));
                }
                return RefreshIndicator(
                  onRefresh: _refreshQueue,
                  child: ListView.builder(
                    itemCount: queueItems.length,
                    itemBuilder: (context, index) {
                      final item = queueItems[index];
                      return QueueItemTile(item: item);
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => ErrorMessage(
                message: 'Error loading queue: $error',
                onRetry: _refreshQueue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to get text indicating which services are enabled
  String _getEnabledServicesText(bool radarrEnabled, bool sonarrEnabled) {
    if (radarrEnabled && sonarrEnabled) {
      return 'Radarr & Sonarr';
    } else if (radarrEnabled) {
      return 'Radarr only';
    } else if (sonarrEnabled) {
      return 'Sonarr only';
    } else {
      return 'None enabled';
    }
  }
}

class QueueItemTile extends ConsumerWidget {
  final QueueItem item;

  const QueueItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.titleMedium;
    final subtitleStyle = theme.textTheme.bodyMedium;

    // Get appropriate icon and color based on source and status
    IconData sourceIcon = item.isRadarr ? Icons.movie : Icons.tv;
    Color? statusColor;
    IconData statusIcon;

    switch (item.status.toLowerCase()) {
      case 'downloading':
        statusIcon = Icons.download;
        statusColor = Colors.blue;
        break;
      case 'completed':
        statusIcon = Icons.check_circle;
        statusColor = Colors.green;
        break;
      case 'warning':
        statusIcon = Icons.warning;
        statusColor = Colors.orange;
        break;
      case 'error':
        statusIcon = Icons.error;
        statusColor = Colors.red;
        break;
      default:
        statusIcon = Icons.hourglass_empty;
        break;
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  sourceIcon,
                  size: 20,
                  color: item.isRadarr ? Colors.blue : Colors.purple,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    item.title,
                    style: titleStyle?.copyWith(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(statusIcon, size: 20, color: statusColor),
              ],
            ),
            const SizedBox(height: 8),
            if (item.status.toLowerCase() == 'downloading' && item.size != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LinearProgressIndicator(
                    value: item.progress / 100,
                    backgroundColor: theme.colorScheme.surfaceContainerHighest,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${item.progress.toStringAsFixed(1)}% of ${FormatUtils.formatFileSize(item.size!)}',
                        style: subtitleStyle,
                      ),
                      if (item.estimatedCompletionTime != null)
                        Text(
                          'ETA: ${FormatUtils.formatDateTime(item.estimatedCompletionTime!)}',
                          style: subtitleStyle,
                        ),
                    ],
                  ),
                ],
              ),
            if (item.errorMessage != null && item.errorMessage!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  item.errorMessage!,
                  style: subtitleStyle?.copyWith(color: Colors.red),
                ),
              ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Remove from Queue'),
                        content: const Text(
                          'Choose an action for this queue item:',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              ref
                                  .read(queueControllerProvider.notifier)
                                  .removeItem(
                                    item,
                                    removeFromClient: false,
                                    blocklist: false,
                                  );
                            },
                            child: const Text('Ignore Download'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              ref
                                  .read(queueControllerProvider.notifier)
                                  .removeItem(
                                    item,
                                    removeFromClient: true,
                                    blocklist: false,
                                  );
                            },
                            child: const Text('Remove from Client'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              ref
                                  .read(queueControllerProvider.notifier)
                                  .removeItem(
                                    item,
                                    removeFromClient: true,
                                    blocklist: true,
                                  );
                            },
                            child: const Text('Blacklist Release'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Cancel'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text('Remove'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
