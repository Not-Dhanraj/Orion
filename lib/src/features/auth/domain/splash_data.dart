import 'package:client/src/features/home/domain/home_page_items.dart';

enum SplashRoute { authPage, homePage }

class SplashData {
  final SplashRoute route;
  final HomePageItems? homePageItems;

  const SplashData({required this.route, this.homePageItems});
}
