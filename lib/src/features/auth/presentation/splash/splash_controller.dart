import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/application/hive_service.dart';
import 'package:client/src/features/calendar/presentation/calendar_home_controller.dart';
import 'package:client/src/features/movies/presentation/movie_home/movie_home_controller.dart';
import 'package:client/src/features/series/presentation/series_home/series_home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:client/src/features/auth/domain/splash_data.dart';
import 'package:client/src/features/home/domain/home_nav_item.dart';
import 'package:client/src/features/calendar/presentation/calendar_page.dart';
import 'package:client/src/features/movies/presentation/movie_home/movie_home.dart';
import 'package:client/src/features/queue/presentation/queue_page.dart';
import 'package:client/src/features/series/presentation/series_home/series_home.dart';
import 'package:client/src/features/settings/presentation/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

final splashControllerProvider = FutureProvider.autoDispose<SplashData>((
  ref,
) async {
  await ref.read(hiveProvider).init();
  final enabled = ref.read(enabledNotifierProvider);

  if (!enabled.sonarr && !enabled.radarr) {
    await Future.delayed(const Duration(milliseconds: 600));
    return const SplashData(route: SplashRoute.authPage);
  }

  await Future.wait([
    ref.read(calendarHomeControllerProvider.future),
    if (enabled.sonarr) ref.read(seriesHomeControllerProvider.future),
    if (enabled.radarr) ref.read(movieHomeControllerProvider.future),
  ]);

  return SplashData(
    route: SplashRoute.homePage,
    navItems: _buildNavItems(enabled.sonarr, enabled.radarr),
  );
});

List<HomeNavItem> _buildNavItems(bool hasSonarr, bool hasRadarr) {
  final items = <HomeNavItem>[];

  void add(Widget page, IconData icon, IconData activeIcon, String label) {
    items.add(
      HomeNavItem(
        page: page,
        icon: Icon(icon),
        activeIcon: Icon(activeIcon),
        label: label,
      ),
    );
  }

  if (hasSonarr) {
    add(
      const SeriesHome(),
      TablerIcons.device_tv,
      TablerIcons.device_tv_filled,
      'TV Shows',
    );
  }

  if (hasRadarr) {
    add(
      const MovieHome(),
      TablerIcons.video,
      TablerIcons.video_filled,
      'Movies',
    );
  }

  if (hasSonarr || hasRadarr) {
    add(
      const QueuePage(),
      TablerIcons.layout_list,
      TablerIcons.layout_list_filled,
      'Queue',
    );
    add(
      const CalendarPage(),
      TablerIcons.calendar_month,
      TablerIcons.calendar_month_filled,
      'Calendar',
    );
  }

  add(
    const SettingsPage(),
    TablerIcons.settings,
    TablerIcons.settings_filled,
    'Settings',
  );

  return items;
}
