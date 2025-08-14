import 'package:client/src/features/settings/application/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class ThemeSelector extends ConsumerWidget {
  const ThemeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeSettingsProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _ThemeOptionTile(
            title: 'System Theme',
            subtitle: 'Follow system settings',
            icon: TablerIcons.device_desktop,
            value: ThemeMode.system,
            groupValue: currentTheme,
            onChanged: (value) {
              ref.read(themeSettingsProvider.notifier).setThemeMode(value);
            },
          ),
          const SizedBox(height: 8),
          _ThemeOptionTile(
            title: 'Light Theme',
            subtitle: 'Light colors and white background',
            icon: TablerIcons.sun,
            value: ThemeMode.light,
            groupValue: currentTheme,
            onChanged: (value) {
              ref.read(themeSettingsProvider.notifier).setThemeMode(value);
            },
          ),
          const SizedBox(height: 8),
          _ThemeOptionTile(
            title: 'Dark Theme',
            subtitle: 'Dark colors and black background',
            icon: TablerIcons.moon,
            value: ThemeMode.dark,
            groupValue: currentTheme,
            onChanged: (value) {
              ref.read(themeSettingsProvider.notifier).setThemeMode(value);
            },
          ),
        ],
      ),
    );
  }
}

class _ThemeOptionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final ThemeMode value;
  final ThemeMode groupValue;
  final ValueChanged<ThemeMode> onChanged;

  const _ThemeOptionTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected = value == groupValue;

    return Material(
      color: isSelected
          ? theme.colorScheme.primaryContainer.withOpacity(0.3)
          : Colors.transparent,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onChanged(value),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? theme.colorScheme.primary.withOpacity(0.2)
                      : theme.colorScheme.surfaceVariant.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: isSelected
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onSurfaceVariant,
                  size: 20,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Radio<ThemeMode>(
                value: value,
                groupValue: groupValue,
                onChanged: (value) => value != null ? onChanged(value) : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
