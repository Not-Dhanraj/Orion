import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveService {
  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(SonarrCredentialsAdapter());
    Hive.registerAdapter(RadarrCredentialsAdapter());
    var appConst = AppConst();
    var sonarrBox = await Hive.openBox(appConst.sonarrBox);
    if (sonarrBox.get(appConst.sonarrEnabled) == null) {
      sonarrBox.put(appConst.sonarrEnabled, false);
    }

    var radarrBox = await Hive.openBox(appConst.radarrBox);
    if (radarrBox.get(appConst.radarrEnabled) == null) {
      radarrBox.put(appConst.radarrEnabled, false);
    }
    await Hive.openBox(appConst.credentialsBox);
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
