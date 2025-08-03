import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/features/home/domain/home_page_items.dart';
import 'package:client/src/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class HomePageController extends AsyncNotifier<HomePageItems> {
  @override
  Future<HomePageItems> build() async {
    final enabledProvider = ref.watch(enabledNotifierProvider);
    final sonarrEnabled = enabledProvider.sonarr;
    final radarrEnabled = enabledProvider.radarr;

    final pages = <Widget>[];
    final navItems = <BottomNavigationBarItem>[];

    if (sonarrEnabled) {
      pages.add(const SonarrPage());
      navItems.add(
        const BottomNavigationBarItem(
          icon: Icon(TablerIcons.device_tv),
          activeIcon: Icon(TablerIcons.device_tv_filled),
          label: 'TV Shows',
        ),
      );
    }

    if (radarrEnabled) {
      pages.add(const RadarrPage());
      navItems.add(
        const BottomNavigationBarItem(
          icon: Icon(TablerIcons.video),
          activeIcon: Icon(TablerIcons.video_filled),
          label: 'Movies',
        ),
      );
    }

    if (sonarrEnabled || radarrEnabled) {
      pages.add(const QueuePage());
      navItems.add(
        const BottomNavigationBarItem(
          icon: Icon(TablerIcons.layout_list),
          activeIcon: Icon(TablerIcons.layout_list_filled),
          label: 'Queue',
        ),
      );

      pages.add(const CalendarPage());
      navItems.add(
        const BottomNavigationBarItem(
          icon: Icon(TablerIcons.calendar_month),
          activeIcon: Icon(TablerIcons.calendar_month_filled),
          label: 'Calendar',
        ),
      );
    }

    pages.add(const SettingsPage());
    navItems.add(
      const BottomNavigationBarItem(
        icon: Icon(TablerIcons.settings),
        activeIcon: Icon(TablerIcons.settings_filled),
        label: 'Settings',
      ),
    );
    // await Future.delayed(const Duration(seconds: 2));
    return HomePageItems(pages: pages, navItems: navItems);
  }
}

final homePageControllerProvider =
    AsyncNotifierProvider<HomePageController, HomePageItems>(
      HomePageController.new,
    );
