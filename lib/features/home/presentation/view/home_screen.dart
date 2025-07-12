import 'package:client/core/presentaion/styles/app_styles.dart';
import 'package:client/features/home/application/provider/home_providers.dart';
import 'package:client/features/radarr/presentation/movies/view/radarr_screen.dart';
import 'package:client/features/settings/presentation/view/settings_screen.dart';
import 'package:client/features/sonarr/presentation/series/view/sonarr_screen.dart';
import 'package:flutter/material.dart';
import 'package:client/features/calendar/presentation/view/calendar_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final PageController _pageController;

  final List<Widget> _screens = [
    const SonarrScreen(),
    const RadarrScreen(),
    const CalendarScreen(),
    const SettingsScreen(),
  ];

  final List<NavigationDestination> _navDestinations = const [
    NavigationDestination(
      icon: Icon(Icons.tv_outlined),
      selectedIcon: Icon(Icons.tv),
      label: 'TV Shows',
    ),
    NavigationDestination(
      icon: Icon(Icons.movie_outlined),
      selectedIcon: Icon(Icons.movie),
      label: 'Movies',
    ),
    NavigationDestination(
      icon: Icon(Icons.calendar_today_outlined),
      selectedIcon: Icon(Icons.calendar_today),
      label: 'Calendar',
    ),
    NavigationDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: AppStyles.shortAnimationDuration,
    );
    _pageController = PageController();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(homeScreenIndexProvider);
    final colorScheme = Theme.of(context).colorScheme;

    // Animate to the current page when the selected index changes
    if (_pageController.hasClients) {
      _pageController.animateToPage(
        selectedIndex,
        duration: AppStyles.shortAnimationDuration,
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
      extendBody: true, // Let content flow under the navigation bar
      body: Stack(
        children: [
          // Background design element - subtle pattern on top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 200,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    colorScheme.primary.withOpacity(0.05),
                    colorScheme.surface.withOpacity(0.01),
                  ],
                ),
              ),
            ),
          ),

          // Page content
          PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: _screens,
          ),
        ],
      ),

      // Improved navigation bar
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.primary,
                );
              }
              return TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.normal,
                color: colorScheme.onSurfaceVariant,
              );
            }),
            indicatorColor: colorScheme.primaryContainer.withOpacity(0.5),
            surfaceTintColor: Colors.transparent,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          ),
        ),
        child: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            // Use animation for smooth transitions
            if (index > selectedIndex) {
              _animationController.forward(from: 0.0);
            } else {
              _animationController.reverse(from: 1.0);
            }
            ref.read(homeScreenIndexProvider.notifier).state = index;
          },
          destinations: _navDestinations,
          elevation: 8,
          height: 72,
          backgroundColor: colorScheme.surface.withOpacity(0.95),
          shadowColor: colorScheme.shadow,
          surfaceTintColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        ),
      ),
    );
  }
}
