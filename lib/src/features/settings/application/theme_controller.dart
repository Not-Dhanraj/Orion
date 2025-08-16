import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/features/settings/domain/theme_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

class ThemeSettingsNotifier extends StateNotifier<ThemeSettings> {
  static const String _themeBoxName = HiveService.themeBoxName;

  ThemeSettingsNotifier()
    : super(
        const ThemeSettings(themeMode: ThemeMode.system, useDynamicColor: true),
      ) {
    _tryLoadTheme();
  }

  void _tryLoadTheme() {
    try {
      if (Hive.isBoxOpen(_themeBoxName)) {
        state = _loadThemeSettings();
      }
    } catch (e) {
      debugPrint('Error in quick theme load: $e');
    }
  }

  ThemeSettings _loadThemeSettings() {
    var appconst = AppConst();
    if (!Hive.isBoxOpen(_themeBoxName)) {
      return const ThemeSettings(
        themeMode: ThemeMode.system,
        useDynamicColor: true,
      );
    }
    final box = Hive.box(_themeBoxName);
    final themeValue = box.get(
      appconst.themeModeKey,
      defaultValue: ThemeMode.system.index,
    );
    final useDynamicColor = box.get(
      appconst.useDynamicColorKey,
      defaultValue: true,
    );
    return ThemeSettings(
      themeMode: ThemeMode.values[themeValue],
      useDynamicColor: useDynamicColor,
    );
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    var appconst = AppConst();

    final box = Hive.box(_themeBoxName);
    await box.put(appconst.themeModeKey, mode.index);
    state = state.copyWith(themeMode: mode);
  }

  Future<void> setDynamicColorEnabled(bool enabled) async {
    var appconst = AppConst();

    final box = Hive.box(_themeBoxName);
    await box.put(appconst.useDynamicColorKey, enabled);
    state = state.copyWith(useDynamicColor: enabled);
  }
}

final themeSettingsProvider =
    StateNotifierProvider<ThemeSettingsNotifier, ThemeSettings>(
      (ref) => ThemeSettingsNotifier(),
    );
