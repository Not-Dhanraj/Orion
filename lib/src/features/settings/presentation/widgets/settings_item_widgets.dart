import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class SheetButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool filled;
  final bool destructive;

  const SheetButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.filled,
    this.destructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final activeColor = destructive ? cs.error : cs.primary;
    final onActiveColor = destructive ? cs.onError : cs.onPrimary;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        height: 48,
        decoration: BoxDecoration(
          color: filled
              ? (onTap == null
                    ? cs.onSurface.withValues(alpha: 0.12)
                    : activeColor)
              : Colors.transparent,
          border: filled
              ? null
              : Border.all(color: cs.outlineVariant.withValues(alpha: 0.5)),
        ),
        child: Center(
          child: Text(
            label,
            style: tt.labelLarge!.copyWith(
              color: filled
                  ? (onTap == null
                        ? cs.onSurface.withValues(alpha: 0.38)
                        : onActiveColor)
                  : cs.onSurfaceVariant,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsReadonlyValue extends StatelessWidget {
  final String value;
  const SettingsReadonlyValue({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Text(
      value,
      style: tt.labelMedium!.copyWith(color: cs.outline),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SettingsTapValue extends StatelessWidget {
  final String value;
  final VoidCallback onTap;
  const SettingsTapValue({super.key, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(value, style: tt.labelMedium!.copyWith(color: cs.primary)),
          const SizedBox(width: 6),
          Icon(TablerIcons.chevron_right, size: 14, color: cs.outline),
        ],
      ),
    );
  }
}

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

class AddServiceRow extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const AddServiceRow({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.3)),
        ),
        child: Row(
          children: [
            Icon(TablerIcons.plus, size: 16, color: cs.primary),
            const SizedBox(width: 10),
            Text(
              label,
              style: tt.labelLarge!.copyWith(
                color: cs.primary,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThemeOptionRow extends StatelessWidget {
  final ThemeMode mode;
  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const ThemeOptionRow({
    super.key,
    required this.mode,
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: selected ? cs.primary.withValues(alpha: 0.08) : cs.surface,
            border: Border.all(
              color: selected
                  ? cs.primary.withValues(alpha: 0.5)
                  : cs.outlineVariant.withValues(alpha: 0.15),
            ),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: 18,
                color: selected ? cs.primary : cs.onSurfaceVariant,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  label,
                  style: tt.bodyMedium!.copyWith(
                    color: selected ? cs.primary : cs.onSurface,
                    fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              if (selected)
                Icon(TablerIcons.check, size: 16, color: cs.primary),
            ],
          ),
        ),
      ),
    );
  }
}
