import 'package:client/src/app.dart';
import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/features/auth/presentation/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashController extends AsyncNotifier<void> {
  @override
  Future<void> build() async {
    return;
  }

  void navigateToNextScreen() async {
    final hiveService = ref.read(hiveProvider);
    await hiveService.init();
    final enabled = ref.read(enabledNotifierProvider);
    if (enabled.sonarr || enabled.radarr) {
      //TODO: Uncomment when home screen is ready
      // ref.context.go('/home');
    } else {
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
