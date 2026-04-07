import 'package:flutter/material.dart';

class MediaOverview extends StatelessWidget {
  final String overview;
  final String label;

  const MediaOverview({
    super.key,
    required this.overview,
    this.label = 'OVERVIEW',
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: tt.labelSmall!.copyWith(
            fontSize: 9,
            letterSpacing: 2.0,
            color: cs.outline,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          overview,
          style: tt.bodyMedium!.copyWith(
            color: cs.onSurfaceVariant,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}
