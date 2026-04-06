import 'package:flutter/material.dart';
import 'package:sonarr/sonarr.dart';

class MediaTelemetry extends StatelessWidget {
  final SeriesResource series;

  const MediaTelemetry({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isMobile = MediaQuery.of(context).size.width < 768;

    final storage = [
      _StatRow(
        label: 'Total Weight',
        value:
            '${((series.statistics?.sizeOnDisk ?? 0) / 1073741824).toStringAsFixed(1)} GB',
        accent: true,
      ),
      _StatRow(
        label: 'Episodes',
        value:
            '${series.statistics?.episodeFileCount ?? 0} / ${series.statistics?.episodeCount ?? 0}',
      ),
    ];
    final metadata = [
      _StatRow(label: 'Network', value: series.network ?? 'UNKNOWN'),
      _StatRow(label: 'Year', value: '${series.year ?? 'UNKNOWN'}'),
    ];
    final network = [
      _StatRow(
        label: 'Language',
        value: series.originalLanguage?.name ?? 'UNKNOWN',
      ),
      _StatRow(label: 'Path', value: series.path?.split('/').last ?? 'UNKNOWN'),
    ];

    if (isMobile) {
      return Column(
        children: [
          _TelemetryCard(
            title: 'STORAGE TELEMETRY',
            accentLeft: true,
            rows: storage,
            cs: cs,
          ),
          const SizedBox(height: 12),
          _TelemetryCard(title: 'METADATA HEALTH', rows: metadata, cs: cs),
          const SizedBox(height: 12),
          _TelemetryCard(title: 'NETWORK NODE', rows: network, cs: cs),
        ],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _TelemetryCard(
            title: 'STORAGE TELEMETRY',
            accentLeft: true,
            rows: storage,
            cs: cs,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _TelemetryCard(
            title: 'METADATA HEALTH',
            rows: metadata,
            cs: cs,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _TelemetryCard(title: 'NETWORK NODE', rows: network, cs: cs),
        ),
      ],
    );
  }
}

class _TelemetryCard extends StatelessWidget {
  final String title;
  final bool accentLeft;
  final List<_StatRow> rows;
  final ColorScheme cs;

  const _TelemetryCard({
    required this.title,
    required this.rows,
    required this.cs,
    this.accentLeft = false,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        border: accentLeft
            ? Border(
                left: BorderSide(
                  color: cs.primary.withValues(alpha: 0.5),
                  width: 2,
                ),
              )
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: tt.labelSmall!.copyWith(
              fontSize: 9,
              color: cs.outline,
              letterSpacing: 2.0,
            ),
          ),
          const SizedBox(height: 20),
          ...rows,
        ],
      ),
    );
  }
}

class _StatRow extends StatelessWidget {
  final String label;
  final String value;
  final bool accent;

  const _StatRow({
    required this.label,
    required this.value,
    this.accent = false,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: tt.bodyMedium!.copyWith(fontSize: 12)),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              style: tt.labelSmall!.copyWith(
                fontSize: 12,
                color: accent ? cs.primary : cs.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
