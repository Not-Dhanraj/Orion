import 'package:client/src/features/auth/presentation/splash_screen.dart';
import 'package:client/src/features/settings/application/settings_controller.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeSettingsProvider);
    
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter',
      theme: FlexThemeData.light(
        scheme: FlexScheme.materialBaseline,
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
        // To use playground font, add GoogleFonts package and uncomment:
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
        scheme: FlexScheme.materialBaseline,
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
        // To use playground font, add GoogleFonts package and uncomment:
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
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
