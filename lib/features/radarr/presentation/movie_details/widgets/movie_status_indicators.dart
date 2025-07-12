import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieStatusIndicators extends StatelessWidget {
  final RadarrMovie movie;

  const MovieStatusIndicators({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        // Monitored status
        _buildStatusChip(
          context,
          label: movie.monitored == true ? 'Monitored' : 'Unmonitored',
          backgroundColor: movie.monitored == true
              ? colorScheme.primaryContainer
              : colorScheme.errorContainer,
          textColor: movie.monitored == true
              ? colorScheme.onPrimaryContainer
              : colorScheme.onErrorContainer,
          icon: movie.monitored == true
              ? Icons.visibility
              : Icons.visibility_off,
        ),

        // Movie status
        _buildStatusChip(
          context,
          label: _getStatusLabel(movie.status),
          backgroundColor: _getStatusColor(movie.status, colorScheme),
          textColor: _getStatusTextColor(movie.status, colorScheme),
          icon: _getStatusIcon(movie.status),
        ),

        // Availability
        if (movie.hasFile == true)
          _buildStatusChip(
            context,
            label: 'Available',
            backgroundColor: colorScheme.tertiaryContainer,
            textColor: colorScheme.onTertiaryContainer,
            icon: Icons.check_circle,
          ),

        // Quality profile
        if (movie.qualityProfileId != null)
          _buildStatusChip(
            context,
            label: 'Quality: ${movie.qualityProfileId}',
            backgroundColor: colorScheme.surfaceVariant,
            textColor: colorScheme.onSurfaceVariant,
            icon: Icons.high_quality,
          ),
      ],
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

  Color _getStatusColor(Object? status, ColorScheme colorScheme) {
    if (status == null) return colorScheme.surfaceVariant;

    switch (status.toString()) {
      case 'released':
        return Colors.green.withOpacity(0.2);
      case 'inCinemas':
        return Colors.orange.withOpacity(0.2);
      case 'announced':
        return Colors.blue.withOpacity(0.2);
      case 'deleted':
        return colorScheme.errorContainer;
      default:
        return colorScheme.surfaceVariant;
    }
  }

  Color _getStatusTextColor(Object? status, ColorScheme colorScheme) {
    if (status == null) return colorScheme.onSurfaceVariant;

    switch (status.toString()) {
      case 'released':
        return Colors.green.shade800;
      case 'inCinemas':
        return Colors.orange.shade800;
      case 'announced':
        return Colors.blue.shade800;
      case 'deleted':
        return colorScheme.onErrorContainer;
      default:
        return colorScheme.onSurfaceVariant;
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

  Widget _buildStatusChip(
    BuildContext context, {
    required String label,
    required Color backgroundColor,
    required Color textColor,
    required IconData icon,
  }) {
    return Chip(
      backgroundColor: backgroundColor,
      labelStyle: TextStyle(color: textColor),
      avatar: Icon(icon, color: textColor, size: 16),
      label: Text(label),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
    );
  }
}
