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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Server URL',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'http://your-server:port',
                    prefixIcon: Icon(Icons.link, color: theme.colorScheme.primary),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: theme.colorScheme.outline),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: theme.colorScheme.outline.withAlpha(100)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: primaryColor, width: 2),
                    ),
                    filled: true,
                    fillColor: theme.colorScheme.surface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // API Key Field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'API Key',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: apiKeyController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your API key',
                    prefixIcon: Icon(Icons.key, color: theme.colorScheme.primary),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: theme.colorScheme.outline),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: theme.colorScheme.outline.withAlpha(100)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: primaryColor, width: 2),
                    ),
                    filled: true,
                    fillColor: theme.colorScheme.surface,
                  ),
                ),
              ],
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
              title: Text('Edit ${widget.isSonarr ? 'Sonarr' : 'Radarr'} Credentials'),
              centerTitle: true,
              elevation: 0,
            )
          : null,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
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
                              color: theme.colorScheme.primaryContainer.withAlpha(100),
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
                      onPressed: () async {
                        final navigator = Navigator.of(context);
                        final credentials = Credentials(
                          sonarrUrl: _sonarrUrlController.text,
                          sonarrApiKey: _sonarrApiKeyController.text,
                          radarrUrl: _radarrUrlController.text,
                          radarrApiKey: _radarrApiKeyController.text,
                        );
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
                      },
                      icon: Icon(_isEditing ? Icons.check : Icons.save),
                      label: Text(
                        _isEditing ? 'Update Credentials' : 'Save & Continue',
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
