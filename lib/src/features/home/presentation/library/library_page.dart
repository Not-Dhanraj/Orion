import 'package:client/src/features/home/presentation/library/widgets/library_segmented_control.dart';
import 'package:client/src/features/movies/presentation/movie_library/movie_library_page.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_page.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  final bool hasSonarr;
  final bool hasRadarr;

  const LibraryPage({
    super.key,
    required this.hasSonarr,
    required this.hasRadarr,
  });

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;
  late List<String> _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = [if (widget.hasSonarr) 'TV SHOWS', if (widget.hasRadarr) 'MOVIES'];
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
                if (widget.hasSonarr) SeriesLibraryPage(),
                if (widget.hasRadarr) MovieLibraryPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
