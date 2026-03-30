import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () => onChanged(!value),
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 36,
        height: 20,
        decoration: BoxDecoration(
          color: value ? cs.primary : cs.surfaceContainerHigh,
          border: value ? null : Border.all(color: cs.outlineVariant),
          borderRadius: BorderRadius.circular(2),
        ),
        alignment: value ? Alignment.centerRight : Alignment.centerLeft,
        padding: const EdgeInsets.all(3),
        child: Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: value ? cs.onPrimary : cs.outline,
            borderRadius: BorderRadius.circular(1),
          ),
        ),
      ),
    );
  }
}
