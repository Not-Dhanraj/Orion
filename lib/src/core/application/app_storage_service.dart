import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/data/secure_storage_repository.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

class AppStorageService {
  final SecureStorageRepository _repository;
  SonarrCredentials? _sonarrCredentials;
  RadarrCredentials? _radarrCredentials;
  JellyfinCredentials? _jellyfinCredentials;
  String? _deviceId;

  AppStorageService(this._repository);

  Future<void> init() async {
    await Hive.initFlutter();
    final appConst = AppConst();
    await Hive.openBox(appConst.themeBoxName);
    await _loadCredentials();
    _deviceId = await _repository.getDeviceId();
  }

  String get deviceId => _deviceId!;

  Future<void> saveSonarrCredentials(SonarrCredentials credentials) async {
    _sonarrCredentials = credentials;
    await _repository.saveSonarrCredentials(credentials);
  }

  Future<void> saveRadarrCredentials(RadarrCredentials credentials) async {
    _radarrCredentials = credentials;
    await _repository.saveRadarrCredentials(credentials);
  }

  Future<void> saveJellyfinCredentials(JellyfinCredentials credentials) async {
    _jellyfinCredentials = credentials;
    await _repository.saveJellyfinCredentials(credentials);
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

  Future<void> deleteSonarrCredentials() async {
    _sonarrCredentials = null;
    await _repository.deleteSonarrCredentials();
  }

  Future<void> deleteRadarrCredentials() async {
    _radarrCredentials = null;
    await _repository.deleteRadarrCredentials();
  }

  Future<void> deleteJellyfinCredentials() async {
    _jellyfinCredentials = null;
    await _repository.deleteJellyfinCredentials();
  }

  Future<void> _loadCredentials() async {
    _sonarrCredentials = await _repository.loadSonarrCredentials();
    _radarrCredentials = await _repository.loadRadarrCredentials();
    _jellyfinCredentials = await _repository.loadJellyfinCredentials();
  }
}

final secureStorageRepository = SecureStorageRepository();
final appStorageService = AppStorageService(secureStorageRepository);

final appStorageProvider = Provider<AppStorageService>((ref) {
  return appStorageService;
});