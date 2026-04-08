import 'package:client/src/features/home/presentation/library/widgets/library_segmented_control.dart';
import 'package:client/src/features/movies/presentation/movie_library/movie_library_page.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/src/core/application/enabled_provider.dart';

class LibraryPage extends ConsumerStatefulWidget {
  const LibraryPage({super.key});

  @override
  ConsumerState<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends ConsumerState<LibraryPage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;
  late List<String> _tabs;

  @override
  void initState() {
    super.initState();
    final enabled = ref.read(enabledNotifierProvider);
    _tabs = [if (enabled.sonarr) 'TV SHOWS', if (enabled.radarr) 'MOVIES'];
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
      final enabled = ref.watch(enabledNotifierProvider);
      return Scaffold(
      body: Column(
        children: [
          ListenableBuilder(
            listenable: _tabController,
            builder: (context, _) => LibrarySegmentedControl(
              tabs: _tabs,
              activeIndex: _tabController.index,
              onIndexChanged: (int index) {
                _tabController.animateTo(index, duration: Duration.zero);
              },
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                if (enabled.sonarr) SeriesLibraryPage(),
                if (enabled.radarr) MovieLibraryPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
