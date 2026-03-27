import 'package:client/src/features/home/domain/home_nav_item.dart';

enum SplashRoute { authPage, homePage }

class SplashData {
  final SplashRoute route;
  final List<HomeNavItem>? navItems;

  const SplashData({required this.route, this.navItems});
}
