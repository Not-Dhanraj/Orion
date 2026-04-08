import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/enabled.dart';
import 'package:client/src/features/home/domain/home_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class EnabledNotifier extends Notifier<Enabled> {
  @override
  build() {
    final appConst = AppConst();
    if (!Hive.isBoxOpen(appConst.credentialsBox)) {
      return Enabled(sonarr: false, radarr: false);
    }
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
