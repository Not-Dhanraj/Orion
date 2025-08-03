import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/features/home/domain/home_page_items.dart';
import 'package:client/src/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          icon: Icon(Icons.tv_outlined),
          activeIcon: Icon(Icons.tv),
          label: 'TV Shows',
        ),
      );
    }

    if (radarrEnabled) {
      pages.add(const RadarrPage());
      navItems.add(
        const BottomNavigationBarItem(
          icon: Icon(Icons.movie_outlined),
          activeIcon: Icon(Icons.movie),
          label: 'Movies',
        ),
      );
    }

    if (sonarrEnabled || radarrEnabled) {
      pages.add(const QueuePage());
      navItems.add(
        const BottomNavigationBarItem(
          icon: Icon(Icons.download_outlined),
          activeIcon: Icon(Icons.download),
          label: 'Queue',
        ),
      );

      pages.add(const CalendarPage());
      navItems.add(
        const BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          activeIcon: Icon(Icons.calendar_today),
          label: 'Calendar',
        ),
      );
    }

    pages.add(const SettingsPage());
    navItems.add(
      const BottomNavigationBarItem(
        icon: Icon(Icons.settings_outlined),
        activeIcon: Icon(Icons.settings),
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
