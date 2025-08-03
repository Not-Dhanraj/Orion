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
        return Scaffold(
          appBar: AppBar(title: const Text('App')),
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
            type: BottomNavigationBarType.shifting,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                pageController.jumpToPage(index);
              });
            },
            items: data.navItems,
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text('Error: $error'));
      },
      loading: () =>
          Material(child: const Center(child: CircularProgressIndicator())),
    );
  }
}

//TODO // Implement the individual pages for Sonarr, Radarr, Queue, Calendar, and Settings
class SonarrPage extends StatelessWidget {
  const SonarrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Sonarr Page'));
  }
}

class RadarrPage extends StatelessWidget {
  const RadarrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Radarr Page'));
  }
}

class QueuePage extends StatelessWidget {
  const QueuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Queue Page'));
  }
}

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Calendar Page'));
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Settings Page'));
  }
}
