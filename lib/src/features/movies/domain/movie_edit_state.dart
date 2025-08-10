import 'package:radarr/radarr.dart';

class MovieEditState {
  final MovieResource? movie;
  final bool isLoading;
  final bool isSaving;
  final String? errorMessage;
  final List<QualityProfileResource>? qualityProfiles;
  final List<RootFolderResource>? rootFolders;

  MovieEditState({
    this.movie,
    this.isLoading = false,
    this.isSaving = false,
    this.errorMessage,
    this.qualityProfiles,
    this.rootFolders,
  });

  MovieEditState copyWith({
    MovieResource? movie,
    bool? isLoading,
    bool? isSaving,
    String? errorMessage,
    List<QualityProfileResource>? qualityProfiles,
    List<RootFolderResource>? rootFolders,
  }) {
    return MovieEditState(
      movie: movie ?? this.movie,
      isLoading: isLoading ?? this.isLoading,
      isSaving: isSaving ?? this.isSaving,
      errorMessage: errorMessage,
      qualityProfiles: qualityProfiles ?? this.qualityProfiles,
      rootFolders: rootFolders ?? this.rootFolders,
    );
  }
}
