import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/features/calendar/presentation/calendar_page_controller.dart';
import 'package:client/src/features/movies/presentation/movie_library/movie_library_controller.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:client/src/features/auth/domain/splash_route.dart';

final splashController = FutureProvider.autoDispose<SplashRoute>((ref) async {
  final enabled = ref.read(enabledNotifierProvider);

  if (!enabled.sonarr && !enabled.radarr) {
    await Future.delayed(const Duration(milliseconds: 600));
    return SplashRoute.authPage;
  }

  await Future.wait([
    ref.read(calendarPageController.future),
    if (enabled.sonarr) ref.read(seriesLibraryController.future),
    if (enabled.radarr) ref.read(movieLibraryController.future),
  ]);

  return SplashRoute.homePage;
});
