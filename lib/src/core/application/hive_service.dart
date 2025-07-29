import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveService {
  void init() async {
    await Hive.initFlutter();
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
      var credentialsBox = await Hive.openBox<Credentials>(
        appConst.credentialsBox,
      );
      credentialsBox.put(
        appConst.credentialsKey,
        Credentials(sonarrUrl: '', sonarrApi: '', radarrUrl: '', radarrApi: ''),
      );
    }
  }
}

final hiveProvider = Provider.autoDispose<HiveService>((ref) {
  return HiveService();
});
