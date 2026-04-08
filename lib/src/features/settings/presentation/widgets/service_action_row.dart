import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class ServiceActionRow extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  const ServiceActionRow({
    super.key,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Row(
      children: [
        Expanded(
          child: _OutlinedActionButton(
            icon: TablerIcons.edit,
            label: 'Edit Credentials',
            color: cs.primary,
            onTap: onEdit,
          ),
        ),
        const SizedBox(width: 8),
        _OutlinedActionButton(
          icon: TablerIcons.trash,
          label: 'Remove',
          color: cs.error,
          onTap: onDelete,
          compact: true,
        ),
      ],
    );
  }
}

class _OutlinedActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;
  final bool compact;

  const _OutlinedActionButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: compact ? 12 : 16),
        decoration: BoxDecoration(
          border: Border.all(color: color.withValues(alpha: 0.4)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: compact ? MainAxisSize.min : MainAxisSize.max,
          children: [
            Icon(icon, size: 15, color: color),
            if (!compact) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: tt.labelMedium!.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
