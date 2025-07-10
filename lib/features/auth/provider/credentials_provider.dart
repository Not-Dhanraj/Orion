import 'package:client/features/auth/model/credentials.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final credentialsProvider =
    StateNotifierProvider<CredentialsNotifier, Credentials?>((ref) {
  return CredentialsNotifier();
});

class CredentialsNotifier extends StateNotifier<Credentials?> {
  CredentialsNotifier() : super(null);

  final _storage = const FlutterSecureStorage();

  Future<void> init() async {
    await _loadCredentials();
  }

  Future<bool> _loadCredentials() async {
    final sonarrUrl = await _storage.read(key: 'sonarrUrl');
    final sonarrApiKey = await _storage.read(key: 'sonarrApiKey');
    final radarrUrl = await _storage.read(key: 'radarrUrl');
    final radarrApiKey = await _storage.read(key: 'radarrApiKey');

    if (sonarrUrl != null &&
        sonarrApiKey != null &&
        radarrUrl != null &&
        radarrApiKey != null) {
      state = Credentials(
        sonarrUrl: sonarrUrl,
        sonarrApiKey: sonarrApiKey,
        radarrUrl: radarrUrl,
        radarrApiKey: radarrApiKey,
      );
      return true;
    }
    return false;
  }

  Future<void> saveCredentials(Credentials credentials) async {
    await _storage.write(key: 'sonarrUrl', value: credentials.sonarrUrl);
    await _storage.write(key: 'sonarrApiKey', value: credentials.sonarrApiKey);
    await _storage.write(key: 'radarrUrl', value: credentials.radarrUrl);
    await _storage.write(key: 'radarrApiKey', value: credentials.radarrApiKey);
    state = credentials;
  }

  Future<void> clearCredentials() async {
    await _storage.deleteAll();
    state = null;
  }
}

