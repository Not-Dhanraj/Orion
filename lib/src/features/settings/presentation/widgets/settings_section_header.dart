import 'package:flutter/material.dart';

class SettingsSectionHeader extends StatelessWidget {
  final String title;
  final bool isActive;

  const SettingsSectionHeader({
    super.key,
    required this.title,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Row(
      children: [
        Container(
          width: 2,
          height: 16,
          color: isActive ? cs.primary : cs.outlineVariant,
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: tt.labelSmall!.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: cs.outline,
          ),
        ),
      ],
    );
  }
}
