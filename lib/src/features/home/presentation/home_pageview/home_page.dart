import 'package:client/src/features/home/presentation/nav_items_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/src/features/home/presentation/home_nav_item.dart';
import 'package:client/src/shared/utils/context_extensions.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_bottom_nav.dart';

class HomePage extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;

  const HomePage({super.key, required this.navigationShell});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );
    _fadeController.forward();
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.navigationShell.currentIndex !=
        widget.navigationShell.currentIndex) {
      _fadeController.reset();
      _fadeController.forward();
    }
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  void _onNav(int index, List<HomeNavItem> navItems) {
    widget.navigationShell.goBranch(
      navItems[index].branchIndex,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  int _currentNavIndex(List<HomeNavItem> navItems) {
    final index = navItems.indexWhere(
      (item) => item.branchIndex == widget.navigationShell.currentIndex,
    );
    return index == -1 ? 0 : index;
  }

  @override
  Widget build(BuildContext context) {
    final navItems = ref.watch(homeNavItemsProvider);
    final currentIndex = _currentNavIndex(navItems);

    return Scaffold(
      appBar: HomeAppBar(
        navItems: navItems,
        currentIndex: currentIndex,
        onPressed: (index) => _onNav(index, navItems),
        showBottomBorder: widget.navigationShell.currentIndex != 0,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: widget.navigationShell,
          ),
        ),
      ),
      bottomNavigationBar: context.isDesktop
          ? null
          : HomeBotttomNav(
              navItems: navItems,
              currentIndex: currentIndex,
              onPressed: (index) => _onNav(index, navItems),
            ),
    );
  }
}
