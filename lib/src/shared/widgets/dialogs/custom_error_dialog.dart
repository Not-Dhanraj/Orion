import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomErrorDialog extends StatelessWidget {
  final String title;
  final String errorMessage;
  final VoidCallback? onClose;

  const CustomErrorDialog({
    super.key,
    this.title = 'SYSTEM FAULT',
    required this.errorMessage,
    this.onClose,
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
          border: Border.all(color: cs.error.withValues(alpha: 0.35)),
          boxShadow: [
            BoxShadow(
              color: cs.error.withValues(alpha: 0.08),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ErrorTitleBar(title: title),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    color: cs.error.withValues(alpha: 0.1),
                    child: Icon(Icons.error_outline, color: cs.error),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ERROR TRACE',
                          style: tt.labelSmall!.copyWith(
                            fontSize: 9,
                            color: cs.error,
                            letterSpacing: 2.0,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          color: cs.surfaceContainerHighest,
                          child: SelectableText(
                            errorMessage,
                            style: tt.bodySmall!.copyWith(
                              fontSize: 11,
                              height: 1.6,
                              color: cs.error.withValues(alpha: 0.9),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _ErrorFooter(errorMessage: errorMessage, onClose: onClose),
          ],
        ),
      ),
    );
  }
}

class _ErrorTitleBar extends StatelessWidget {
  final String title;
  const _ErrorTitleBar({required this.title});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: cs.error.withValues(alpha: 0.08),
        border: Border(
          bottom: BorderSide(color: cs.error.withValues(alpha: 0.2)),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: cs.error,
              borderRadius: BorderRadius.circular(1),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: tt.titleMedium!.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: cs.error,
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorFooter extends StatefulWidget {
  final String errorMessage;
  final VoidCallback? onClose;
  const _ErrorFooter({required this.errorMessage, this.onClose});

  @override
  State<_ErrorFooter> createState() => _ErrorFooterState();
}

class _ErrorFooterState extends State<_ErrorFooter> {
  bool _copied = false;

  Future<void> _copyError() async {
    await Clipboard.setData(ClipboardData(text: widget.errorMessage));
    if (!mounted) return;
    setState(() => _copied = true);
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) setState(() => _copied = false);
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        border: Border(
          top: BorderSide(color: cs.error.withValues(alpha: 0.15)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton.icon(
            onPressed: _copyError,
            icon: Icon(_copied ? Icons.check : Icons.copy_outlined, size: 13),
            label: Text(_copied ? 'COPIED' : 'COPY ERROR'),
            style: TextButton.styleFrom(
              foregroundColor: _copied ? cs.primary : cs.onSurfaceVariant,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
          ),
          const SizedBox(width: 12),
          OutlinedButton.icon(
            onPressed: widget.onClose ?? () => Navigator.maybePop(context),
            icon: const Icon(Icons.close, size: 13),
            label: const Text('DISMISS'),
            style: OutlinedButton.styleFrom(
              foregroundColor: cs.error,
              side: BorderSide(color: cs.error.withValues(alpha: 0.4)),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
          ),
        ],
      ),
    );
  }
}
