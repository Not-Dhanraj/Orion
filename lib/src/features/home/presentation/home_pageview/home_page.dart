import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/src/features/home/domain/home_nav_item.dart';
import 'package:client/src/utils/context_extensions.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_bottom_nav.dart';

class HomePage extends ConsumerStatefulWidget {
  final List<HomeNavItem> navItems;

  const HomePage({super.key, required this.navItems});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late PageController pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0, keepPage: true);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _onNav(int index) {
    setState(() => _currentIndex = index);
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        navItems: widget.navItems,
        currentIndex: _currentIndex,
        onPressed: _onNav,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: PageView.builder(
            itemBuilder: (context, index) => widget.navItems[index].page,
            itemCount: widget.navItems.length,
            controller: pageController,
            onPageChanged: (index) => setState(() => _currentIndex = index),
          ),
        ),
      ),
      bottomNavigationBar: context.isDesktop
          ? null
          : HomeBotttomNav(
              navItems: widget.navItems,
              currentIndex: _currentIndex,
              onPressed: _onNav,
            ),
    );
  }
}
