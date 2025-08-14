import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:client/src/features/queue/presentation/queue_home_controller.dart';
import 'package:client/src/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueListWidget extends StatelessWidget {
  final List<QueueItem> items;

  const QueueListWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return QueueItemTile(item: item);
      },
    );
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
                                  .read(queueHomeControllerProvider.notifier)
                                  .removeItem(
                                    item,
                                    removeFromClient: false,
                                    blacklist: false,
                                  );
                            },
                            child: const Text('Ignore Download'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              ref
                                  .read(queueHomeControllerProvider.notifier)
                                  .removeItem(
                                    item,
                                    removeFromClient: true,
                                    blacklist: false,
                                  );
                            },
                            child: const Text('Remove from Client'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              ref
                                  .read(queueHomeControllerProvider.notifier)
                                  .removeItem(
                                    item,
                                    removeFromClient: true,
                                    blacklist: true,
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
