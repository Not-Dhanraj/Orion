import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/features/movies/presentation/movie_home/movie_home_controller.dart';
import 'package:client/src/features/series/presentation/series_home/series_home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum SplashRoute { authPage, homePage }

final splashControllerProvider = FutureProvider.autoDispose<SplashRoute>((
  ref,
) async {
  await ref.read(hiveProvider).init();
  final enabled = ref.read(enabledNotifierProvider);

  if (enabled.sonarr || enabled.radarr) {
    await Future.wait([
      if (enabled.sonarr) ref.read(seriesHomeControllerProvider.future),
      if (enabled.radarr) ref.read(movieHomeControllerProvider.future),
    ]);

    return SplashRoute.homePage;
  } else {
    await Future.delayed(Duration(milliseconds: 600));
    return SplashRoute.authPage;
  }
});
