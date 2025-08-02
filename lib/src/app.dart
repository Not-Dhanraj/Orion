import 'package:client/src/features/auth/presentation/splash_screen.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter',
      theme: FlexThemeData.light(
        scheme: FlexScheme.damask,
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
        scheme: FlexScheme.material,
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
      home: const SplashScreen(),
    );
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
