import 'package:client/src/features/auth/domain/auth_state.dart';
import 'package:client/src/features/auth/presentation/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:with_opacity/with_opacity.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  final _sonarrUrlController = TextEditingController();
  final _sonarrApiKeyController = TextEditingController();
  final _radarrUrlController = TextEditingController();
  final _radarrApiKeyController = TextEditingController();

  final _sonarrFormKey = GlobalKey<FormState>();
  final _radarrFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _sonarrUrlController.dispose();
    _sonarrApiKeyController.dispose();
    _radarrUrlController.dispose();
    _radarrApiKeyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configure APIs'),
        actions: [
          if (authState.sonarrConfigured || authState.radarrConfigured)
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Home screen will be implemented later'),
                  ),
                );
              },
              child: const Text('Go to Home'),
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(theme),
            const SizedBox(height: 24),
            _buildSonarrSection(authState, theme),
            const SizedBox(height: 32),
            _buildRadarrSection(authState, theme),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome to ARR Client', style: theme.textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text(
          'Configure your Sonarr and/or Radarr instances to get started',
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }

  Widget _buildSonarrSection(AuthState state, ThemeData theme) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.tv),
                const SizedBox(width: 8),
                Text('Sonarr Configuration', style: theme.textTheme.titleLarge),
                const Spacer(),
                if (state.sonarrConfigured)
                  const Chip(
                    label: Text('Configured'),
                    backgroundColor: Colors.green,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            if (state.sonarrError != null)
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.red.withCustomOpacity(0.1),
                child: Text(
                  state.sonarrError!,
                  style: TextStyle(color: Colors.red.shade700),
                ),
              ),
            Form(
              key: _sonarrFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _sonarrUrlController,
                    decoration: const InputDecoration(
                      labelText: 'Sonarr URL',
                      hintText: 'https://sonarr.example.com',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Sonarr URL';
                      }
                      if (!value.startsWith('http')) {
                        return 'URL must start with http:// or https://';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _sonarrApiKeyController,
                    decoration: const InputDecoration(
                      labelText: 'API Key',
                      hintText: 'Your Sonarr API key',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter API key';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: state.isLoadingSonarr
                          ? null
                          : () {
                              if (_sonarrFormKey.currentState!.validate()) {
                                ref
                                    .read(authControllerProvider.notifier)
                                    .configureSonarr(
                                      _sonarrUrlController.text,
                                      _sonarrApiKeyController.text,
                                    );
                              }
                            },
                      child: state.isLoadingSonarr
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('Save Sonarr Configuration'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadarrSection(AuthState state, ThemeData theme) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.movie),
                const SizedBox(width: 8),
                Text('Radarr Configuration', style: theme.textTheme.titleLarge),
                const Spacer(),
                if (state.radarrConfigured)
                  const Chip(
                    label: Text('Configured'),
                    backgroundColor: Colors.green,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            if (state.radarrError != null)
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.red.withCustomOpacity(0.1),
                child: Text(
                  state.radarrError!,
                  style: TextStyle(color: Colors.red.shade700),
                ),
              ),
            Form(
              key: _radarrFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _radarrUrlController,
                    decoration: const InputDecoration(
                      labelText: 'Radarr URL',
                      hintText: 'https://radarr.example.com',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Radarr URL';
                      }
                      if (!value.startsWith('http')) {
                        return 'URL must start with http:// or https://';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _radarrApiKeyController,
                    decoration: const InputDecoration(
                      labelText: 'API Key',
                      hintText: 'Your Radarr API key',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter API key';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: state.isLoadingRadarr
                          ? null
                          : () {
                              if (_radarrFormKey.currentState!.validate()) {
                                ref
                                    .read(authControllerProvider.notifier)
                                    .configureRadarr(
                                      _radarrUrlController.text,
                                      _radarrApiKeyController.text,
                                    );
                              }
                            },
                      child: state.isLoadingRadarr
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('Save Radarr Configuration'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
