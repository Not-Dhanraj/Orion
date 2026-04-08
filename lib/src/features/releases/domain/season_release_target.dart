part of 'release_target.dart';

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
