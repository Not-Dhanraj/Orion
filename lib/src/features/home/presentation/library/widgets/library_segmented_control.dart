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

  // TODO FIX Search
  void _showSearchBottomSheet(BuildContext context, String label) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(8),
        //   topRight: Radius.circular(8),
        // ),
      ),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.9,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SYSTEM SEARCH / $label',
                    style: tt.labelLarge!.copyWith(
                      letterSpacing: 4.0,
                      color: cs.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 20),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: cs.primary.withValues(alpha: 0.2)),
                ),
                child: TextField(
                  autofocus: true,
                  style: tt.bodyLarge,
                  decoration: InputDecoration(
                    hintText: 'Search Library...',
                    prefixIcon: Icon(Icons.search, color: cs.primary, size: 24),
                    border: InputBorder.none,
                    isDense: false,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const SizedBox(height: 16),
              const Text('Will Fix with something'),
            ],
          ),
        );
      },
    );
  }

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
              onSearch: () => _showSearchBottomSheet(context, tabs[i]),
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
  final VoidCallback onSearch;

  const _SegmentButton({
    required this.label,
    required this.isActive,
    required this.onTap,
    required this.onSearch,
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
            Text(
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
            const SizedBox(width: 8),
            Opacity(
              opacity: isActive ? 1.0 : 0.0,
              child: IgnorePointer(
                ignoring: !isActive,
                child: GestureDetector(
                  onTap: onSearch,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: cs.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(Icons.search, size: 16, color: cs.primary),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
