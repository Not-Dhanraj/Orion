import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeSettings>((
  ref,
) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<ThemeSettings> {
  ThemeNotifier() : super(ThemeSettings()) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeModeIndex = prefs.getInt('themeMode') ?? ThemeMode.system.index;
    final themeMode = ThemeMode.values[themeModeIndex];
    final schemeIndex =
        prefs.getInt('schemeIndex') ?? FlexScheme.material.index;
    state = state.copyWith(
      themeMode: themeMode,
      flexScheme: FlexScheme.values[schemeIndex],
    );
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeMode', themeMode.index);
    state = state.copyWith(themeMode: themeMode);
  }

  Future<void> setFlexScheme(FlexScheme flexScheme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('schemeIndex', flexScheme.index);
    state = state.copyWith(flexScheme: flexScheme);
  }
}

class ThemeSettings {
  final ThemeMode themeMode;
  final FlexScheme flexScheme;

  ThemeSettings({
    this.themeMode = ThemeMode.system,
    this.flexScheme = FlexScheme.material,
  });

  ThemeSettings copyWith({ThemeMode? themeMode, FlexScheme? flexScheme}) {
    return ThemeSettings(
      themeMode: themeMode ?? this.themeMode,
      flexScheme: flexScheme ?? this.flexScheme,
    );
  }
}
