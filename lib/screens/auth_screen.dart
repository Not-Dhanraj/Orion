import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:client/models/credentials.dart';
import 'package:client/providers/credentials_provider.dart';

class AuthScreen extends ConsumerWidget {
  final _sonarrUrlController = TextEditingController();
  final _sonarrApiKeyController = TextEditingController();
  final _radarrUrlController = TextEditingController();
  final _radarrApiKeyController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/logo.svg', height: 100),
                const SizedBox(height: 24),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Text('Sonarr', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        TextField(
                          controller: _sonarrUrlController,
                          decoration: const InputDecoration(labelText: 'URL'),
                        ),
                        TextField(
                          controller: _sonarrApiKeyController,
                          decoration: const InputDecoration(labelText: 'API Key'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Text('Radarr', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        TextField(
                          controller: _radarrUrlController,
                          decoration: const InputDecoration(labelText: 'URL'),
                        ),
                        TextField(
                          controller: _radarrApiKeyController,
                          decoration: const InputDecoration(labelText: 'API Key'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    final credentials = Credentials(
                      sonarrUrl: _sonarrUrlController.text,
                      sonarrApiKey: _sonarrApiKeyController.text,
                      radarrUrl: _radarrUrlController.text,
                      radarrApiKey: _radarrApiKeyController.text,
                    );
                    ref.read(credentialsProvider.notifier).saveCredentials(credentials);
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
