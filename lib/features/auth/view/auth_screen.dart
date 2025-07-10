import 'package:client/features/auth/model/credentials.dart';
import 'package:client/features/auth/provider/credentials_provider.dart';
import 'package:client/features/home/view/home_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isEditing
          ? AppBar(title: Text('Edit ${widget.isSonarr ? 'Sonarr' : 'Radarr'}'))
          : null,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!_isEditing)
                  SvgPicture.asset('assets/logo.svg', height: 100),
                if (!_isEditing) const SizedBox(height: 24),
                if (widget.isSonarr || !_isEditing)
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            'Sonarr',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextField(
                            controller: _sonarrUrlController,
                            decoration: const InputDecoration(labelText: 'URL'),
                          ),
                          TextField(
                            controller: _sonarrApiKeyController,
                            decoration: const InputDecoration(
                              labelText: 'API Key',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (widget.isSonarr || !_isEditing) const SizedBox(height: 16),
                if (widget.isRadarr || !_isEditing)
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            'Radarr',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextField(
                            controller: _radarrUrlController,
                            decoration: const InputDecoration(labelText: 'URL'),
                          ),
                          TextField(
                            controller: _radarrApiKeyController,
                            decoration: const InputDecoration(
                              labelText: 'API Key',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (widget.isRadarr || !_isEditing) const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
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
                  child: const Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
