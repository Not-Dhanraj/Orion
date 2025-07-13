import 'package:client/features/auth/application/provider/credentials_provider.dart';
import 'package:client/features/auth/presentation/view/auth_screen.dart';
import 'package:client/features/settings/application/provider/theme_provider.dart';
import 'package:client/features/radarr/application/provider/commands_provider/commands_provider.dart';
import 'package:client/features/sonarr/application/provider/commands_provider/commands_provider.dart';
import 'package:entry/entry.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  Widget _buildSectionCard({
    required BuildContext context,
    required String title,
    required Widget child,
    IconData? icon,
  }) {
    final theme = Theme.of(context);
    return Card(
      elevation: 2,
      shadowColor: Colors.black.withAlpha(40), // 0.16 opacity
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (icon != null) ...[
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer.withAlpha(100),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      icon,
                      size: 20,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
                Text(
                  title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({
    required BuildContext context,
    required String title,
    required VoidCallback onTap,
    IconData? leading,
    Widget? trailing,
    String? subtitle,
  }) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outline.withAlpha(50),
          width: 1,
        ),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        leading: leading != null
            ? Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer.withAlpha(100),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  leading,
                  size: 20,
                  color: theme.colorScheme.secondary,
                ),
              )
            : null,
        title: Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              )
            : null,
        trailing:
            trailing ??
            Icon(
              Icons.chevron_right,
              color: theme.colorScheme.onSurfaceVariant,
            ),
        onTap: onTap,
      ),
    );
  }

  Widget _buildStatusRow(
    BuildContext context,
    String label,
    String value, {
    Color? valueColor,
  }) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: valueColor ?? theme.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRadarrSystemStatus(BuildContext context, WidgetRef ref) {
    final systemStatusAsync = ref.watch(radarrSystemStatusProvider);
    final healthCheckAsync = ref.watch(radarrHealthCheckProvider);
    final diskSpaceAsync = ref.watch(radarrDiskSpaceProvider);

    return systemStatusAsync.when(
      data: (systemStatus) => Column(
        children: [
          _buildStatusRow(
            context,
            'Version',
            systemStatus.version ?? 'Unknown',
          ),
          _buildStatusRow(
            context,
            'Build Time',
            systemStatus.buildTime?.toString() ?? 'Unknown',
          ),
          _buildStatusRow(
            context,
            'Is Debug',
            systemStatus.isDebug?.toString() ?? 'Unknown',
          ),
          _buildStatusRow(
            context,
            'Is Production',
            systemStatus.isProduction?.toString() ?? 'Unknown',
          ),
          _buildStatusRow(
            context,
            'Authentication',
            systemStatus.authentication ?? 'Unknown',
          ),
          const SizedBox(height: 8),

          // Health Check Status
          healthCheckAsync.when(
            data: (healthChecks) {
              final hasErrors = healthChecks.any(
                (check) => check.type == 'Error',
              );
              final hasWarnings = healthChecks.any(
                (check) => check.type == 'Warning',
              );

              Color statusColor = Colors.green;
              String statusText = 'Healthy';

              if (hasErrors) {
                statusColor = Colors.red;
                statusText = 'Error';
              } else if (hasWarnings) {
                statusColor = Colors.orange;
                statusText = 'Warning';
              }

              return _buildStatusRow(
                context,
                'Health Status',
                statusText,
                valueColor: statusColor,
              );
            },
            loading: () =>
                _buildStatusRow(context, 'Health Status', 'Loading...'),
            error: (_, __) => _buildStatusRow(
              context,
              'Health Status',
              'Error',
              valueColor: Colors.red,
            ),
          ),

          // Disk Space
          diskSpaceAsync.when(
            data: (diskSpaces) {
              if (diskSpaces.isNotEmpty) {
                final totalSpace = diskSpaces.fold<double>(
                  0,
                  (sum, disk) => sum + (disk.totalSpace ?? 0),
                );
                final freeSpace = diskSpaces.fold<double>(
                  0,
                  (sum, disk) => sum + (disk.freeSpace ?? 0),
                );
                final usedPercentage = totalSpace > 0
                    ? ((totalSpace - freeSpace) / totalSpace * 100).round()
                    : 0;

                return _buildStatusRow(
                  context,
                  'Disk Usage',
                  '$usedPercentage% used',
                );
              }
              return _buildStatusRow(context, 'Disk Space', 'No data');
            },
            loading: () => _buildStatusRow(context, 'Disk Space', 'Loading...'),
            error: (_, __) => _buildStatusRow(
              context,
              'Disk Space',
              'Error',
              valueColor: Colors.red,
            ),
          ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Text('Error loading Radarr status: $error'),
    );
  }

  Widget _buildSonarrSystemStatus(BuildContext context, WidgetRef ref) {
    final systemStatusAsync = ref.watch(sonarrSystemStatusProvider);

    return systemStatusAsync.when(
      data: (systemStatus) => Column(
        children: [
          _buildStatusRow(
            context,
            'Version',
            systemStatus.version ?? 'Unknown',
          ),
          _buildStatusRow(
            context,
            'Build Time',
            systemStatus.buildTime?.toString() ?? 'Unknown',
          ),
          _buildStatusRow(
            context,
            'Is Debug',
            systemStatus.isDebug?.toString() ?? 'Unknown',
          ),
          _buildStatusRow(
            context,
            'Is Production',
            systemStatus.isProduction?.toString() ?? 'Unknown',
          ),
          _buildStatusRow(
            context,
            'Is Linux',
            systemStatus.isLinux?.toString() ?? 'Unknown',
          ),
          _buildStatusRow(
            context,
            'Authentication',
            systemStatus.authentication ?? 'Unknown',
          ),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Text('Error loading Sonarr status: $error'),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeSettings = ref.watch(themeProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        elevation: 0,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // Theme Settings Section
                Entry.opacity(
                  duration: const Duration(milliseconds: 300),
                  child: _buildSectionCard(
                    context: context,
                    title: 'Appearance',
                    icon: Icons.palette,
                    child: Column(
                      children: [
                        // Theme Mode Selection
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Theme Mode',
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),
                            SegmentedButton<ThemeMode>(
                              segments: const <ButtonSegment<ThemeMode>>[
                                ButtonSegment<ThemeMode>(
                                  value: ThemeMode.light,
                                  label: Text('Light'),
                                  icon: Icon(Icons.wb_sunny),
                                ),
                                ButtonSegment<ThemeMode>(
                                  value: ThemeMode.dark,
                                  label: Text('Dark'),
                                  icon: Icon(Icons.nightlight_round),
                                ),
                                ButtonSegment<ThemeMode>(
                                  value: ThemeMode.system,
                                  label: Text('System'),
                                  icon: Icon(Icons.settings_system_daydream),
                                ),
                              ],
                              selected: <ThemeMode>{themeSettings.themeMode},
                              onSelectionChanged: (newSelection) {
                                ref
                                    .read(themeProvider.notifier)
                                    .setThemeMode(newSelection.first);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        // Color Scheme Selection
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Color Scheme',
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: theme.colorScheme.outline.withAlpha(
                                    50,
                                  ),
                                  width: 1,
                                ),
                              ),
                              child: DropdownButton<FlexScheme>(
                                isExpanded: true,
                                value: themeSettings.flexScheme,
                                underline: const SizedBox.shrink(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 4,
                                ),
                                onChanged: (scheme) {
                                  if (scheme != null) {
                                    ref
                                        .read(themeProvider.notifier)
                                        .setFlexScheme(scheme);
                                  }
                                },
                                items: FlexScheme.values
                                    .map(
                                      (scheme) => DropdownMenuItem(
                                        value: scheme,
                                        child: Text(scheme.name),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Credentials Section
                Entry.opacity(
                  duration: const Duration(milliseconds: 400),
                  delay: const Duration(milliseconds: 50),
                  child: _buildSectionCard(
                    context: context,
                    title: 'API Credentials',
                    icon: Icons.security,
                    child: Column(
                      children: [
                        _buildListTile(
                          context: context,
                          title: 'Sonarr Credentials',
                          subtitle: 'Configure Sonarr server connection',
                          leading: Icons.tv,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    AuthScreen(isSonarr: true),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 12),
                        _buildListTile(
                          context: context,
                          title: 'Radarr Credentials',
                          subtitle: 'Configure Radarr server connection',
                          leading: Icons.movie,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    AuthScreen(isRadarr: true),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // System Status Section
                Entry.opacity(
                  duration: const Duration(milliseconds: 500),
                  delay: const Duration(milliseconds: 100),
                  child: _buildSectionCard(
                    context: context,
                    title: 'Radarr System Status',
                    icon: Icons.monitor_heart,
                    child: _buildRadarrSystemStatus(context, ref),
                  ),
                ),

                const SizedBox(height: 20),

                Entry.opacity(
                  duration: const Duration(milliseconds: 600),
                  delay: const Duration(milliseconds: 150),
                  child: _buildSectionCard(
                    context: context,
                    title: 'Sonarr System Status',
                    icon: Icons.health_and_safety,
                    child: _buildSonarrSystemStatus(context, ref),
                  ),
                ),

                const SizedBox(height: 32),

                // Logout Section
                Entry.opacity(
                  duration: const Duration(milliseconds: 700),
                  delay: const Duration(milliseconds: 200),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          colors: [
                            Colors.redAccent.withAlpha(200),
                            Colors.red.withAlpha(200),
                          ],
                        ),
                      ),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          ref
                              .read(credentialsProvider.notifier)
                              .clearCredentials();
                        },
                        icon: const Icon(Icons.logout),
                        label: const Text(
                          'Logout',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
