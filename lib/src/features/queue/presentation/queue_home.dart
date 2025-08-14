import 'package:client/src/features/queue/application/queue_service.dart';
import 'package:client/src/features/queue/presentation/queue_home_controller.dart';
import 'package:client/src/features/queue/presentation/widgets/queue_list_widget.dart';
import 'package:client/src/shared/widgets/error_message.dart';
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
      // Add a very small delay to make sure the indicator is visible
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() => _isRefreshing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final queueState = ref.watch(queueHomeControllerProvider);
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
                  child: QueueListWidget(items: queueItems),
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
