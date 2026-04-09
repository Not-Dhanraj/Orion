import 'package:client/src/features/auth/presentation/auth_page.dart';
import 'package:client/src/features/auth/presentation/splash/splash_page.dart';
import 'package:client/src/features/home/presentation/home_pageview/home_page.dart';
import 'package:client/src/features/home/presentation/library/library_page.dart';
import 'package:client/src/features/movies/presentation/movie_detail/movie_details_page.dart';
import 'package:client/src/features/series/presentation/series_detail/series_details_page.dart';
import 'package:client/src/features/queue/presentation/queue_page.dart';
import 'package:client/src/features/calendar/presentation/calendar_page.dart';
import 'package:client/src/features/settings/presentation/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sonarr_api/sonarr_api.dart';
import 'package:radarr_api/radarr_api.dart';
import 'package:client/src/routing/extra_codec.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    extraCodec: const ExtraCodec(),
    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/auth',
        name: 'auth',
        builder: (context, state) => const AuthScreen(),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomePage(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/library',
                name: 'library',
                builder: (context, state) => const LibraryPage(),
                routes: [
                  GoRoute(
                    path: 'movie',
                    name: 'movieDetails',
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      final movie = state.extra as MovieResource;
                      return MovieDetailsPage(movie: movie);
                    },
                  ),
                  GoRoute(
                    path: 'series',
                    name: 'seriesDetails',
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      final series = state.extra as SeriesResource;
                      return SeriesDetailsPage(series: series);
                    },
                  ),
                ],
              ),
            ],
          ),
          // ...
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/queue',
                name: 'queue',
                builder: (context, state) => const QueuePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/calendar',
                name: 'calendar',
                builder: (context, state) => const CalendarPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                name: 'settings',
                builder: (context, state) => const SettingsPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
