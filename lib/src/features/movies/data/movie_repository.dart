import 'package:built_collection/built_collection.dart';
import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieRepository {
  final Radarr _api;
  MovieRepository(this._api);

  Future<BuiltList<MovieResource>?> fetchAll() async {
    var response = await _api.getMovieApi().apiV3MovieGet();
    return response.data;
  }

  Future<MovieResource?> fetchById(int id) async {
    var response = await _api.getMovieApi().apiV3MovieIdGet(id: id);
    return response.data;
  }

  Future<MovieResource?> create(MovieResource movie) async {
    var response = await _api.getMovieApi().apiV3MoviePost(
      movieResource: movie,
    );
    return response.data;
  }

  Future<MovieResource?> update(MovieResource movie) async {
    var response = await _api.getMovieApi().apiV3MovieIdPut(
      id: movie.id!.toString(),
      movieResource: movie,
    );
    return response.data;
  }

  Future<void> delete(
    int id,
    bool deleteFiles,
    bool addImportListExclusion,
  ) async {
    await _api.getMovieApi().apiV3MovieIdDelete(
      id: id,
      deleteFiles: deleteFiles,
      addImportExclusion: addImportListExclusion,
    );
  }

  Future<BuiltList<MovieResource>?> search(String term) async {
    var response = await _api.getMovieLookupApi().apiV3MovieLookupGet(
      term: term,
    );
    return response.data;
  }

  Future<BuiltList<QualityProfileResource>?> fetchQualityProfiles() async {
    var response = await _api.getQualityProfileApi().apiV3QualityprofileGet();
    return response.data;
  }

  Future<BuiltList<RootFolderResource>?> fetchRootFolders() async {
    var response = await _api.getRootFolderApi().apiV3RootfolderGet();
    return response.data;
  }

  Future<BuiltList<ReleaseResource>?> getReleases({required int movieId}) async {
    var response = await _api.getReleaseApi().apiV3ReleaseGet(movieId: movieId);
    return response.data;
  }

  Future<void> downloadRelease({
    required int indexerId,
    required String guid,
  }) async {
    await _api.getReleaseApi().apiV3ReleasePost(
      releaseResource: ReleaseResource((r) => r
        ..indexerId = indexerId
        ..guid = guid),
    );
  }
  
  Future<void> deleteMovieFile(int movieId) async {
    // First we need to get the movie file ID
    final movieResponse = await _api.getMovieApi().apiV3MovieIdGet(id: movieId);
    final movie = movieResponse.data;
    
    if (movie == null || movie.movieFile == null || movie.movieFile?.id == null) {
      throw Exception('Movie file not found');
    }
    
    // Then we can delete the file using the moviefile endpoint
    await _api.getMovieFileApi().apiV3MoviefileIdDelete(
      id: movie.movieFile!.id!,
    );
  }
}

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  return MovieRepository(ref.watch(moviesApiProvider));
});
