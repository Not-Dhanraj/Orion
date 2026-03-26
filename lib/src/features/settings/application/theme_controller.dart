import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  static const String _themeBoxName = HiveService.themeBoxName;

  ThemeModeNotifier() : super(ThemeMode.system) {
    _tryLoadTheme();
  }

  var appconst = AppConst();

  void _tryLoadTheme() {
    try {
      if (Hive.isBoxOpen(_themeBoxName)) {
        final box = Hive.box(_themeBoxName);
        final themeValue = box.get(
          appconst.themeModeKey,
          defaultValue: ThemeMode.system.index,
        );

        state = ThemeMode.values[themeValue];
      } else {
        state = ThemeMode.system;
      }
    } catch (e) {
      debugPrint('Error while Loading Theme: $e');
    }
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final box = Hive.box(_themeBoxName);
    await box.put(appconst.themeModeKey, mode.index);
    state = mode;
  }
}

final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(),
);
