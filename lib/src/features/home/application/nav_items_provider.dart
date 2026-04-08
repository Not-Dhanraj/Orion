import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/features/home/domain/home_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

final homeNavItemsProvider = Provider<List<HomeNavItem>>((ref) {
  final enabled = ref.watch(enabledNotifierProvider);
  final items = <HomeNavItem>[];

  void add(int index, IconData icon, IconData activeIcon, String label) {
    items.add(
      HomeNavItem(
        branchIndex: index,
        icon: Icon(icon),
        activeIcon: Icon(activeIcon),
        label: label,
      ),
    );
  }

  if (enabled.sonarr || enabled.radarr) {
    add(0, TablerIcons.bookmarks, TablerIcons.bookmarks_filled, 'Library');
    add(1, TablerIcons.layout_list, TablerIcons.layout_list_filled, 'Queue');
    add(
      2,
      TablerIcons.calendar_month,
      TablerIcons.calendar_month_filled,
      'Calendar',
    );
  }

  add(3, TablerIcons.settings, TablerIcons.settings_filled, 'Settings');

  return items;
});
