import 'package:client/src/features/calendar/domain/episode_status.dart';

class CalendarEpisodeEntry {
  final String title;
  final String seasonEpisode;
  final String timeInfo;
  final String? posterUrl;
  final EpisodeStatus status;

  const CalendarEpisodeEntry({
    required this.title,
    required this.seasonEpisode,
    required this.timeInfo,
    this.posterUrl,
    required this.status,
  });
}
