import 'package:flutter/material.dart';

class SettingsReadonlyValue extends StatelessWidget {
  final String value;
  const SettingsReadonlyValue({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Text(
      value,
      style: tt.labelMedium!.copyWith(color: cs.outline),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
