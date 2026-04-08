import 'package:flutter/material.dart';

class HomeNavItem {
  final int branchIndex;
  final Widget icon;
  final Widget activeIcon;
  final String label;

  const HomeNavItem({
    required this.branchIndex,
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}
