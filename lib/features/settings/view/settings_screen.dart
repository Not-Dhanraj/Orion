import 'package:client/features/auth/provider/credentials_provider.dart';
import 'package:client/features/auth/view/auth_screen.dart';
import 'package:client/features/settings/provider/theme_provider.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeSettings = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text('Theme Mode'),
                  const SizedBox(height: 8),
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
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: DropdownButton<FlexScheme>(
                isExpanded: true,
                value: themeSettings.flexScheme,
                onChanged: (scheme) {
                  if (scheme != null) {
                    ref.read(themeProvider.notifier).setFlexScheme(scheme);
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
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
          Card(
            child: ListTile(
              title: const Text('Sonarr Credentials'),
              trailing: const Icon(Icons.edit),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuthScreen(isSonarr: true),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              title: const Text('Radarr Credentials'),
              trailing: const Icon(Icons.edit),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuthScreen(isRadarr: true),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                ref.read(credentialsProvider.notifier).clearCredentials();
              },
              child: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }
}
