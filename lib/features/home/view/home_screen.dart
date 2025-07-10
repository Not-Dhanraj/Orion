import 'package:client/features/home/provider/home_providers.dart';
import 'package:client/features/radarr/view/radarr_screen.dart';
import 'package:client/features/settings/view/settings_screen.dart';
import 'package:client/features/sonarr/view/sonarr_screen.dart';
import 'package:flutter/material.dart';
import 'package:client/features/calendar/view/calendar_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static final List<Widget> _widgetOptions = <Widget>[
    SonarrScreen(),
    RadarrScreen(),
    CalendarScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(homeScreenIndexProvider);

    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Sonarr'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Radarr'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        onTap: (index) =>
            ref.read(homeScreenIndexProvider.notifier).state = index,
      ),
    );
  }
}
