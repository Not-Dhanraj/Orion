import 'package:flutter/material.dart';

class StatRow {
  final String label;
  final String value;
  final bool accent;

  const StatRow({
    required this.label,
    required this.value,
    this.accent = false,
  });
}

class TelemetryCategory {
  final String title;
  final List<StatRow> rows;
  final bool accentLeft;

  const TelemetryCategory({
    required this.title,
    required this.rows,
    this.accentLeft = false,
  });
}

class MediaTelemetry extends StatelessWidget {
  final List<TelemetryCategory> categories;

  const MediaTelemetry({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isMobile = MediaQuery.of(context).size.width < 768;

    if (isMobile) {
      return Column(
        children: categories.expand((cat) {
          return [
            _TelemetryCard(category: cat, cs: cs),
            const SizedBox(height: 12),
          ];
        }).toList(),
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: categories.map((cat) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: _TelemetryCard(category: cat, cs: cs),
          ),
        );
      }).toList(),
    );
  }
}

class _TelemetryCard extends StatelessWidget {
  final TelemetryCategory category;
  final ColorScheme cs;

  const _TelemetryCard({required this.category, required this.cs});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(20),
      constraints: const BoxConstraints(minHeight: 180),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        border: category.accentLeft
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
            category.title,
            style: tt.labelSmall!.copyWith(
              fontSize: 9,
              color: cs.outline,
              letterSpacing: 2.0,
            ),
          ),
          const SizedBox(height: 20),
          ...category.rows.map((row) => _StatRowWidget(row: row)),
        ],
      ),
    );
  }
}

class _StatRowWidget extends StatelessWidget {
  final StatRow row;

  const _StatRowWidget({required this.row});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(row.label, style: tt.bodyMedium!.copyWith(fontSize: 12)),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              row.value,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              style: tt.labelSmall!.copyWith(
                fontSize: 12,
                color: row.accent ? cs.primary : cs.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
