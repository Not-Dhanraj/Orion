sealed class ReleaseTarget {
  final String title;
  const ReleaseTarget({required this.title});
}

class MovieReleaseTarget extends ReleaseTarget {
  final int movieId;
  const MovieReleaseTarget({required this.movieId, required super.title});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieReleaseTarget &&
          runtimeType == other.runtimeType &&
          movieId == other.movieId;

  @override
  int get hashCode => Object.hash(runtimeType, movieId);
}

class SeasonReleaseTarget extends ReleaseTarget {
  final int seriesId;
  final int seasonNumber;
  const SeasonReleaseTarget({
    required this.seriesId,
    required this.seasonNumber,
    required super.title,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeasonReleaseTarget &&
          runtimeType == other.runtimeType &&
          seriesId == other.seriesId &&
          seasonNumber == other.seasonNumber;

  @override
  int get hashCode => Object.hash(runtimeType, seriesId, seasonNumber);
}

class EpisodeReleaseTarget extends ReleaseTarget {
  final int seriesId;
  final int seasonNumber;
  final int episodeId;
  const EpisodeReleaseTarget({
    required this.seriesId,
    required this.seasonNumber,
    required this.episodeId,
    required super.title,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EpisodeReleaseTarget &&
          runtimeType == other.runtimeType &&
          seriesId == other.seriesId &&
          seasonNumber == other.seasonNumber &&
          episodeId == other.episodeId;

  @override
  int get hashCode =>
      Object.hash(runtimeType, seriesId, seasonNumber, episodeId);
}
