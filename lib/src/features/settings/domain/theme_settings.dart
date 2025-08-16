import 'package:flutter/material.dart';

class ThemeSettings {
  final ThemeMode themeMode;
  final bool useDynamicColor;

  const ThemeSettings({required this.themeMode, required this.useDynamicColor});

  ThemeSettings copyWith({ThemeMode? themeMode, bool? useDynamicColor}) {
    return ThemeSettings(
      themeMode: themeMode ?? this.themeMode,
      useDynamicColor: useDynamicColor ?? this.useDynamicColor,
    );
  }
}
