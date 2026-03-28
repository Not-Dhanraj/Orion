import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveService {
  static const String themeBoxName = 'theme_settings';

  Future<void> init() async {
    await Hive.initFlutter();

    try {
      if (!_isAdapterRegistered(1)) {
        Hive.registerAdapter(SonarrCredentialsAdapter());
      }

      if (!_isAdapterRegistered(2)) {
        Hive.registerAdapter(RadarrCredentialsAdapter());
      }
    } catch (e) {
      debugPrint('Error registering adapters: $e');
      rethrow;
    }

    var appConst = AppConst();

    await Hive.openBox(appConst.sonarrBox);
    await Hive.openBox(appConst.radarrBox);
    await Hive.openBox(appConst.credentialsBox);

    await Hive.openBox(themeBoxName);
  }

  bool _isAdapterRegistered(int typeId) {
    try {
      return Hive.isAdapterRegistered(typeId);
    } catch (_) {
      return false;
    }
  }

  Future<void> saveSonarrCredentials(SonarrCredentials credentials) async {
    var credentialsBox = Hive.box(AppConst().credentialsBox);
    var appConst = AppConst();
    await credentialsBox.put(appConst.sonarrCredKey, credentials);
  }

  Future<void> saveRadarrCredentials(RadarrCredentials credentials) async {
    var credentialsBox = Hive.box(AppConst().credentialsBox);
    var appConst = AppConst();
    await credentialsBox.put(appConst.radarrCredKey, credentials);
  }

  SonarrCredentials? getSonarrCredentials() {
    var credentialsBox = Hive.box(AppConst().credentialsBox);
    var appConst = AppConst();
    final creds = credentialsBox.get(appConst.sonarrCredKey);
    return creds is SonarrCredentials ? creds : null;
  }

  RadarrCredentials? getRadarrCredentials() {
    var credentialsBox = Hive.box(AppConst().credentialsBox);
    var appConst = AppConst();
    final creds = credentialsBox.get(appConst.radarrCredKey);
    return creds is RadarrCredentials ? creds : null;
  }
}

final hiveProvider = Provider.autoDispose<HiveService>((ref) {
  return HiveService();
});
