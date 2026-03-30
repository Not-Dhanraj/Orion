import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  final String value;
  final List<String> items;
  final ValueChanged<String> onChanged;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  final _layerLink = LayerLink();
  final _triggerKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool _isOpen = false;

  void _open() {
    final box = _triggerKey.currentContext?.findRenderObject() as RenderBox?;
    final width = box?.size.width ?? 280.0;

    _overlayEntry = OverlayEntry(
      builder: (_) => _DropdownOverlay(
        layerLink: _layerLink,
        width: width,
        items: widget.items,
        selectedValue: widget.value,
        onSelected: (item) {
          widget.onChanged(item);
          _close();
        },
        onDismiss: _close,
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
    setState(() => _isOpen = true);
  }

  void _close() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() => _isOpen = false);
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _isOpen ? _close : _open,
        child: Container(
          key: _triggerKey,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: cs.surfaceContainer,
            border: Border.all(
              color: _isOpen
                  ? cs.primary.withValues(alpha: 0.5)
                  : cs.outlineVariant.withValues(alpha: 0.3),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.value, style: tt.labelLarge),
              AnimatedRotation(
                turns: _isOpen ? 0.5 : 0,
                duration: const Duration(milliseconds: 150),
                child: Icon(
                  Icons.expand_more,
                  size: 20,
                  color: cs.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DropdownOverlay extends StatelessWidget {
  const _DropdownOverlay({
    required this.layerLink,
    required this.width,
    required this.items,
    required this.selectedValue,
    required this.onSelected,
    required this.onDismiss,
  });

  final LayerLink layerLink;
  final double width;
  final List<String> items;
  final String selectedValue;
  final ValueChanged<String> onSelected;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Entry.opacity(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onDismiss,
        child: Stack(
          children: [
            const Positioned.fill(child: ColoredBox(color: Colors.transparent)),
            CompositedTransformFollower(
              link: layerLink,
              showWhenUnlinked: false,
              offset: const Offset(0, 48),
              child: SizedBox(
                width: width,
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: cs.surfaceContainerHigh,
                      border: Border.all(
                        color: cs.outlineVariant.withValues(alpha: 0.3),
                      ),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 280),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (_, index) => _DropdownItem(
                          label: items[index],
                          isSelected: items[index] == selectedValue,
                          onTap: () => onSelected(items[index]),
                        ),
                      ),
                    ),
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

class _DropdownItem extends StatefulWidget {
  const _DropdownItem({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  State<_DropdownItem> createState() => _DropdownItemState();
}

class _DropdownItemState extends State<_DropdownItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: ColoredBox(
          color: widget.isSelected
              ? cs.primary.withValues(alpha: 0.15)
              : _isHovered
              ? cs.surfaceContainerHighest
              : Colors.transparent,
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                widget.label,
                style: tt.labelLarge?.copyWith(
                  color: widget.isSelected ? cs.primary : cs.onSurface,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
