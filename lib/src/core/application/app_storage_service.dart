import 'dart:convert';
import 'dart:math';

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
  JellyfinCredentials? _jellyfinCredentials;
  String? _deviceId;

  AppStorageService({FlutterSecureStorage? secureStorage})
    : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  Future<void> init() async {
    await Hive.initFlutter();
    final appConst = AppConst();
    await Hive.openBox(appConst.themeBoxName);
    await _loadCredentials();
    _deviceId = await getDeviceId();
  }

  String get deviceId => _deviceId!;

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

  Future<void> saveJellyfinCredentials(JellyfinCredentials credentials) async {
    var appConst = AppConst();
    _jellyfinCredentials = credentials;
    await _secureStorage.write(
      key: appConst.jellyfinCredKey,
      value: jsonEncode({
        'url': credentials.jellyfinUrl,
        'username': credentials.username,
        'accessToken': credentials.accessToken,
        'userId': credentials.userId,
      }),
    );
  }

  SonarrCredentials? getSonarrCredentials() {
    return _sonarrCredentials;
  }

  RadarrCredentials? getRadarrCredentials() {
    return _radarrCredentials;
  }

  JellyfinCredentials? getJellyfinCredentials() {
    return _jellyfinCredentials;
  }

  bool hasSonarrCredentials() => _sonarrCredentials != null;

  bool hasRadarrCredentials() => _radarrCredentials != null;

  bool hasJellyfinCredentials() => _jellyfinCredentials != null;

  Future<String> getDeviceId() async {
    final appConst = AppConst();
    final stored = await _secureStorage.read(key: appConst.deviceIdKey);
    if (stored != null && stored.isNotEmpty) return stored;

    final rng = Random.secure();
    final id = List.generate(
      16,
      (_) => rng.nextInt(256),
    ).map((b) => b.toRadixString(16).padLeft(2, '0')).join();
    await _secureStorage.write(key: appConst.deviceIdKey, value: id);
    return id;
  }

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

  Future<void> deleteJellyfinCredentials() async {
    var appConst = AppConst();
    _jellyfinCredentials = null;
    await _secureStorage.delete(key: appConst.jellyfinCredKey);
  }

  Future<void> _loadCredentials() async {
    var appConst = AppConst();
    final sonarrData = await _secureStorage.read(key: appConst.sonarrCredKey);
    final radarrData = await _secureStorage.read(key: appConst.radarrCredKey);
    final jellyfinData = await _secureStorage.read(
      key: appConst.jellyfinCredKey,
    );

    _sonarrCredentials = _decodeSonarrCredentials(sonarrData);
    _radarrCredentials = _decodeRadarrCredentials(radarrData);
    _jellyfinCredentials = _decodeJellyfinCredentials(jellyfinData);
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

  JellyfinCredentials? _decodeJellyfinCredentials(String? data) {
    if (data == null || data.isEmpty) {
      return null;
    }

    try {
      final decoded = jsonDecode(data);
      if (decoded is! Map<String, dynamic>) {
        return null;
      }

      final url = decoded['url'];
      final username = decoded['username'];
      final accessToken = decoded['accessToken'];
      final userId = decoded['userId'];

      if (url is! String ||
          username is! String ||
          accessToken is! String ||
          userId is! String ||
          url.isEmpty ||
          username.isEmpty ||
          accessToken.isEmpty ||
          userId.isEmpty) {
        return null;
      }

      return JellyfinCredentials(
        jellyfinUrl: url,
        username: username,
        accessToken: accessToken,
        userId: userId,
      );
    } catch (e) {
      debugPrint('Error decoding Jellyfin credentials: $e');
      return null;
    }
  }
}

final appStorageService = AppStorageService();

final appStorageProvider = Provider<AppStorageService>((ref) {
  return appStorageService;
});
