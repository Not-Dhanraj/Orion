import 'package:flutter/material.dart';

class SheetButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool filled;
  final bool destructive;

  const SheetButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.filled,
    this.destructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final activeColor = destructive ? cs.error : cs.primary;
    final onActiveColor = destructive ? cs.onError : cs.onPrimary;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        height: 48,
        decoration: BoxDecoration(
          color: filled
              ? (onTap == null
                    ? cs.onSurface.withValues(alpha: 0.12)
                    : activeColor)
              : Colors.transparent,
          border: filled
              ? null
              : Border.all(color: cs.outlineVariant.withValues(alpha: 0.5)),
        ),
        child: Center(
          child: Text(
            label,
            style: tt.labelLarge!.copyWith(
              color: filled
                  ? (onTap == null
                        ? cs.onSurface.withValues(alpha: 0.38)
                        : onActiveColor)
                  : cs.onSurfaceVariant,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
