import 'dart:io';
import 'package:client/features/auth/domain/credentials.dart';
import 'package:client/features/auth/application/provider/credentials_provider.dart';
import 'package:client/features/home/presentation/view/home_screen.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthScreen extends ConsumerStatefulWidget {
  final bool isSonarr;
  final bool isRadarr;

  const AuthScreen({super.key, this.isSonarr = false, this.isRadarr = false});

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  final _sonarrUrlController = TextEditingController();
  final _sonarrApiKeyController = TextEditingController();
  final _radarrUrlController = TextEditingController();
  final _radarrApiKeyController = TextEditingController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    final credentials = ref.read(credentialsProvider);
    if (credentials != null) {
      _sonarrUrlController.text = credentials.sonarrUrl;
      _sonarrApiKeyController.text = credentials.sonarrApiKey;
      _radarrUrlController.text = credentials.radarrUrl;
      _radarrApiKeyController.text = credentials.radarrApiKey;
    }
  }

  bool get _isEditing => widget.isSonarr || widget.isRadarr;

  bool _isValidUrl(String url) {
    if (url.trim().isEmpty) return false;

    try {
      final uri = Uri.parse(url.trim());
      return uri.hasScheme &&
          (uri.scheme == 'http' || uri.scheme == 'https') &&
          uri.hasAuthority;
    } catch (e) {
      return false;
    }
  }

  String? _validateCredentials() {
    // Check if we're editing a specific service
    if (widget.isSonarr) {
      if (_sonarrUrlController.text.trim().isEmpty) {
        return 'Sonarr URL is required';
      }
      if (!_isValidUrl(_sonarrUrlController.text)) {
        return 'Please enter a valid Sonarr URL (e.g., http://localhost:8989)';
      }
      if (_sonarrApiKeyController.text.trim().isEmpty) {
        return 'Sonarr API Key is required';
      }
    } else if (widget.isRadarr) {
      if (_radarrUrlController.text.trim().isEmpty) {
        return 'Radarr URL is required';
      }
      if (!_isValidUrl(_radarrUrlController.text)) {
        return 'Please enter a valid Radarr URL (e.g., http://localhost:7878)';
      }
      if (_radarrApiKeyController.text.trim().isEmpty) {
        return 'Radarr API Key is required';
      }
    } else {
      // Initial setup - require at least one service
      bool hasSonarr =
          _sonarrUrlController.text.trim().isNotEmpty ||
          _sonarrApiKeyController.text.trim().isNotEmpty;
      bool hasRadarr =
          _radarrUrlController.text.trim().isNotEmpty ||
          _radarrApiKeyController.text.trim().isNotEmpty;

      if (!hasSonarr && !hasRadarr) {
        return 'Please configure at least one service (Sonarr or Radarr)';
      }

      // Validate Sonarr if any field is filled
      if (hasSonarr) {
        if (_sonarrUrlController.text.trim().isEmpty) {
          return 'Sonarr URL is required when configuring Sonarr';
        }
        if (!_isValidUrl(_sonarrUrlController.text)) {
          return 'Please enter a valid Sonarr URL (e.g., http://localhost:8989)';
        }
        if (_sonarrApiKeyController.text.trim().isEmpty) {
          return 'Sonarr API Key is required when configuring Sonarr';
        }
      }

      // Validate Radarr if any field is filled
      if (hasRadarr) {
        if (_radarrUrlController.text.trim().isEmpty) {
          return 'Radarr URL is required when configuring Radarr';
        }
        if (!_isValidUrl(_radarrUrlController.text)) {
          return 'Please enter a valid Radarr URL (e.g., http://localhost:7878)';
        }
        if (_radarrApiKeyController.text.trim().isEmpty) {
          return 'Radarr API Key is required when configuring Radarr';
        }
      }
    }

    return null;
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Validation Error'),
        content: Text(message),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget _buildValidatedTextField({
    required TextEditingController controller,
    required String label,
    required String hintText,
    required IconData icon,
    required String fieldType,
    bool isPassword = false,
    VoidCallback? onTestConnection,
  }) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            if (fieldType == 'url' && onTestConnection != null)
              TextButton.icon(
                onPressed: controller.text.trim().isNotEmpty
                    ? onTestConnection
                    : null,
                icon: const Icon(Icons.wifi_find, size: 16),
                label: const Text('Test'),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: isPassword,
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
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 2,
              ),
            ),
            filled: true,
            fillColor: theme.colorScheme.surface,
            helperText: fieldType == 'url'
                ? 'Example: http://localhost:8989 or https://yourdomain.xyz'
                : 'Found in Settings > General > API Key',
            helperStyle: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _testConnection(String url, String serviceName) async {
    if (!_isValidUrl(url)) {
      _showErrorDialog('Please enter a valid URL first');
      return;
    }

    // Show loading dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Testing $serviceName Connection'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Connecting to server...'),
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );

    try {
      // Simple connectivity test
      final uri = Uri.parse(url.trim());
      final client = HttpClient();
      final request = await client.getUrl(uri);
      request.headers.set('User-Agent', 'arr-client-test');

      final response = await request.close().timeout(
        const Duration(seconds: 10),
      );
      await response.drain(); // Consume the response
      client.close();

      // Close loading dialog
      if (mounted) Navigator.of(context).pop();

      // Show success dialog
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 8),
                Text('Connection Successful'),
              ],
            ),
            content: Text('Successfully connected to $serviceName server!'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      // Close loading dialog
      if (mounted) Navigator.of(context).pop();

      // Show error dialog
      if (mounted) {
        _showErrorDialog('Failed to connect to $serviceName:\n${e.toString()}');
      }
    }
  }

  Widget _buildServerCard({
    required BuildContext context,
    required String title,
    required TextEditingController urlController,
    required TextEditingController apiKeyController,
    required IconData icon,
    required Color primaryColor,
  }) {
    final theme = Theme.of(context);

    return Card(
      elevation: 2,
      shadowColor: Colors.black.withAlpha(40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
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
                  child: Icon(icon, size: 24, color: primaryColor),
                ),
                const SizedBox(width: 16),
                Text(
                  title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // URL Field
            _buildValidatedTextField(
              controller: urlController,
              label: 'Server URL',
              hintText: 'http://your-server:port',
              icon: Icons.link,
              fieldType: 'url',
              onTestConnection: () => _testConnection(
                urlController.text,
                title.contains('Sonarr') ? 'Sonarr' : 'Radarr',
              ),
            ),
            const SizedBox(height: 20),

            // API Key Field
            _buildValidatedTextField(
              controller: apiKeyController,
              label: 'API Key',
              hintText: 'Enter your API key',
              icon: Icons.key,
              fieldType: 'api',
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: _isEditing
          ? AppBar(
              title: Text(
                'Edit ${widget.isSonarr ? 'Sonarr' : 'Radarr'} Credentials',
              ),
              centerTitle: true,
              elevation: 0,
            )
          : null,
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(24.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // Logo Section (only for initial setup)
                if (!_isEditing) ...[
                  Entry.opacity(
                    duration: const Duration(milliseconds: 400),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer
                                  .withAlpha(100),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SvgPicture.asset(
                              'assets/logo.svg',
                              height: 80,
                              colorFilter: ColorFilter.mode(
                                theme.colorScheme.primary,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Setup Server Credentials',
                            style: theme.textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Configure your Sonarr and Radarr servers',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],

                // Sonarr Card
                if (widget.isSonarr || !_isEditing) ...[
                  Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 100),
                    child: _buildServerCard(
                      context: context,
                      title: 'Sonarr Configuration',
                      urlController: _sonarrUrlController,
                      apiKeyController: _sonarrApiKeyController,
                      icon: Icons.tv,
                      primaryColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],

                // Radarr Card
                if (widget.isRadarr || !_isEditing) ...[
                  Entry.opacity(
                    duration: const Duration(milliseconds: 600),
                    delay: const Duration(milliseconds: 150),
                    child: _buildServerCard(
                      context: context,
                      title: 'Radarr Configuration',
                      urlController: _radarrUrlController,
                      apiKeyController: _radarrApiKeyController,
                      icon: Icons.movie,
                      primaryColor: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 32),
                ],

                // Save Button
                Entry.opacity(
                  duration: const Duration(milliseconds: 700),
                  delay: const Duration(milliseconds: 200),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [
                          theme.colorScheme.primary,
                          theme.colorScheme.primary.withAlpha(200),
                        ],
                      ),
                    ),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: theme.colorScheme.onPrimary,
                        shadowColor: Colors.transparent,
                        minimumSize: const Size(double.infinity, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: _isLoading
                          ? null
                          : () async {
                              // Validate credentials before saving
                              final validationError = _validateCredentials();
                              if (validationError != null) {
                                _showErrorDialog(validationError);
                                return;
                              }

                              setState(() {
                                _isLoading = true;
                              });

                              final navigator = Navigator.of(context);
                              final credentials = Credentials(
                                sonarrUrl: _sonarrUrlController.text.trim(),
                                sonarrApiKey: _sonarrApiKeyController.text
                                    .trim(),
                                radarrUrl: _radarrUrlController.text.trim(),
                                radarrApiKey: _radarrApiKeyController.text
                                    .trim(),
                              );

                              try {
                                await ref
                                    .read(credentialsProvider.notifier)
                                    .saveCredentials(credentials);

                                if (_isEditing) {
                                  navigator.pop();
                                } else {
                                  navigator.pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ),
                                  );
                                }
                              } catch (e) {
                                setState(() {
                                  _isLoading = false;
                                });
                                _showErrorDialog(
                                  'Failed to save credentials: ${e.toString()}',
                                );
                              }
                            },
                      icon: _isLoading
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : Icon(_isEditing ? Icons.check : Icons.save),
                      label: Text(
                        _isLoading
                            ? 'Saving...'
                            : (_isEditing
                                  ? 'Update Credentials'
                                  : 'Save & Continue'),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
