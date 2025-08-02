import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveService {
  void init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(SonarrCredentialsAdapter());
    Hive.registerAdapter(RadarrCredentialsAdapter());
    var appConst = AppConst();
    if (!Hive.isBoxOpen(appConst.sonarrBox)) {
      var sonarrBox = await Hive.openBox(appConst.sonarrBox);
      sonarrBox.put(appConst.sonarrEnabled, false);
    }

    if (!Hive.isBoxOpen(appConst.radarrBox)) {
      var radarrBox = await Hive.openBox(appConst.radarrBox);
      radarrBox.put(appConst.radarrEnabled, false);
    }
    if (!Hive.isBoxOpen(appConst.credentialsBox)) {
      await Hive.openBox(appConst.credentialsBox);
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
