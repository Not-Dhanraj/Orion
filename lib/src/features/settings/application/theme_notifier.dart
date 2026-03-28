import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

class ThemeModeNotifier extends Notifier<ThemeMode> {
  static const String _themeBoxName = HiveService.themeBoxName;
  final _appConst = AppConst();

  @override
  ThemeMode build() {
    try {
      if (Hive.isBoxOpen(_themeBoxName)) {
        final box = Hive.box(_themeBoxName);
        final themeValue = box.get(
          _appConst.themeModeKey,
          defaultValue: ThemeMode.system.index,
        );
        return ThemeMode.values[themeValue];
      }
    } catch (e) {
      debugPrint('Error while loading theme: $e');
    }
    return ThemeMode.system;
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final box = Hive.box(_themeBoxName);
    await box.put(_appConst.themeModeKey, mode.index);
    state = mode;
  }
}

final themeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(
  ThemeModeNotifier.new,
);
