import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashController extends AsyncNotifier<void> {
  @override
  Future<void> build() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final hiveService = ref.read(hiveProvider);
      hiveService.init();
    });
  }

  void navigateToNextScreen() {
    final enabled = ref.read(enabledNotifierProvider);
    if (enabled.sonarr || enabled.radarr) {
      //TODO: Uncomment when home screen is ready
      // ref.context.go('/home');
    } else {
      //TODO: Uncomment when auth screen is ready
      // ref.context.go('/auth');
    }
  }
}

final splashControllerProvider = AsyncNotifierProvider<SplashController, void>(
  SplashController.new,
);
