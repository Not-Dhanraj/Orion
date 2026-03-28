import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:client/src/features/queue/presentation/queue_controller.dart';
import 'package:client/src/features/queue/presentation/widgets/queue_item_widget.dart';
import 'package:client/src/shared/widgets/animated_progress_bar.dart';
import 'package:client/src/shared/widgets/custom_error_state.dart';
import 'package:client/src/utils/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueuePage extends ConsumerWidget {
  const QueuePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queueState = ref.watch(queueHomeController);

    return Scaffold(
      body: queueState.when(
        skipLoadingOnReload: false,
        loading: () => Stack(
          children: [
            Align(
              alignment: AlignmentGeometry.topCenter,
              child: SizedBox(
                height: 1.5,
                width: 512,
                child: AnimatedProgressBar(width: context.screenWidth),
              ),
            ),
            const Center(child: Text('Loading')),
          ],
        ),
        error: (err, stack) => Center(
          child: CustomErrorState(
            error: err,
            stackTrace: stack,
            onRetry: () =>
                ref.read(queueHomeController.notifier).refreshQueue(),
          ),
        ),
        data: (items) => _QueueBody(items: items, queueState: queueState),
      ),
    );
  }
}

class _QueueBody extends ConsumerWidget {
  final List<QueueItem> items;
  final AsyncValue<List<QueueItem>> queueState;

  const _QueueBody({required this.items, required this.queueState});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () => ref.read(queueHomeController.notifier).refreshQueue(),
      child: Column(
        children: [
          SizedBox(
            height: 1.5,
            width: 512,
            child: AnimatedOpacity(
              opacity: queueState.isLoading ? 1 : 0,
              duration: Duration(milliseconds: 200),

              child: AnimatedProgressBar(width: context.screenWidth),
            ),
          ),
          Expanded(
            child: items.isEmpty ? _EmptyState() : _ItemList(items: items),
          ),
        ],
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 512),
                  child: const _QueueHeader(itemCount: 0),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 48,
                      color: cs.outline,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Queue is empty',
                      style: tt.bodyMedium!.copyWith(
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemList extends StatelessWidget {
  final List<QueueItem> items;

  const _ItemList({required this.items});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 120),
            itemCount: items.length + 2,
            itemBuilder: (context, index) {
              if (index == 0) return _QueueHeader(itemCount: items.length);
              if (index == 1) return const SizedBox(height: 32);
              return QueueItemWidget(item: items[index - 2]);
            },
          ),
        );
      },
    );
  }
}

class _QueueHeader extends StatelessWidget {
  final int itemCount;
  const _QueueHeader({required this.itemCount});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'QUEUE',
              style: tt.displayLarge!.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: itemCount > 0 ? cs.primary : cs.outline,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  itemCount > 0
                      ? '$itemCount ITEM${itemCount == 1 ? '' : 'S'} ACTIVE'
                      : 'IDLE',
                  style: tt.labelSmall!.copyWith(
                    color: itemCount > 0 ? cs.primary : cs.outline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'ITEMS',
              style: tt.labelSmall!.copyWith(
                fontSize: 10,
                color: cs.onSurfaceVariant,
              ),
            ),
            Text(
              '$itemCount',
              style: tt.displaySmall!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
