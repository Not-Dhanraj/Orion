import 'package:flutter/material.dart';

class HomeNavItem {
  final Widget page;
  final Widget icon;
  final Widget activeIcon;
  final String label;

  const HomeNavItem({
    required this.page,
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}
