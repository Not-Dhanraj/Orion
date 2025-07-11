import 'dart:async';

import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/sonarr/application/provider/queue_provider/queue_provider.dart';
import 'package:client/features/sonarr/presentation/queue/widgets/queue_item_card.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    _refreshTimer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (mounted) {
        ref.read(queueNotifierProvider.notifier).refreshQueue();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final queueValue = ref.watch(sonarrQueueProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Download Queue'), centerTitle: true),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.read(queueNotifierProvider.notifier).refreshQueue(),
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
                  child: QueueItemCard(queueItem: queueItem),
                );
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => ErrorView(
            error: err,
            onRetry: () => ref.invalidate(sonarrQueueProvider),
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
