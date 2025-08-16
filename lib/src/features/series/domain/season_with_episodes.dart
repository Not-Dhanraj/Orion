import 'package:sonarr/sonarr.dart';

class SeasonWithEpisodes {
  final int seasonNumber;
  final List<EpisodeResource> episodes;
  final SeasonResource seasonResource;

  const SeasonWithEpisodes({
    required this.seasonNumber,
    required this.episodes,
    required this.seasonResource,
  });

  SeasonWithEpisodes copyWith({
    int? seasonNumber,
    List<EpisodeResource>? episodes,
    SeasonResource? seasonResource,
  }) {
    return SeasonWithEpisodes(
      seasonNumber: seasonNumber ?? this.seasonNumber,
      episodes: episodes ?? this.episodes,
      seasonResource: seasonResource ?? this.seasonResource,
    );
  }
}
