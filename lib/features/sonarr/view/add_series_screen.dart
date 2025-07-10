import 'package:client/core/api/api_client.dart';
import 'package:client/core/widgets/media_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class AddSeriesScreen extends ConsumerStatefulWidget {
  const AddSeriesScreen({super.key});

  @override
  ConsumerState<AddSeriesScreen> createState() => _AddSeriesScreenState();
}

class _AddSeriesScreenState extends ConsumerState<AddSeriesScreen> {
  final _searchController = TextEditingController();
  List<SonarrSeriesLookup> _searchResults = [];
  bool _isLoading = false;

  Future<void> _searchSeries() async {
    setState(() {
      _isLoading = true;
    });

    final sonarr = ref.read(sonarrProvider);
    final searchTerm = _searchController.text;

    if (searchTerm.isNotEmpty) {
      try {
        final results = await sonarr.seriesLookup.getSeriesLookup(
          term: searchTerm,
        );
        setState(() {
          _searchResults = results;
        });
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to search for series: $e')),
        );
      }
    }

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _addSeries(SonarrSeriesLookup series) async {
    final sonarr = ref.read(sonarrProvider);
    // I need to get the quality profile and root folder path
    // For now, I will use hardcoded values.
    // I will need to implement a way to select these later.
    final rootFolderPath = await _getRootFolderPath();
    if (rootFolderPath != null) {
      try {
        //qualitylistprofile
        // sonarr.profile.getQualityProfiles()
        //language profiles
        // sonarr.profile.getLanguageProfiles();
        await sonarr.series.addSeries(
          tvdbId: series.tvdbId!,

          // Get the list and get from user
          qualityProfileId: 1,
          title: series.title!,
          images: series.images!,
          seasons: series.seasons!,
          seriesType: series.seriesType!,
          languageProfileId: series.languageProfileId!,
          rootFolderPath: rootFolderPath,
        );

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${series.title} added successfully')),
        );
      } catch (e) {
        print(e);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to add ${series.title}')),
        );
      }
    }
  }

  Future<String?> _getRootFolderPath() async {
    final sonarr = ref.read(sonarrProvider);
    try {
      final rootFolders = await sonarr.rootFolder.getRootFolders();
      if (rootFolders.isNotEmpty) {
        return rootFolders.first.path;
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to get root folder: $e')));
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Series')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search for a series',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _searchSeries,
                ),
              ),
              onSubmitted: (_) => _searchSeries(),
            ),
          ),
          if (_isLoading)
            const Center(child: CircularProgressIndicator())
          else
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final series = _searchResults[index];
                  return Stack(
                    children: [
                      MediaItemCard(
                        title: series.title ?? '',
                        status: series.status ?? '',
                        posterUrl: series.images
                            ?.firstWhere(
                              (image) => image.coverType == 'poster',
                              orElse: () => SonarrSeriesImage(remoteUrl: null),
                            )
                            .remoteUrl,
                      ),
                      Positioned(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              margin: EdgeInsets.zero,
                              child: IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () => _addSeries(series),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
