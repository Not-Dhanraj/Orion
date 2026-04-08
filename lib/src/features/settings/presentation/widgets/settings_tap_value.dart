import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class SettingsTapValue extends StatelessWidget {
  final String value;
  final VoidCallback onTap;
  const SettingsTapValue({super.key, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(value, style: tt.labelMedium!.copyWith(color: cs.primary)),
          const SizedBox(width: 6),
          Icon(TablerIcons.chevron_right, size: 14, color: cs.outline),
        ],
      ),
    );
  }
}
