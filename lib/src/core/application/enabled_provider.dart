import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/enabled.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class EnabledNotifier extends Notifier<Enabled> {
  @override
  build() {
    final appConst = AppConst();
    final credBox = Hive.box(appConst.credentialsBox);
    return Enabled(
      sonarr: credBox.containsKey(appConst.sonarrCredKey),
      radarr: credBox.containsKey(appConst.radarrCredKey),
    );
  }
}

final enabledNotifierProvider = NotifierProvider<EnabledNotifier, Enabled>(
  EnabledNotifier.new,
);
