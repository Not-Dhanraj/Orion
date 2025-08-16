import 'package:client/src/features/queue/presentation/queue_home_controller.dart';
import 'package:client/src/features/queue/presentation/widgets/queue_list_widget.dart';
import 'package:client/src/shared/widgets/error_message.dart';
import 'package:entry/entry.dart';
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
    await ref.read(queueHomeControllerProvider.notifier).refreshQueue();
    if (mounted) {
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() => _isRefreshing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final queueState = ref.watch(queueHomeControllerProvider);

    return Entry.opacity(
      child: RefreshIndicator(
        onRefresh: _refreshQueue,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
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
              floating: true,
              snap: true,
            ),
            queueState.when(
              data: (queueItems) {
                if (queueItems.isEmpty) {
                  return SliverFillRemaining(
                    child: Center(child: Text('No items in queue')),
                  );
                }
                // Use ScrollNotificationInterceptor for RefreshIndicator to work with slivers
                return SliverPadding(
                  padding: EdgeInsets.zero,
                  sliver: QueueListWidget(items: queueItems),
                );
              },
              loading: () => SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, stackTrace) => SliverFillRemaining(
                child: ErrorMessage(
                  message: 'Error loading queue: $error',
                  onRetry: _refreshQueue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
