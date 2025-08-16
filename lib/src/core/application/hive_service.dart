import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveService {
  static const String themeBoxName = 'theme_settings';

  Future<void> init() async {
    await Hive.initFlutter();

    // Register adapters only if not already registered
    try {
      // Check if adapters are already registered by their typeId
      if (!_isAdapterRegistered(1)) {
        Hive.registerAdapter(SonarrCredentialsAdapter());
      }

      if (!_isAdapterRegistered(2)) {
        Hive.registerAdapter(RadarrCredentialsAdapter());
      }
    } catch (e) {
      // Log any errors
      debugPrint('Error registering adapters: $e');
    }

    var appConst = AppConst();

    // Open boxes
    await Hive.openBox(appConst.sonarrBox);
    await Hive.openBox(appConst.radarrBox);
    await Hive.openBox(appConst.credentialsBox);

    // Open theme settings box
    await Hive.openBox(themeBoxName);
  }

  // Helper method to check if an adapter is already registered
  bool _isAdapterRegistered(int typeId) {
    try {
      return Hive.isAdapterRegistered(typeId);
    } catch (_) {
      // If we can't check, assume it's not registered
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
