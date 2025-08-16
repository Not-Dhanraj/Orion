import 'package:client/src/features/settings/application/settings_controller.dart';
import 'package:client/src/features/settings/presentation/widgets/credentials_editor.dart';
import 'package:client/src/features/settings/presentation/widgets/theme_selector.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:with_opacity/with_opacity.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serviceSettings = ref.watch(serviceSettingsProvider);

    return Entry.opacity(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Settings'),
            floating: true,
            snap: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            sliver: SliverMasonryGrid(
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              gridDelegate:
                  const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 900,
                  ),
              delegate: SliverChildListDelegate([
                const _SettingsSection(
                  title: 'Appearance',
                  icon: TablerIcons.palette,
                  children: [ThemeSelector()],
                ),

                _SettingsSection(
                  title: 'Sonarr Configuration',
                  icon: TablerIcons.device_tv,
                  children: [
                    if (serviceSettings.sonarrCredentials != null) ...[
                      _ServiceStatusTile(
                        title: 'Sonarr',
                        subtitle: serviceSettings.sonarrCredentials!.sonarrUrl,
                      ),
                      const Divider(height: 1, indent: 56, endIndent: 16),
                      _ActionTile(
                        icon: TablerIcons.edit,
                        title: 'Edit Credentials',
                        onTap: () => _showEditCredentialsDialog(
                          context,
                          'Sonarr',
                          serviceSettings.sonarrCredentials!.sonarrUrl,
                          serviceSettings.sonarrCredentials!.sonarrApi,
                          (url, apiKey) => ref
                              .read(serviceSettingsProvider.notifier)
                              .updateSonarrCredentials(url, apiKey),
                        ),
                      ),
                      const Divider(height: 1, indent: 56, endIndent: 16),
                      _ActionTile(
                        icon: TablerIcons.trash,
                        title: 'Delete Service',
                        isDestructive: true,
                        onTap: () => _showDeleteConfirmation(
                          context,
                          'Sonarr',
                          () => ref
                              .read(serviceSettingsProvider.notifier)
                              .deleteSonarrService(),
                        ),
                      ),
                    ] else
                      _ActionTile(
                        icon: TablerIcons.plus,
                        title: 'Add Sonarr',
                        onTap: () => _showEditCredentialsDialog(
                          context,
                          'Sonarr',
                          '',
                          '',
                          (url, apiKey) => ref
                              .read(serviceSettingsProvider.notifier)
                              .updateSonarrCredentials(url, apiKey),
                        ),
                      ),
                  ],
                ),
                _SettingsSection(
                  title: 'Radarr Configuration',
                  icon: TablerIcons.movie,
                  children: [
                    if (serviceSettings.radarrCredentials != null) ...[
                      _ServiceStatusTile(
                        title: 'Radarr',
                        subtitle: serviceSettings.radarrCredentials!.radarrUrl,
                      ),
                      const Divider(height: 1, indent: 56, endIndent: 16),
                      _ActionTile(
                        icon: TablerIcons.edit,
                        title: 'Edit Credentials',
                        onTap: () => _showEditCredentialsDialog(
                          context,
                          'Radarr',
                          serviceSettings.radarrCredentials!.radarrUrl,
                          serviceSettings.radarrCredentials!.radarrApi,
                          (url, apiKey) => ref
                              .read(serviceSettingsProvider.notifier)
                              .updateRadarrCredentials(url, apiKey),
                        ),
                      ),
                      const Divider(height: 1, indent: 56, endIndent: 16),
                      _ActionTile(
                        icon: TablerIcons.trash,
                        title: 'Delete Service',
                        isDestructive: true,
                        onTap: () => _showDeleteConfirmation(
                          context,
                          'Radarr',
                          () => ref
                              .read(serviceSettingsProvider.notifier)
                              .deleteRadarrService(),
                        ),
                      ),
                    ] else
                      _ActionTile(
                        icon: TablerIcons.plus,
                        title: 'Add Radarr',
                        onTap: () => _showEditCredentialsDialog(
                          context,
                          'Radarr',
                          '',
                          '',
                          (url, apiKey) => ref
                              .read(serviceSettingsProvider.notifier)
                              .updateRadarrCredentials(url, apiKey),
                        ),
                      ),
                  ],
                ),
                _SettingsSection(
                  title: 'About',
                  icon: TablerIcons.info_circle,
                  children: [
                    _ActionTile(
                      icon: TablerIcons.license,
                      title: 'Licenses',
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
                    ),
                    const Divider(height: 1, indent: 56, endIndent: 16),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 40),
                          Text('Version'),
                          Spacer(),
                          Text(
                            '1.0.0',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  'Made with ❤️ in Flutter',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurfaceVariant.withCustomOpacity(0.6),
                  ),
                ),
                // Add some bottom padding
                const SizedBox(height: 16),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  void _showEditCredentialsDialog(
    BuildContext context,
    String serviceName,
    String initialUrl,
    String initialApiKey,
    Future<void> Function(String, String) onSave,
  ) {
    showDialog(
      context: context,
      builder: (context) => CredentialsEditor(
        serviceName: serviceName,
        initialUrl: initialUrl,
        initialApiKey: initialApiKey,
        onSave: onSave,
      ),
    );
  }

  void _showDeleteConfirmation(
    BuildContext context,
    String serviceName,
    Future<void> Function() onConfirm,
  ) {
    final theme = Theme.of(context);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Delete $serviceName'),
        content: Text(
          'Are you sure you want to delete this service? This will remove all credentials and disable the service.',
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('CANCEL'),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                await onConfirm();
                if (context.mounted) {
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'App needs to be restarted for changes to take effect.',
                      ),
                    ),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error deleting service: $e'),
                      backgroundColor: Theme.of(context).colorScheme.error,
                    ),
                  );
                }
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.error,
              foregroundColor: theme.colorScheme.onError,
            ),
            child: const Text('DELETE'),
          ),
        ],
      ),
    );
  }
}

class _SettingsSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const _SettingsSection({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withAlpha(40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outline.withAlpha(30),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer.withAlpha(100),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, size: 20, color: theme.colorScheme.primary),
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ...children,
        ],
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isDestructive;

  const _ActionTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = isDestructive
        ? theme.colorScheme.error
        : theme.colorScheme.primary;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        child: Row(
          children: [
            SizedBox(width: 40, child: Icon(icon, color: color, size: 20)),
            Text(
              title,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: isDestructive ? theme.colorScheme.error : null,
              ),
            ),
            const Spacer(),
            Icon(
              TablerIcons.chevron_right,
              size: 18,
              color: theme.colorScheme.onSurfaceVariant.withCustomOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceStatusTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const _ServiceStatusTile({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        children: [
          Icon(TablerIcons.server, color: theme.colorScheme.primary, size: 22),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
