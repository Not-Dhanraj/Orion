import 'package:client/src/shared/utils/context_extensions.dart';
import 'package:flutter/material.dart';

class LibrarySectionHeader extends StatelessWidget {
  final String letter;
  const LibrarySectionHeader({super.key, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(
        letter,
        style: context.textTheme.labelSmall!.copyWith(
          fontSize: 10,
          color: context.colorScheme.outline,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
