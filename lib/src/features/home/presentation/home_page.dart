import 'package:client/src/features/home/presentation/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

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
    final homeController = ref.watch(homePageControllerProvider);
    return homeController.when(
      data: (data) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= 600;
            if (isWide) {
              return Scaffold(
                body: Row(
                  children: [
                    NavigationRail(
                      labelType: NavigationRailLabelType.all,

                      // extended: isExtended,
                      leading: const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Icon(Icons.menu),
                      ),
                      groupAlignment: 0,
                      destinations: [
                        for (final item in data.navItems)
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
                      child: PageView(
                        controller: pageController,
                        onPageChanged: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        children: data.pages,
                      ),
                    ),
                  ],
                ),
              );
            }

            // Mobile layout
            return Scaffold(
              body: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                children: data.pages,
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                items: data.navItems,
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
      },
      error: (error, stackTrace) {
        return Center(child: Text('Error: $error'));
      },
      loading: () =>
          const Material(child: Center(child: CircularProgressIndicator())),
    );
  }
}

//TODO // Implement the individual pages for Sonarr, Radarr, Queue, Calendar, and Settings

class RadarrPage extends StatelessWidget {
  const RadarrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final padding = constraints.maxWidth > 1200
            ? EdgeInsets.symmetric(
                horizontal: (constraints.maxWidth - 1200) / 2,
              )
            : const EdgeInsets.symmetric(horizontal: 16);

        return SingleChildScrollView(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                'Movies',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Add your movie content here
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: const Text('Radarr Page'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class QueuePage extends StatelessWidget {
  const QueuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final padding = constraints.maxWidth > 1200
            ? EdgeInsets.symmetric(
                horizontal: (constraints.maxWidth - 1200) / 2,
              )
            : const EdgeInsets.symmetric(horizontal: 16);

        return SingleChildScrollView(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                'Queue',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: const Text('Queue Page'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final padding = constraints.maxWidth > 1200
            ? EdgeInsets.symmetric(
                horizontal: (constraints.maxWidth - 1200) / 2,
              )
            : const EdgeInsets.symmetric(horizontal: 16);

        return SingleChildScrollView(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                'Calendar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: const Text('Calendar Page'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final padding = constraints.maxWidth > 1200
            ? EdgeInsets.symmetric(
                horizontal: (constraints.maxWidth - 1200) / 2,
              )
            : const EdgeInsets.symmetric(horizontal: 16);

        return SingleChildScrollView(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                'Settings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: const Text('Settings Page'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
