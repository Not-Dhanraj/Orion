import 'package:client/features/radarr/domain/movie_status.dart';

class MovieModel {
  final int? id;
  final String? title;
  final int? year;
  final DateTime? inCinemas;
  final DateTime? physicalRelease;
  final DateTime? digitalRelease;
  final MovieStatus status;
  final bool monitored;
  final int? tmdbId;
  final String? overview;
  final String? posterPath;
  final String? backdropPath;
  final List<String>? genres;
  final double? rating;
  final int? runtime;

  MovieModel({
    this.id,
    this.title,
    this.year,
    this.inCinemas,
    this.physicalRelease,
    this.digitalRelease,
    this.status = MovieStatus.announced,
    this.monitored = true,
    this.tmdbId,
    this.overview,
    this.posterPath,
    this.backdropPath,
    this.genres,
    this.rating,
    this.runtime,
  });

  factory MovieModel.fromRadarr(dynamic movie) {
    MovieStatus status;
    switch (movie.status) {
      case 'tba':
        status = MovieStatus.tba;
        break;
      case 'announced':
        status = MovieStatus.announced;
        break;
      case 'inCinemas':
        status = MovieStatus.inCinemas;
        break;
      case 'released':
        status = MovieStatus.released;
        break;
      default:
        status = MovieStatus.announced;
    }

    return MovieModel(
      id: movie.id,
      title: movie.title,
      year: movie.year,
      inCinemas: movie.inCinemas,
      physicalRelease: movie.physicalRelease,
      digitalRelease: movie.digitalRelease,
      status: status,
      monitored: movie.monitored ?? true,
      tmdbId: movie.tmdbId,
      overview: movie.overview,
      posterPath: movie.images
          ?.firstWhere((img) => img.coverType == 'poster', orElse: () => null)
          ?.url,
      backdropPath: movie.images
          ?.firstWhere((img) => img.coverType == 'fanart', orElse: () => null)
          ?.url,
      genres: movie.genres?.cast<String>(),
      rating: movie.ratings?.tmdb?.value,
      runtime: movie.runtime,
    );
  }
}
