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
      body: CustomScrollView(
        slivers: [
          // Header section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to ARR Client',
                    style: theme.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Configure your Sonarr and/or Radarr instances to get started',
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),

          // Grid section
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 660,
                mainAxisExtent: 360,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              delegate: SliverChildListDelegate([
                _AuthCard(
                  cardIcon: Icons.tv,
                  isConfigured: authState.sonarrConfigured,
                  urlController: _sonarrUrlController,
                  apiKeyController: _sonarrApiKeyController,
                  type: 'Sonarr',
                  onPressed: authState.isLoadingSonarr
                      ? null
                      : () async {
                          if (_sonarrFormKey.currentState!.validate()) {
                            var authController = ref.read(
                              authControllerProvider.notifier,
                            );
                            await authController.updateSonarr(
                              _sonarrUrlController.text,
                              _sonarrApiKeyController.text,
                              context,
                            );
                          }
                        },
                  isLoading: authState.isLoadingSonarr,
                  isEditing: authState.sonarrConfigured,
                  formState: _sonarrFormKey,
                  primaryColor: Colors.blue,
                ),
                _AuthCard(
                  cardIcon: Icons.movie_outlined,
                  isConfigured: authState.radarrConfigured,
                  urlController: _radarrUrlController,
                  apiKeyController: _radarrApiKeyController,
                  type: 'Radarr',
                  onPressed: authState.isLoadingRadarr
                      ? null
                      : () {
                          if (_radarrFormKey.currentState!.validate()) {
                            ref
                                .read(authControllerProvider.notifier)
                                .updateRadarr(
                                  _radarrUrlController.text,
                                  _radarrApiKeyController.text,
                                  context,
                                );
                          }
                        },
                  isLoading: authState.isLoadingRadarr,
                  isEditing: authState.radarrConfigured,
                  formState: _radarrFormKey,
                  primaryColor: Colors.orange,
                ),
                // Add more _AuthCard widgets here as needed
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class _AuthCard extends StatelessWidget {
  final IconData cardIcon;
  final GlobalKey<FormState> formState;
  final bool isConfigured;
  final TextEditingController urlController;
  final TextEditingController apiKeyController;
  final String type;
  final bool isLoading;
  final Color primaryColor;
  final bool isEditing;
  final void Function()? onPressed;

  const _AuthCard({
    required this.cardIcon,
    required this.isConfigured,
    required this.urlController,
    required this.apiKeyController,
    required this.type,
    required this.onPressed,
    required this.isLoading,
    required this.isEditing,
    required this.formState,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Card(
      elevation: 2,
      shadowColor: Colors.black.withAlpha(40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Form(
          key: formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: primaryColor.withAlpha(50),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(cardIcon, size: 24, color: primaryColor),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    '$type Configuration',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _TextFormField(
                controller: urlController,
                labelText: '$type URL',
                hintText: 'http://your-server:port',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter $type URL';
                  }
                  final uri = Uri.tryParse(value);
                  if (uri == null ||
                      !(uri.isAbsolute &&
                          (uri.scheme == 'http' || uri.scheme == 'https')) ||
                      uri.host.isEmpty) {
                    return 'Please enter a valid URL starting with http:// or https://';
                  }
                  // Host must be at least 3 chars and contain a dot or be a valid IPv4/IPv6
                  final host = uri.host;
                  final isIp =
                      RegExp(r'^(\d{1,3}\.){3}\d{1,3}$').hasMatch(host) ||
                      RegExp(r'^\[[0-9a-fA-F:]+\]$').hasMatch(host);
                  if (!isIp && !host.contains('.')) {
                    return 'Please enter a valid domain or IP address';
                  }
                  return null;
                },
                icon: Icons.link,
                helperText: 'The base URL for your $type instance',
              ),
              const SizedBox(height: 20),
              _TextFormField(
                controller: apiKeyController,
                labelText: 'API Key',
                hintText: 'Your $type API key',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter API key';
                  }
                  return null;
                },
                icon: Icons.lock,
                helperText: 'Your $type API key',
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary.withAlpha(40),
                  foregroundColor: theme.colorScheme.onPrimary,
                  shadowColor: Colors.transparent,
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: isLoading ? null : onPressed,
                icon: isLoading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : Icon(isEditing ? Icons.check : Icons.save),
                label: Text(
                  isLoading
                      ? 'Saving...'
                      : (isEditing
                            ? 'Update Credentials'
                            : 'Check and Continue'),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface.withCustomOpacity(0.9),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData icon;
  final String helperText;
  final String? Function(String?) validator;
  const _TextFormField({
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.validator,
    required this.icon,
    required this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon, color: theme.colorScheme.primary),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: theme.colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: theme.colorScheme.outline.withAlpha(100),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
        ),
        filled: true,
        fillColor: theme.colorScheme.surface,
        helperText: helperText,
        helperStyle: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ),
      validator: (value) {
        return validator(value);
      },
    );
  }
}
