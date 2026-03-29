import 'package:flutter/material.dart';

class LibrarySegmentedControl extends StatelessWidget {
  final List<String> tabs;
  final int activeIndex;
  final ValueChanged<int> onIndexChanged;

  const LibrarySegmentedControl({
    super.key,
    required this.tabs,
    required this.activeIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: (Theme.of(context).dividerTheme.color ?? Colors.transparent)
                .withValues(alpha: 0.3),
          ),
        ),
      ),
      child: Row(
        children: [
          for (var i = 0; i < tabs.length; i++) ...[
            if (i > 0) const SizedBox(width: 32),
            _SegmentButton(
              label: tabs[i],
              isActive: activeIndex == i,
              onTap: () => onIndexChanged(i),
            ),
          ],
        ],
      ),
    );
  }
}

class _SegmentButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _SegmentButton({
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          border: isActive
              ? Border(bottom: BorderSide(color: cs.primary, width: 2))
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 1, 2, 4),
              child: Text(
                label,
                style: tt.labelSmall!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: isActive
                      ? cs.primary
                      : cs.outline.withValues(alpha: 0.6),
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
