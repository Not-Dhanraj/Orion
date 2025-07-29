import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/enabled.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class EnabledNotifier extends Notifier<Enabled> {
  @override
  build() {
    final appConst = AppConst();
    final sonarrBox = Hive.box(appConst.sonarrBox);
    final radarrBox = Hive.box(appConst.radarrBox);
    var sonarrEnabled = sonarrBox.get(appConst.sonarrEnabled);
    var radarrEnabled = radarrBox.get(appConst.radarrEnabled);

    return Enabled(sonarr: sonarrEnabled, radarr: radarrEnabled);
  }
}

final enabledNotifierProvider = NotifierProvider<EnabledNotifier, Enabled>(
  EnabledNotifier.new,
);
