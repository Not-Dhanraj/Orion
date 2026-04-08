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
