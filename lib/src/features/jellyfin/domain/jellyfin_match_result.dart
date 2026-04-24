import 'package:jelly_api/jelly_api.dart';

class JellyfinMatchResult {
  final String jellyfinItemId;
  final String? jellyfinSeriesId; // Set if this is an episode match
  final String title;
  final bool played;
  final int? playbackPositionTicks;
  final int? runtimeTicks;
  final DateTime? lastPlayedDate;

  JellyfinMatchResult({
    required this.jellyfinItemId,
    this.jellyfinSeriesId,
    required this.title,
    required this.played,
    this.playbackPositionTicks,
    this.runtimeTicks,
    this.lastPlayedDate,
  });

  factory JellyfinMatchResult.fromBaseItemDto(
    BaseItemDto item, {
    String? seriesId,
  }) {
    return JellyfinMatchResult(
      jellyfinItemId: item.id ?? '',
      jellyfinSeriesId: seriesId,
      title: item.name ?? 'Unknown',
      played: item.userData?.played ?? false,
      playbackPositionTicks: item.userData?.playbackPositionTicks,
      runtimeTicks: item.runTimeTicks,
      lastPlayedDate: item.userData?.lastPlayedDate,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'jellyfinItemId': jellyfinItemId,
      'jellyfinSeriesId': jellyfinSeriesId,
      'title': title,
      'played': played,
      'playbackPositionTicks': playbackPositionTicks,
      'runtimeTicks': runtimeTicks,
      'lastPlayedDate': lastPlayedDate?.toIso8601String(),
    };
  }

  factory JellyfinMatchResult.fromJson(Map<String, dynamic> json) {
    return JellyfinMatchResult(
      jellyfinItemId: json['jellyfinItemId'] as String,
      jellyfinSeriesId: json['jellyfinSeriesId'] as String?,
      title: json['title'] as String,
      played: json['played'] as bool,
      playbackPositionTicks: json['playbackPositionTicks'] as int?,
      runtimeTicks: json['runtimeTicks'] as int?,
      lastPlayedDate: json['lastPlayedDate'] != null
          ? DateTime.parse(json['lastPlayedDate'] as String)
          : null,
    );
  }

  Duration get totalRuntime {
    if (runtimeTicks == null) return Duration.zero;
    return Duration(microseconds: runtimeTicks! ~/ 10);
  }
}
