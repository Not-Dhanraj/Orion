part of 'release_target.dart';

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
