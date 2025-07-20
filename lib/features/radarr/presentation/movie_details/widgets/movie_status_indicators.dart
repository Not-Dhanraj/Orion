import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';
import 'package:with_opacity/with_opacity.dart';

class MovieStatusIndicators extends StatelessWidget {
  final RadarrMovie movie;

  const MovieStatusIndicators({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool isMonitored = movie.monitored ?? false;
    final bool hasFile = movie.hasFile ?? false;

    return Card(
      margin: const EdgeInsets.fromLTRB(20, 12, 20, 0),
      elevation: 2,
      shadowColor: theme.colorScheme.shadow.withCustomOpacity(0.1),
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
              _getStatusLabel(movie.status?.value),
              _getStatusIcon(movie.status),
              _getStatusColor(theme, movie.status),
              true,
            ),
            if (hasFile) ...[
              const SizedBox(width: 16),
              _buildStatusIndicator(
                context,
                'Available',
                Icons.check_circle,
                Colors.green,
                true,
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _getStatusLabel(Object? status) {
    if (status == null) return 'Unknown';

    switch (status.toString()) {
      case 'released':
        return 'Released';
      case 'inCinemas':
        return 'In Cinemas';
      case 'announced':
        return 'Announced';
      case 'deleted':
        return 'Deleted';
      default:
        return status.toString();
    }
  }

  Color _getStatusColor(ThemeData theme, Object? status) {
    if (status == null) return theme.colorScheme.tertiary;

    switch (status.toString()) {
      case 'released':
        return Colors.green;
      case 'inCinemas':
        return Colors.orange;
      case 'announced':
        return Colors.blue;
      case 'deleted':
        return Colors.red;
      default:
        return theme.colorScheme.tertiary;
    }
  }

  IconData _getStatusIcon(Object? status) {
    if (status == null) return Icons.help_outline;

    switch (status.toString()) {
      case 'released':
        return Icons.movie;
      case 'inCinemas':
        return Icons.theaters;
      case 'announced':
        return Icons.campaign;
      case 'deleted':
        return Icons.delete_outline;
      default:
        return Icons.help_outline;
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
              ? color.withCustomOpacity(0.12)
              : theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: active ? color.withCustomOpacity(0.5) : Colors.transparent,
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
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: active ? color : theme.colorScheme.onSurfaceVariant,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
