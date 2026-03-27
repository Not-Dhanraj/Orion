import 'package:client/src/utils/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String heading;
  final String body;
  final List<Widget> actions;

  const CustomDialog({
    super.key,
    required this.title,
    required this.heading,
    required this.body,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 800),
      child: Container(
        decoration: BoxDecoration(
          color: cs.surfaceContainerHigh,
          border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.4)),
          boxShadow: [
            BoxShadow(
              color: cs.shadow,
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DialogTitleBar(title: title),
            Padding(
              padding: EdgeInsets.all(context.isDesktop ? 24 : 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    color: cs.primary.withValues(alpha: 0.1),
                    child: Icon(Icons.priority_high, color: cs.primary),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          heading,
                          style: tt.titleMedium!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          body,
                          style: tt.bodySmall!.copyWith(
                            fontSize: 11,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _DialogFooter(actions: actions),
          ],
        ),
      ),
    );
  }
}

class _DialogTitleBar extends StatelessWidget {
  final String title;
  const _DialogTitleBar({required this.title});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: cs.surfaceBright,
        border: Border(
          bottom: BorderSide(color: cs.outlineVariant.withValues(alpha: 0.2)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: tt.titleMedium!.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          IconButton(
            icon: Icon(Icons.close, size: 16, color: cs.onSurfaceVariant),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

class _DialogFooter extends StatelessWidget {
  final List<Widget> actions;
  const _DialogFooter({required this.actions});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        border: Border(
          top: BorderSide(color: cs.outlineVariant.withValues(alpha: 0.2)),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.end,
        spacing: 8,
        runSpacing: 8,
        children: actions,
      ),
    );
  }
}
