import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesStatusIndicators extends StatelessWidget {
  final SonarrSeries series;

  const SeriesStatusIndicators({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool isMonitored = series.monitored ?? false;

    return Card(
      margin: const EdgeInsets.fromLTRB(20, 12, 20, 0),
      elevation: 2,
      shadowColor: theme.colorScheme.shadow.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildStatusIndicator(
              context,
              isMonitored ? 'Monitored' : 'Not Monitored',
              isMonitored ? Icons.visibility : Icons.visibility_off,
              isMonitored ? Colors.green : Colors.grey,
              isMonitored,
            ),
            const SizedBox(width: 16),
            _buildStatusIndicator(
              context,
              series.status ?? 'Unknown',
              _getStatusIcon(series.status),
              _getStatusColor(theme, series.status),
              true,
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(ThemeData theme, String? status) {
    if (status == null) return theme.colorScheme.tertiary;

    switch (status.toLowerCase()) {
      case 'continuing':
        return Colors.green;
      case 'ended':
        return Colors.orange;
      default:
        return theme.colorScheme.tertiary;
    }
  }

  IconData _getStatusIcon(String? status) {
    if (status == null) return Icons.help_outline;

    switch (status.toLowerCase()) {
      case 'continuing':
        return Icons.play_circle_outline;
      case 'ended':
        return Icons.check_circle_outline;
      default:
        return Icons.tv;
    }
  }

  Widget _buildStatusIndicator(
    BuildContext context,
    String label,
    IconData icon,
    Color color,
    bool active,
  ) {
    final theme = Theme.of(context);

    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          color: active
              ? color.withOpacity(0.12)
              : theme.colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: active ? color.withOpacity(0.5) : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: active ? color : theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: theme.textTheme.labelLarge?.copyWith(
                color: active ? color : theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
