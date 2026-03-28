import 'package:client/src/features/settings/presentation/settings_controller.dart';
import 'package:client/src/features/settings/application/theme_notifier.dart';
import 'package:client/src/features/settings/presentation/widgets/service_config_sheet.dart';
import 'package:client/src/features/settings/presentation/widgets/settings_about_card.dart';
import 'package:client/src/features/settings/presentation/widgets/settings_item_widgets.dart';
import 'package:client/src/features/settings/presentation/widgets/settings_row.dart';
import 'package:client/src/features/settings/presentation/widgets/settings_section_header.dart';
import 'package:client/src/shared/widgets/common/custom_snackbar.dart';
import 'package:client/src/utils/context_extensions.dart';
import 'package:client/src/utils/string_extension.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  String _themeModeLabel(ThemeMode mode) => switch (mode) {
    ThemeMode.system => 'System',
    ThemeMode.light => 'Light',
    ThemeMode.dark => 'Dark',
  };

  @override
  Widget build(BuildContext context) {
    final settingsController = ref.watch(settingsControllerProvider);
    final themeMode = ref.watch(themeModeProvider);
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Entry.opacity(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          context.isDesktop ? 50 : 16,
          context.isDesktop ? 32 : 12,
          context.isDesktop ? 32 : 16,
          32,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Settings',
                  style: tt.displayLarge!.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Change Your app/ According to you'.toUpperCase(),
                  style: tt.labelSmall!.copyWith(
                    fontSize: 9,
                    color: cs.primary.withValues(alpha: 0.6),
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(height: 24),
                const SettingsSectionHeader(title: 'APPEARANCE'),
                const SizedBox(height: 12),
                SettingsRowGroup(
                  rows: [
                    SettingsRow(
                      label: 'Theme Mode',
                      trailing: SettingsTapValue(
                        value: _themeModeLabel(themeMode),
                        onTap: _showThemePicker,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                SettingsSectionHeader(
                  title: 'SONARR CONFIGURATION',
                  isActive: settingsController.sonarrCredentials != null,
                ),
                const SizedBox(height: 12),
                if (settingsController.sonarrCredentials != null) ...[
                  SettingsRowGroup(
                    rows: [
                      SettingsRow(
                        label: 'Server URL',
                        trailing: SettingsReadonlyValue(
                          value: settingsController
                              .sonarrCredentials!
                              .sonarrUrl
                              .maskServerUrl,
                        ),
                      ),
                      const SettingsRow(
                        label: 'API Key',
                        trailing: SettingsReadonlyValue(value: '••••••••'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ServiceActionRow(
                      onEdit: () => _showServerConfigSheet(
                        serviceName: 'Sonarr',
                        initialUrl:
                            settingsController.sonarrCredentials!.sonarrUrl,
                        initialApiKey:
                            settingsController.sonarrCredentials!.sonarrApi,
                        onSave: (url, api) => ref
                            .read(settingsControllerProvider.notifier)
                            .validateAndUpdateSonarrCredentials(url, api),
                      ),
                      onDelete: () => _showDeleteConfirmationSheet(
                        serviceName: 'Sonarr',
                        onConfirm: () async {
                          CustomSnackbar.show(
                            context,
                            message: "Please Restart app to see changes",
                            type: CustomSnackbarType.warning,
                          );
                          await ref
                              .read(settingsControllerProvider.notifier)
                              .deleteSonarrService();
                        },
                      ),
                    ),
                  ),
                ] else
                  AddServiceRow(
                    label: 'Add Sonarr',
                    onTap: () => _showServerConfigSheet(
                      serviceName: 'Sonarr',
                      initialUrl: '',
                      initialApiKey: '',
                      onSave: (url, api) => ref
                          .read(settingsControllerProvider.notifier)
                          .validateAndUpdateSonarrCredentials(url, api),
                    ),
                  ),
                const SizedBox(height: 32),
                SettingsSectionHeader(
                  title: 'RADARR CONFIGURATION',
                  isActive: settingsController.radarrCredentials != null,
                ),
                const SizedBox(height: 12),
                if (settingsController.radarrCredentials != null) ...[
                  SettingsRowGroup(
                    rows: [
                      SettingsRow(
                        label: 'Server URL',
                        trailing: SettingsReadonlyValue(
                          value: settingsController
                              .radarrCredentials!
                              .radarrUrl
                              .maskServerUrl,
                        ),
                      ),
                      const SettingsRow(
                        label: 'API Key',
                        trailing: SettingsReadonlyValue(value: '••••••••'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  ServiceActionRow(
                    onEdit: () => _showServerConfigSheet(
                      serviceName: 'Radarr',
                      initialUrl:
                          settingsController.radarrCredentials!.radarrUrl,
                      initialApiKey:
                          settingsController.radarrCredentials!.radarrApi,
                      onSave: (url, api) => ref
                          .read(settingsControllerProvider.notifier)
                          .validateAndUpdateRadarrCredentials(url, api),
                    ),
                    onDelete: () => _showDeleteConfirmationSheet(
                      serviceName: 'Radarr',
                      onConfirm: () => ref
                          .read(settingsControllerProvider.notifier)
                          .deleteRadarrService(),
                    ),
                  ),
                ] else
                  AddServiceRow(
                    label: 'Add Radarr',
                    onTap: () => _showServerConfigSheet(
                      serviceName: 'Radarr',
                      initialUrl: '',
                      initialApiKey: '',
                      onSave: (url, api) => ref
                          .read(settingsControllerProvider.notifier)
                          .validateAndUpdateRadarrCredentials(url, api),
                    ),
                  ),
                const SizedBox(height: 32),
                const SettingsSectionHeader(title: 'ABOUT'),
                const SizedBox(height: 12),
                const SettingsAboutCard(),
                const SizedBox(height: 12),
                SettingsRowGroup(
                  rows: [
                    SettingsRow(
                      label: 'Version',
                      trailing: Text(
                        '1.0.0',
                        style: tt.labelMedium!.copyWith(color: cs.outline),
                      ),
                    ),
                    SettingsRow(
                      label: 'Licenses',
                      trailing: InkWell(
                        onTap: () => showLicensePage(
                          context: context,
                          applicationName: 'Orion',
                          applicationVersion: '1.0.0',
                          applicationLegalese: '© 2025 Orion',
                          applicationIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icon/icon.png',
                              width: 100,
                            ),
                          ),
                        ),
                        child: Icon(
                          TablerIcons.chevron_right,
                          size: 16,
                          color: cs.outline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  'Made with ❤️ in Flutter',
                  textAlign: TextAlign.center,
                  style: tt.bodySmall?.copyWith(color: cs.outline),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showServerConfigSheet({
    required String serviceName,
    required String initialUrl,
    required String initialApiKey,
    required Future<void> Function(String, String) onSave,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => ServiceConfigSheet(
        serviceName: serviceName,
        isRadarr: serviceName == 'Radarr',
        urlController: TextEditingController(text: initialUrl),
        apiController: TextEditingController(text: initialApiKey),
        formKey: GlobalKey<FormState>(),
        onSave: onSave,
      ),
    );
  }

  void _showDeleteConfirmationSheet({
    required String serviceName,
    required Future<void> Function() onConfirm,
  }) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
        child: Container(
          decoration: BoxDecoration(
            color: cs.surfaceContainer,
            border: Border(
              top: BorderSide(color: cs.outlineVariant.withValues(alpha: 0.15)),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(24, 28, 24, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'REMOVE SERVICE',
                style: tt.labelSmall!.copyWith(
                  fontSize: 9,
                  letterSpacing: 2.0,
                  color: cs.error,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Delete $serviceName?',
                style: tt.titleMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'This will remove all credentials and disable the $serviceName integration. '
                'The app needs to be restarted for changes to take effect.',
                style: tt.bodySmall!.copyWith(
                  color: cs.onSurfaceVariant,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: SheetButton(
                      label: 'CANCEL',
                      onTap: () => Navigator.pop(ctx),
                      filled: false,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SheetButton(
                      label: 'DELETE',
                      filled: true,
                      destructive: true,
                      onTap: () async {
                        Navigator.pop(ctx);
                        try {
                          await onConfirm();
                        } catch (e) {
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Error deleting service: $e'),
                                backgroundColor: cs.error,
                              ),
                            );
                          }
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showThemePicker() {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    var selection = ref.read(themeModeProvider);
    final options = [
      (ThemeMode.system, 'System Default', TablerIcons.device_desktop),
      (ThemeMode.light, 'Light', TablerIcons.sun),
      (ThemeMode.dark, 'Dark', TablerIcons.moon),
    ];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => StatefulBuilder(
        builder: (ctx, setSheetState) {
          return Container(
            decoration: BoxDecoration(color: cs.surfaceContainer),
            padding: const EdgeInsets.fromLTRB(24, 26, 24, 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 3),

                Text(
                  'Theme Mode',
                  style: tt.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Divider(),
                const SizedBox(height: 20),
                ...options.map(
                  (opt) => ThemeOptionRow(
                    mode: opt.$1,
                    label: opt.$2,
                    icon: opt.$3,
                    selected: selection == opt.$1,
                    onTap: () => setSheetState(() => selection = opt.$1),
                  ),
                ),
                const SizedBox(height: 24),
                SheetButton(
                  label: 'DONE',
                  onTap: () {
                    ref
                        .read(themeModeProvider.notifier)
                        .setThemeMode(selection);
                    Navigator.pop(ctx);
                  },
                  filled: true,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
