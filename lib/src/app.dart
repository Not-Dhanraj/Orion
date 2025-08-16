import 'package:client/src/features/auth/presentation/splash_screen.dart';
import 'package:client/src/features/settings/application/theme_controller.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeSettings = ref.watch(themeSettingsProvider);
    final themeMode = themeSettings.themeMode;
    final useDynamicColor = themeSettings.useDynamicColor;

    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme? lightColorScheme;
        ColorScheme? darkColorScheme;

        if (lightDynamic != null && darkDynamic != null && useDynamicColor) {
          lightColorScheme = lightDynamic;
          darkColorScheme = darkDynamic;
        }

        return MaterialApp(
          navigatorKey: navigatorKey,
          title: 'Orion',
          theme: FlexThemeData.light(
            colorScheme: lightColorScheme,
            scheme: lightColorScheme == null
                ? FlexScheme.materialBaseline
                : FlexScheme.custom,
            surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
            blendLevel: 12,
            appBarStyle: FlexAppBarStyle.background,
            appBarOpacity: 1,
            appBarElevation: 2,
            transparentStatusBar: true,
            tabBarStyle: FlexTabBarStyle.forAppBar,
            tooltipsMatchBackground: true,
            swapColors: false,
            lightIsWhite: false,
            useMaterial3: true,
            useMaterial3ErrorColors: true,
            visualDensity: FlexColorScheme.comfortablePlatformDensity,

            fontFamily: GoogleFonts.outfit().fontFamily,
            subThemesData: FlexSubThemesData(
              fabUseShape: true,
              interactionEffects: true,
              navigationBarMutedUnselectedIcon: true,
              bottomNavigationBarOpacity: 1,
              bottomNavigationBarElevation: 0,
              inputDecoratorIsFilled: true,
              inputDecoratorBorderType: FlexInputBorderType.outline,
              inputDecoratorUnfocusedHasBorder: true,
              blendOnColors: true,
              popupMenuOpacity: 0.95,
            ),
          ),
          darkTheme: FlexThemeData.dark(
            colorScheme: darkColorScheme,
            scheme: darkColorScheme == null
                ? FlexScheme.materialBaseline
                : FlexScheme.custom,
            surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,
            blendLevel: 22,
            appBarStyle: FlexAppBarStyle.background,
            appBarOpacity: 1,
            appBarElevation: 2,
            transparentStatusBar: true,
            tabBarStyle: FlexTabBarStyle.forAppBar,
            tooltipsMatchBackground: true,
            swapColors: false,
            darkIsTrueBlack: false,
            useMaterial3: true,
            useMaterial3ErrorColors: true,
            visualDensity: FlexColorScheme.comfortablePlatformDensity,

            fontFamily: GoogleFonts.outfit().fontFamily,
            subThemesData: FlexSubThemesData(
              fabUseShape: true,
              interactionEffects: true,
              bottomNavigationBarOpacity: 1,
              bottomNavigationBarElevation: 0,
              inputDecoratorIsFilled: true,
              inputDecoratorBorderType: FlexInputBorderType.outline,
              inputDecoratorUnfocusedHasBorder: true,
              blendOnColors: true,
              navigationBarMutedUnselectedIcon: true,
              popupMenuOpacity: 0.95,
            ),
          ),
          themeMode: themeMode,
          home: const SplashScreen(),
        );
      },
    );
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
