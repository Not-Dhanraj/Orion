import 'package:radarr/radarr.dart';

class MovieEditState {
  final MovieResource? movie;
  final bool hasChanges;
  final bool isLoading;
  final List<QualityProfileResource> qualityProfiles;
  final List<RootFolderResource>? rootFolders;

  MovieEditState({
    this.movie,
    this.hasChanges = false,
    this.isLoading = false,
    this.qualityProfiles = const [],
    this.rootFolders,
  });

  MovieEditState copyWith({
    MovieResource? movie,
    bool? hasChanges,
    bool? isLoading,
    List<QualityProfileResource>? qualityProfiles,
    List<RootFolderResource>? rootFolders,
  }) {
    return MovieEditState(
      movie: movie ?? this.movie,
      hasChanges: hasChanges ?? this.hasChanges,
      isLoading: isLoading ?? this.isLoading,
      qualityProfiles: qualityProfiles ?? this.qualityProfiles,
      rootFolders: rootFolders ?? this.rootFolders,
    );
  }
}
