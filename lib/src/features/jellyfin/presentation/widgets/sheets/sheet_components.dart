import 'package:client/src/shared/widgets/sheets/sheet_header.dart';
import 'package:flutter/material.dart';

class BaseSheet extends StatelessWidget {
  final String title;
  final String label;
  final Widget child;

  const BaseSheet({
    super.key,
    required this.title,
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.7,
      ),
      child: Container(
        color: cs.surface,
        child: SafeArea(
          left: false,
          right: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: cs.surfaceContainerLow,
                  border: Border(
                    bottom: BorderSide(
                      color: cs.outlineVariant.withValues(alpha: 0.4),
                    ),
                  ),
                ),
                child: SheetHeader(
                  onClose: () => Navigator.of(context).pop(),
                  title: title,
                  label: label,
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionLabel extends StatelessWidget {
  final String label;

  const SectionLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Text(
      label,
      style: tt.labelSmall?.copyWith(
        color: cs.primary,
        letterSpacing: 2.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class TrackTile extends StatelessWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;

  const TrackTile({
    super.key,
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        child: Row(
          children: [
            Icon(
              active ? Icons.radio_button_checked : Icons.radio_button_off,
              color: active ? cs.primary : cs.onSurfaceVariant,
              size: 18,
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: tt.bodyMedium?.copyWith(
                color: active ? cs.onSurface : cs.onSurfaceVariant,
                fontWeight: active ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
