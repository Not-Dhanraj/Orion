import 'package:client/features/auth/presentation/view/splash_screen.dart';
import 'package:client/features/settings/application/provider/theme_provider.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeSettings = ref.watch(themeProvider);

    return ConnectivityAppWrapper(
      app: MaterialApp(
        title: 'arr',
        theme: FlexThemeData.light(scheme: themeSettings.flexScheme),
        darkTheme: FlexThemeData.dark(scheme: themeSettings.flexScheme),
        themeMode: themeSettings.themeMode,
        home: const SplashScreen(),
        builder: (buildContext, widget) {
          return ConnectivityWidgetWrapper(
            disableInteraction: true,
            height: 70,
            child: widget!,
          );
        },
      ),
    );
  }
}
