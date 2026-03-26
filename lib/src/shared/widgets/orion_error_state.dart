import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrionErrorState extends StatefulWidget {
  final Object error;
  final StackTrace? stackTrace;
  final String? title;
  final VoidCallback? onRetry;

  const OrionErrorState({
    super.key,
    required this.error,
    this.stackTrace,
    this.title,
    this.onRetry,
  });

  @override
  State<OrionErrorState> createState() => _OrionErrorStateState();
}

class _OrionErrorStateState extends State<OrionErrorState> {
  bool _copied = false;

  String get _errorText {
    final stackStr = widget.stackTrace != null
        ? '\n\n${widget.stackTrace}'
        : '';
    return '${widget.error}$stackStr';
  }

  Future<void> _copyError() async {
    await Clipboard.setData(ClipboardData(text: _errorText));
    if (!mounted) return;
    setState(() => _copied = true);
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) setState(() => _copied = false);
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(width: 4, height: 40, color: cs.error),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title?.toUpperCase() ?? 'OPERATION FAILED',
                        style: tt.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          color: cs.error,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'An unhandled exception interrupted this operation.',
                        style: tt.bodySmall!.copyWith(
                          color: cs.onSurfaceVariant,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: cs.surfaceContainerHigh,
                  border: Border.all(color: cs.error.withValues(alpha: 0.2)),
                ),
                child: SelectionArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.terminal,
                            size: 12,
                            color: cs.error.withValues(alpha: 0.6),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'ERROR TRACE',
                            style: tt.labelSmall!.copyWith(
                              fontSize: 9,
                              color: cs.error.withValues(alpha: 0.7),
                              letterSpacing: 2.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${widget.error}',
                        maxLines: 2,
                        style: tt.bodySmall!.copyWith(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 11,
                          height: 1.6,
                          color: cs.error.withValues(alpha: 0.85),
                        ),
                      ),
                      if (widget.stackTrace != null) ...[
                        const SizedBox(height: 8),
                        Container(
                          height: 1,
                          color: cs.error.withValues(alpha: 0.1),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${widget.stackTrace}',
                          maxLines: 10,
                          style: tt.bodySmall!.copyWith(
                            fontSize: 10,
                            height: 1.5,
                            overflow: TextOverflow.ellipsis,
                            color: cs.onSurfaceVariant.withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                    onPressed: _copyError,
                    icon: Icon(
                      _copied ? Icons.check : Icons.copy_outlined,
                      size: 13,
                    ),
                    label: Text(_copied ? 'COPIED' : 'COPY TRACE'),
                    style: TextButton.styleFrom(
                      foregroundColor: _copied
                          ? cs.primary
                          : cs.onSurfaceVariant,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    ),
                  ),
                  if (widget.onRetry != null) ...[
                    const SizedBox(width: 8),
                    OutlinedButton.icon(
                      onPressed: widget.onRetry,
                      icon: const Icon(Icons.refresh, size: 14),
                      label: const Text('RETRY'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: cs.primary,
                        side: BorderSide(
                          color: cs.primary.withValues(alpha: 0.4),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
