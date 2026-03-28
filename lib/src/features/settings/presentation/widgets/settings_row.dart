import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  final String label;
  final Widget trailing;

  const SettingsRow({super.key, required this.label, required this.trailing});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Container(
      color: cs.surface,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: tt.bodySmall!.copyWith(color: cs.onSurfaceVariant),
          ),
          trailing,
        ],
      ),
    );
  }
}

class SettingsRowGroup extends StatelessWidget {
  final List<Widget> rows;

  const SettingsRowGroup({super.key, required this.rows});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final separated = <Widget>[];
    for (var i = 0; i < rows.length; i++) {
      separated.add(rows[i]);
      if (i < rows.length - 1) {
        separated.add(
          Container(
            height: 1,
            color: cs.outlineVariant.withValues(alpha: 0.08),
          ),
        );
      }
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.08)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: separated,
      ),
    );
  }
}
