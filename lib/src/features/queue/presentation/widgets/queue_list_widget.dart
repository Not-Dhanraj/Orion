import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:client/src/features/queue/presentation/queue_home_controller.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:client/src/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:with_opacity/with_opacity.dart';

class QueueListWidget extends StatelessWidget {
  final List<QueueItem> items;

  const QueueListWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverMasonryGrid.extent(
        maxCrossAxisExtent: 800,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return QueueItemTile(item: item);
        },
      ),
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
    final colorScheme = theme.colorScheme;

    IconData sourceIcon = item.isRadarr ? Icons.movie : Icons.tv;
    Color? statusColor;
    IconData statusIcon;
    Color cardColor = theme.cardColor;

    switch (item.status.toLowerCase()) {
      case 'downloading':
        statusIcon = Icons.download;
        statusColor = colorScheme.primary;
        break;
      case 'completed':
        statusIcon = Icons.check_circle;
        statusColor = Colors.green;
        cardColor = colorScheme.surfaceContainerLowest.withCustomOpacity(0.9);
        break;
      case 'warning':
        statusIcon = Icons.warning;
        statusColor = Colors.orange;
        break;
      case 'error':
        statusIcon = Icons.error;
        statusColor = Colors.red;
        cardColor = Colors.red.withCustomOpacity(0.05);
        break;
      default:
        statusIcon = Icons.hourglass_empty;
        statusColor = colorScheme.onSurface.withCustomOpacity(0.6);
        break;
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      elevation: 2,
      color: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: statusColor.withCustomOpacity(0.3), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: (item.isRadarr ? Colors.orange : Colors.blue)
                        .withCustomOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    sourceIcon,
                    size: 22,
                    color: item.isRadarr ? Colors.orange : Colors.blue,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: titleStyle?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Icon(statusIcon, size: 14, color: statusColor),
                          const SizedBox(width: 4),
                          Text(
                            item.status.capitalizeByWord(),
                            style: subtitleStyle?.copyWith(
                              color: statusColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (item.status.toLowerCase() == 'downloading' && item.size != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: item.progress / 100,
                      backgroundColor:
                          theme.colorScheme.surfaceContainerHighest,
                      minHeight: 8,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.storage,
                            size: 14,
                            color: theme.colorScheme.onSurface
                                .withCustomOpacity(0.7),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${item.progress.toStringAsFixed(1)}% of ${FormatUtils.formatFileSize(item.size!)}',
                            style: subtitleStyle?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: theme.colorScheme.onSurface
                                  .withCustomOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                      if (item.estimatedCompletionTime != null)
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 14,
                              color: theme.colorScheme.onSurface
                                  .withCustomOpacity(0.7),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'ETA: ${FormatUtils.formatDateTime(item.estimatedCompletionTime!)}',
                              style: subtitleStyle?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: theme.colorScheme.onSurface
                                    .withCustomOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ],
              ),
            if (item.errorMessage != null && item.errorMessage!.isNotEmpty)
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.withCustomOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red.withCustomOpacity(0.3)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.error_outline, color: Colors.red, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        item.errorMessage!,
                        style: subtitleStyle?.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 8),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: theme.colorScheme.error,
                  ),
                  icon: const Icon(Icons.delete_outline, size: 18),
                  label: const Text('Remove'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        title: Row(
                          children: [
                            Icon(
                              Icons.delete_outline,
                              color: theme.colorScheme.error,
                            ),
                            const SizedBox(width: 8),
                            const Text('Remove from Queue'),
                          ],
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Choose an action for:',
                              style: theme.textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.surfaceContainerHighest,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    item.isRadarr ? Icons.movie : Icons.tv,
                                    size: 18,
                                    color: item.isRadarr
                                        ? Colors.orange
                                        : Colors.blue,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      item.title,
                                      style: theme.textTheme.titleSmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton.icon(
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
                            icon: const Icon(Icons.visibility_off, size: 18),
                            label: const Text('Ignore Download'),
                          ),
                          TextButton.icon(
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
                            icon: const Icon(Icons.delete, size: 18),
                            label: const Text('Remove from Client'),
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              foregroundColor: theme.colorScheme.error,
                            ),
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
                            icon: const Icon(Icons.block, size: 18),
                            label: const Text('Blacklist Release'),
                          ),
                          OutlinedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Cancel'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
