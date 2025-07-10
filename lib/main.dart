import 'package:client/features/auth/provider/credentials_provider.dart';
import 'package:client/features/auth/view/auth_screen.dart';
import 'package:client/features/home/view/home_screen.dart';
import 'package:client/features/settings/provider/theme_provider.dart';
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
    final credentials = ref.watch(credentialsProvider);
    final themeSettings = ref.watch(themeProvider);

    return MaterialApp(
      title: 'arr',
      theme: FlexThemeData.light(scheme: themeSettings.flexScheme),
      darkTheme: FlexThemeData.dark(scheme: themeSettings.flexScheme),
      themeMode: themeSettings.themeMode,
      home: credentials == null ? AuthScreen() : const HomeScreen(),
    );
  }
}
