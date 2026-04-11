import 'dart:convert';

import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce_flutter/adapters.dart';

class AppStorageService {
  final FlutterSecureStorage _secureStorage;
  SonarrCredentials? _sonarrCredentials;
  RadarrCredentials? _radarrCredentials;

  AppStorageService({FlutterSecureStorage? secureStorage})
    : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  Future<void> init() async {
    await Hive.initFlutter();
    final appConst = AppConst();
    await Hive.openBox(appConst.themeBoxName);
    await _loadCredentials();
  }

  Future<void> saveSonarrCredentials(SonarrCredentials credentials) async {
    var appConst = AppConst();
    _sonarrCredentials = credentials;
    await _secureStorage.write(
      key: appConst.sonarrCredKey,
      value: jsonEncode({
        'url': credentials.sonarrUrl,
        'api': credentials.sonarrApi,
      }),
    );
  }

  Future<void> saveRadarrCredentials(RadarrCredentials credentials) async {
    var appConst = AppConst();
    _radarrCredentials = credentials;
    await _secureStorage.write(
      key: appConst.radarrCredKey,
      value: jsonEncode({
        'url': credentials.radarrUrl,
        'api': credentials.radarrApi,
      }),
    );
  }

  SonarrCredentials? getSonarrCredentials() {
    return _sonarrCredentials;
  }

  RadarrCredentials? getRadarrCredentials() {
    return _radarrCredentials;
  }

  bool hasSonarrCredentials() => _sonarrCredentials != null;

  bool hasRadarrCredentials() => _radarrCredentials != null;

  Future<void> deleteSonarrCredentials() async {
    var appConst = AppConst();
    _sonarrCredentials = null;
    await _secureStorage.delete(key: appConst.sonarrCredKey);
  }

  Future<void> deleteRadarrCredentials() async {
    var appConst = AppConst();
    _radarrCredentials = null;
    await _secureStorage.delete(key: appConst.radarrCredKey);
  }

  Future<void> _loadCredentials() async {
    var appConst = AppConst();
    final sonarrData = await _secureStorage.read(key: appConst.sonarrCredKey);
    final radarrData = await _secureStorage.read(key: appConst.radarrCredKey);

    _sonarrCredentials = _decodeSonarrCredentials(sonarrData);
    _radarrCredentials = _decodeRadarrCredentials(radarrData);
  }

  SonarrCredentials? _decodeSonarrCredentials(String? data) {
    if (data == null || data.isEmpty) {
      return null;
    }

    try {
      final decoded = jsonDecode(data);
      if (decoded is! Map<String, dynamic>) {
        return null;
      }

      final url = decoded['url'];
      final api = decoded['api'];
      if (url is! String || api is! String || url.isEmpty || api.isEmpty) {
        return null;
      }

      return SonarrCredentials(sonarrUrl: url, sonarrApi: api);
    } catch (e) {
      debugPrint('Error decoding Sonarr credentials: $e');
      return null;
    }
  }

  RadarrCredentials? _decodeRadarrCredentials(String? data) {
    if (data == null || data.isEmpty) {
      return null;
    }

    try {
      final decoded = jsonDecode(data);
      if (decoded is! Map<String, dynamic>) {
        return null;
      }

      final url = decoded['url'];
      final api = decoded['api'];
      if (url is! String || api is! String || url.isEmpty || api.isEmpty) {
        return null;
      }

      return RadarrCredentials(radarrUrl: url, radarrApi: api);
    } catch (e) {
      debugPrint('Error decoding Radarr credentials: $e');
      return null;
    }
  }
}

final appStorageService = AppStorageService();

final appStorageProvider = Provider<AppStorageService>((ref) {
  return appStorageService;
});
