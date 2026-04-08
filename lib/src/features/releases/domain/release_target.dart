part 'movie_release_target.dart';
part 'season_release_target.dart';
part 'episode_release_target.dart';

sealed class ReleaseTarget {
  final String title;
  const ReleaseTarget({required this.title});
}
