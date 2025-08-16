import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class HomePage extends ConsumerStatefulWidget {
  final List<Widget> pages;
  final List<BottomNavigationBarItem> bottomNavItems;

  const HomePage({
    super.key,
    required this.pages,
    required this.bottomNavItems,
  });

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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= 600;
        return Scaffold(
          body: Row(
            children: [
              if (isWide)
                NavigationRail(
                  labelType: NavigationRailLabelType.all,

                  leading: const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(TablerIcons.category),
                  ),
                  groupAlignment: 0,
                  destinations: [
                    for (final item in widget.bottomNavItems)
                      NavigationRailDestination(
                        icon: item.icon,
                        selectedIcon: item.activeIcon,
                        label: Text(item.label ?? ''),
                      ),
                  ],
                  selectedIndex: _currentIndex,
                  onDestinationSelected: (index) {
                    setState(() {
                      _currentIndex = index;
                      pageController.jumpToPage(index);
                    });
                  },
                ),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return widget.pages[index];
                  },
                  itemCount: widget.pages.length,
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
            ],
          ),
          bottomNavigationBar: isWide
              ? null
              : BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  items: widget.bottomNavItems,
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                      pageController.jumpToPage(index);
                    });
                  },
                ),
        );
      },
    );
  }
}
