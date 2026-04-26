import 'package:client/src/features/queue/domain/queue_item_extension.dart';
import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:client/src/features/queue/presentation/queue_controller.dart';
import 'package:client/src/shared/widgets/dialogs/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class QueueItemWidget extends ConsumerWidget {
  final QueueItem item;

  const QueueItemWidget({super.key, required this.item});

  Color _etaColor(ColorScheme cs) {
    if (item.isStalled) return cs.error;
    if (item.displayStatus == 'Failed') return cs.error;
    if (item.displayStatus == 'Warning') return Colors.orange;
    return item.isActive ? cs.primary : cs.onSurfaceVariant;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;
    final dividerColor =
        (Theme.of(context).dividerTheme.color ?? Colors.transparent).withValues(
          alpha: 0.1,
        );

    return AnimatedOpacity(
      duration: Duration(milliseconds: 300),
      opacity: item.isActive ? 1.0 : 0.8,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: cs.surface,
          border: Border(bottom: BorderSide(color: dividerColor)),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          item.title,
                          style: tt.titleSmall!.copyWith(
                            color: cs.onSurface,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        item.eta.toUpperCase(),
                        style: tt.labelSmall!.copyWith(
                          color: _etaColor(cs),
                          fontWeight: item.isActive
                              ? FontWeight.bold
                              : FontWeight.normal,
                          fontStyle: item.isActive
                              ? FontStyle.normal
                              : FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          if (item.specs != null) ...[
                            Text(
                              item.specs!,
                              style: tt.labelSmall!.copyWith(
                                fontSize: 10,
                                color: cs.onSurfaceVariant.withValues(
                                  alpha: 0.6,
                                ),
                              ),
                            ),
                            _Divider(cs: cs),
                          ],
                          Text(
                            item.formattedSize,
                            style: tt.labelSmall!.copyWith(
                              fontSize: 10,
                              color: cs.onSurfaceVariant.withValues(alpha: 0.6),
                            ),
                          ),
                          _Divider(cs: cs),
                          Text(
                            '${item.progressClamped}%',
                            style: tt.labelSmall!.copyWith(
                              fontSize: 10,
                              color: cs.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          _Divider(cs: cs),
                          Icon(
                            item.isRadarr ? Icons.movie : Icons.video_library,
                            size: 14,
                            color: (item.isRadarr ? Colors.yellow : Colors.blue)
                                .withAlpha(150),
                          ),
                        ],
                      ),
                      _ActionButton(
                        icon: Icons.close,
                        color: cs.onSurface,
                        onTap: () => _confirmRemove(context, ref),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 2,
                color: cs.surfaceContainerHighest,
                child: item.progressClamped > 0
                    ? FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: item.progressClamped / 100,
                        child: Container(color: cs.primary),
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmRemove(BuildContext context, WidgetRef ref) {
    void remove({required bool fromClient, required bool blacklist}) {
      context.pop();
      ref
          .read(queueHomeController.notifier)
          .removeItem(item, removeFromClient: fromClient, blacklist: blacklist);
    }

    showDialog<void>(
      context: context,
      builder: (_) => Dialog(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: CustomDialog(
            title: 'REMOVE FROM QUEUE',
            heading: item.title,
            body: 'Choose how to handle this download.',
            actions: [
              TextButton(
                onPressed: () => remove(fromClient: false, blacklist: false),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
                child: const Text('Ignore'),
              ),
              TextButton(
                onPressed: () => remove(fromClient: true, blacklist: false),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
                child: const Text('Remove from Client'),
              ),
              TextButton(
                onPressed: () => remove(fromClient: true, blacklist: true),
                style: TextButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.error,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
                child: const Text('Blacklist'),
              ),
              // OutlinedButton(
              //   onPressed: () => context.pop(),
              //   child: const Text('Cancel'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  final ColorScheme cs;
  const _Divider({required this.cs});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        '|',
        style: TextStyle(
          color: cs.outlineVariant.withValues(alpha: 0.3),
          fontSize: 10,
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Icon(icon, size: 16, color: color),
    );
  }
}
