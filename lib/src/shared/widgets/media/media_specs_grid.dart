import 'package:client/src/shared/domain/media_spec.dart';
import 'package:flutter/material.dart';

class MediaSpecsGrid extends StatelessWidget {
  final String title;
  final List<MediaSpec> specs;

  const MediaSpecsGrid({super.key, required this.title, required this.specs});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    final List<List<MediaSpec>> rows = [];
    for (var i = 0; i < specs.length; i += 2) {
      if (i + 1 < specs.length) {
        rows.add([specs[i], specs[i + 1]]);
      } else {
        rows.add([specs[i]]);
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(
            title,
            style: tt.labelSmall!.copyWith(
              fontSize: 9,
              color: cs.outline,
              letterSpacing: 2.0,
            ),
          ),
        ),
        ...rows.map((row) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Row(
              children: [
                Expanded(child: _SpecCell(spec: row[0])),
                if (row.length > 1) ...[
                  const SizedBox(width: 3),
                  Expanded(child: _SpecCell(spec: row[1])),
                ],
              ],
            ),
          );
        }),
      ],
    );
  }
}

class _SpecCell extends StatelessWidget {
  final MediaSpec spec;

  const _SpecCell({required this.spec});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      constraints: const BoxConstraints(minHeight: 76),
      color: cs.surfaceContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            spec.label,
            style: tt.labelSmall!.copyWith(
              fontSize: 9,
              color: cs.outline,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            spec.value,
            style: tt.headlineSmall!.copyWith(
              fontSize: 18,
              color: spec.isAccent ? cs.primary : cs.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
