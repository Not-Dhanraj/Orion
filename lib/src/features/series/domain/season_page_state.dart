import 'package:client/src/features/series/domain/season_with_episodes.dart';
import 'package:sonarr/sonarr.dart';

class SeasonPageState {
  final SeriesResource seriesResource;
  final List<SeasonWithEpisodes> seasons;
  final int selectedSeasonIndex;
  final String? errorMessage;

  const SeasonPageState({
    required this.seriesResource,
    this.seasons = const [],
    this.selectedSeasonIndex = 0,
    this.errorMessage,
  });

  SeasonWithEpisodes? get selectedSeason {
    if (seasons.isEmpty || selectedSeasonIndex >= seasons.length) {
      return null;
    }
    return seasons[selectedSeasonIndex];
  }

  SeasonPageState copyWith({
    SeriesResource? seriesResource,
    List<SeasonWithEpisodes>? seasons,
    int? selectedSeasonIndex,
    String? errorMessage,
  }) {
    return SeasonPageState(
      seriesResource: seriesResource ?? this.seriesResource,
      seasons: seasons ?? this.seasons,
      selectedSeasonIndex: selectedSeasonIndex ?? this.selectedSeasonIndex,
      errorMessage: errorMessage,
    );
  }
}
