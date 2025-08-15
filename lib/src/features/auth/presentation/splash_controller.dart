import 'package:client/src/app.dart';
import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/features/auth/presentation/auth_page.dart';
import 'package:client/src/features/home/presentation/home_page.dart';
import 'package:client/src/features/home/presentation/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashController extends AsyncNotifier<void> {
  @override
  Future<void> build() async {
    return;
  }

  void navigateToNextScreen() async {
    final hiveService = ref.read(hiveProvider);

    try {
      await hiveService.init();

      final enabled = ref.read(enabledNotifierProvider);

      if (enabled.sonarr || enabled.radarr) {
        await Future.delayed(const Duration(seconds: 1));
        final data = ref.read(homePageControllerProvider);

        navigatorKey.currentState!.pushReplacement(
          MaterialPageRoute(
            builder: (context) =>
                HomePage(pages: data.pages, bottomNavItems: data.navItems),
          ),
        );
      } else {
        await Future.delayed(const Duration(seconds: 1));
        navigatorKey.currentState!.pushReplacement(
          MaterialPageRoute(builder: (context) => const AuthScreen()),
        );
      }
    } catch (e) {
      debugPrint('Error in navigateToNextScreen: $e');
      await Future.delayed(const Duration(seconds: 1));
      navigatorKey.currentState!.pushReplacement(
        MaterialPageRoute(builder: (context) => const AuthScreen()),
      );
    }
  }
}

final splashControllerProvider = AsyncNotifierProvider<SplashController, void>(
  SplashController.new,
);
