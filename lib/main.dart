import 'package:client/features/auth/presentation/view/splash_screen.dart';
import 'package:client/features/settings/application/provider/theme_provider.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeSettings = ref.watch(themeProvider);

    // Define text theme with Google Fonts
    final textTheme = GoogleFonts.montserratTextTheme();

    // Custom theme configurations
    final lightTheme = FlexThemeData.light(
      scheme: themeSettings.flexScheme,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 7,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 10,
        blendOnColors: false,
        textButtonRadius: 8.0,
        elevatedButtonRadius: 8.0,
        outlinedButtonRadius: 8.0,
        inputDecoratorRadius: 8.0,
        cardRadius: 12.0,
        dialogRadius: 12.0,
        timePickerDialogRadius: 12.0,
        bottomSheetRadius: 16.0,
        navigationBarIndicatorOpacity: 0.20,
        navigationBarLabelBehavior:
            NavigationDestinationLabelBehavior.alwaysShow,
      ),
      keyColors: const FlexKeyColors(),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      // Apply the text theme with Google fonts
      fontFamily: GoogleFonts.montserrat().fontFamily,
    ).copyWith(textTheme: textTheme);

    final darkTheme = FlexThemeData.dark(
      scheme: themeSettings.flexScheme,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 13,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 20,
        blendOnColors: false,
        textButtonRadius: 8.0,
        elevatedButtonRadius: 8.0,
        outlinedButtonRadius: 8.0,
        inputDecoratorRadius: 8.0,
        cardRadius: 12.0,
        dialogRadius: 12.0,
        timePickerDialogRadius: 12.0,
        bottomSheetRadius: 16.0,
        navigationBarIndicatorOpacity: 0.30,
        navigationBarLabelBehavior:
            NavigationDestinationLabelBehavior.alwaysShow,
      ),
      keyColors: const FlexKeyColors(),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      // Apply the text theme with Google fonts
      fontFamily: GoogleFonts.montserrat().fontFamily,
    ).copyWith(textTheme: textTheme);

    return ConnectivityAppWrapper(
      app: MaterialApp(
        title: 'arr',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeSettings.themeMode,
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
        builder: (buildContext, widget) {
          return Material(
            child: ConnectivityWidgetWrapper(
              disableInteraction: false,
              height: 56,
              decoration: BoxDecoration(
                color: Theme.of(buildContext).colorScheme.errorContainer,
              ),
              message: "No Internet Connection",
              messageStyle: TextStyle(
                color: Theme.of(buildContext).colorScheme.onErrorContainer,
                fontSize: 14,
              ),
              child: widget!,
            ),
          );
        },
      ),
    );
  }
}
