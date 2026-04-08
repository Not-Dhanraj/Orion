part of 'release_target.dart';

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
