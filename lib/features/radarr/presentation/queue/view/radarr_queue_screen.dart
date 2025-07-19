import 'dart:async';

import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/radarr/application/provider/queue_provider/queue_provider.dart';
import 'package:client/features/radarr/application/provider/queue_provider/delete_queue_item_provider.dart';
import 'package:client/features/radarr/presentation/queue/widgets/queue_item_card.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RadarrQueueScreen extends ConsumerStatefulWidget {
  const RadarrQueueScreen({super.key});

  @override
  ConsumerState<RadarrQueueScreen> createState() => _RadarrQueueScreenState();
}

class _RadarrQueueScreenState extends ConsumerState<RadarrQueueScreen> {
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
    _refreshTimer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (mounted) {
        ref.read(radarrQueueNotifierProvider.notifier).refreshQueue();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final queueData = ref.watch(queueProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Download Queue'), centerTitle: true),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.read(radarrQueueNotifierProvider.notifier).refreshQueue(),
        child: queueData.when(
          data: (queueItems) {
            final records = queueItems.records ?? [];

            if (records.isEmpty) {
              return const _EmptyQueueView();
            }

            return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: records.length,
              itemBuilder: (context, index) {
                final queueItem = records[index];
                return Entry.opacity(
                  duration: const Duration(milliseconds: 300),
                  child: QueueItemCard(queueItem: queueItem),
                );
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => ErrorView(
            error: error,
            customMessage: 'Failed to load queue',
            onRetry: () => ref.invalidate(queueProvider),
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
