import 'package:flutter/material.dart';
import 'package:sonarr/sonarr.dart';

class MediaSpecsGrid extends StatelessWidget {
  final SeriesResource series;

  const MediaSpecsGrid({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(
            'SERIES SPECS',
            style: tt.labelSmall!.copyWith(
              fontSize: 9,
              color: cs.outline,
              letterSpacing: 2.0,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: _SpecCell(
                label: 'TYPE',
                value: series.seriesType?.name.toString().split('.').last.toUpperCase() ?? 'UNKNOWN',
              ),
            ),
            const SizedBox(width: 3),
            Expanded(
              child: _SpecCell(
                label: 'STATUS',
                value: series.status?.name.toString().split('.').last.toUpperCase() ?? 'UNKNOWN',
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        Row(
          children: [
            Expanded(
              child: _SpecCell(
                label: 'RUNTIME',
                value: '${series.runtime ?? 0} MIN',
              ),
            ),
            const SizedBox(width: 3),
            Expanded(
              child: _SpecCell(
                label: 'RATING',
                value: series.ratings?.value != null ? '${series.ratings!.value}/10' : 'N/A',
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        _SpecCell(
          label: 'QUALITY',
          value: 'PROFILE ${series.qualityProfileId ?? 0}',
          isAccent: true,
        ),
      ],
    );
  }
}

class _SpecCell extends StatelessWidget {
  final String label;
  final String value;
  final bool isAccent;

  const _SpecCell({
    required this.label,
    required this.value,
    this.isAccent = false,
  });

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
            label,
            style: tt.labelSmall!.copyWith(
              fontSize: 9,
              color: cs.outline,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: tt.headlineSmall!.copyWith(
              fontSize: 18,
              color: isAccent ? cs.primary : cs.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
