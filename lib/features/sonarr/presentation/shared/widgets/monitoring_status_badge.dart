import 'package:flutter/material.dart';

class MonitoringStatusBadge extends StatelessWidget {
  final bool isMonitored;

  const MonitoringStatusBadge({super.key, required this.isMonitored});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: isMonitored
            ? theme.colorScheme.primary.withAlpha(38)
            : Colors.grey.withAlpha(25),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isMonitored ? Icons.visibility : Icons.visibility_off,
            color: isMonitored ? theme.colorScheme.primary : Colors.grey,
            size: 14,
          ),
          const SizedBox(width: 4),
          Text(
            isMonitored ? 'Monitored' : 'Unmonitored',
            style: TextStyle(
              fontSize: 12,
              color: isMonitored ? theme.colorScheme.primary : Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
