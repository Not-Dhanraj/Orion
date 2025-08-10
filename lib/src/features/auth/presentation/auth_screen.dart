import 'package:client/src/features/auth/presentation/auth_controller.dart';
import 'package:client/src/features/home/presentation/home_page.dart';
import 'package:client/src/features/home/presentation/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
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
                mainAxisExtent: 420,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              delegate: SliverChildListDelegate([
                _AuthCard(
                  cardIcon: TablerIcons.device_tv,
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
                  cardIcon: TablerIcons.movie,
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
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: BottomAppBar(
            color: theme.colorScheme.surface,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Proceed to Home Page',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withCustomOpacity(0.7),
                  ),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary.withAlpha(40),
                    foregroundColor: theme.colorScheme.onPrimary,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed:
                      !(authState.sonarrConfigured ||
                          authState.radarrConfigured)
                      ? null
                      : () {
                          final data = ref.read(homePageControllerProvider);

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => HomePage(
                                pages: data.pages,
                                bottomNavItems: data.navItems,
                              ),
                            ),
                          );
                        },
                  icon: Icon(TablerIcons.chevrons_right),
                  label: Text(
                    'Proceed',
                    style: TextStyle(
                      color: theme.colorScheme.onSurface.withCustomOpacity(0.9),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AuthCard extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    final authState = ref.watch(authControllerProvider);
    final errorMessage = type == 'Sonarr'
        ? authState.sonarrError
        : authState.radarrError;

    return Card(
      elevation: 2,
      shadowColor: Colors.black.withAlpha(40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: errorMessage.isNotEmpty
              ? Colors.red.withAlpha(100)
              : primaryColor.withAlpha(25),
          width: 1.5,
        ),
      ),
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
              Text(
                'Server URL',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              _TextFormField(
                controller: urlController,
                labelText: '$type URL',
                hintText: 'http://your-server:port',
                validator: (value) => ref
                    .read(authControllerProvider.notifier)
                    .urlValidatorCheck(value),
                icon: TablerIcons.link,
                helperText:
                    'Example: http://localhost:port or https://yourdomain.xyz',
              ),
              const SizedBox(height: 20),
              Text(
                'API Key',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              _TextFormField(
                controller: apiKeyController,
                labelText: 'API Key',
                hintText: 'Enter your API key',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter API key';
                  }
                  return null;
                },
                icon: TablerIcons.lock,
                helperText: 'Found in Settings > General > API Key',
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
                    : Icon(
                        isEditing
                            ? TablerIcons.checks
                            : TablerIcons.device_floppy,
                      ),
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
