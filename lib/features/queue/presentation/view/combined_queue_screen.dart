import 'dart:async';

import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/queue/application/provider/combined_queue_provider.dart';
import 'package:client/features/queue/presentation/widgets/unified_queue_item_card.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CombinedQueueScreen extends ConsumerStatefulWidget {
  const CombinedQueueScreen({super.key});

  @override
  ConsumerState<CombinedQueueScreen> createState() => _CombinedQueueScreenState();
}

class _CombinedQueueScreenState extends ConsumerState<CombinedQueueScreen>
    with AutomaticKeepAliveClientMixin {
  Timer? _refreshTimer;

  @override
  bool get wantKeepAlive => true;

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
    _refreshTimer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (mounted) {
        ref.read(combinedQueueNotifierProvider.notifier).refreshQueue();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin
    
    final queueValue = ref.watch(combinedQueueProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Downloads',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 2,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh Queue',
            onPressed: () {
              ref.read(combinedQueueNotifierProvider.notifier).refreshQueue();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
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
            child: SafeArea(
              child: RefreshIndicator(
                onRefresh: () => ref
                    .read(combinedQueueNotifierProvider.notifier)
                    .refreshQueue(),
                child: queueValue.when(
                  data: (queue) {
                    if (queue.isEmpty) {
                      return const _EmptyQueueView();
                    }

                    return ListView.builder(
                      padding: const EdgeInsets.fromLTRB(
                        8,
                        8,
                        8,
                        kBottomNavigationBarHeight + 16,
                      ),
                      itemCount: queue.length,
                      itemBuilder: (context, index) {
                        final queueItem = queue[index];
                        return Entry.offset(
                          yOffset: 50,
                          xOffset: index.isEven ? -10 : 10,
                          duration: Duration(milliseconds: 300 + (index % 5) * 50),
                          child: Entry.opacity(
                            duration: Duration(milliseconds: 300 + (index % 5) * 50),
                            child: UnifiedQueueItemCard(queueItem: queueItem),
                          ),
                        );
                      },
                    );
                  },
                  loading: () => Center(
                    child: CircularProgressIndicator(color: colorScheme.primary),
                  ),
                  error: (err, stack) => ErrorView(
                    error: err,
                    customMessage: 'Failed to load download queue',
                    onRetry: () => ref.invalidate(combinedQueueProvider),
                  ),
                ),
              ),
            ),
          ),
        ],
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
          child: Entry.opacity(
            duration: const Duration(milliseconds: 600),
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
                  'No downloads in progress for movies or TV shows',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _EmptyQueueServiceCard(
                      icon: Icons.tv,
                      label: 'TV Shows',
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 16),
                    _EmptyQueueServiceCard(
                      icon: Icons.movie,
                      label: 'Movies',
                      color: Colors.orange,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyQueueServiceCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _EmptyQueueServiceCard({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: color.withAlpha(26),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: color.withAlpha(51),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: color,
            size: 20,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
