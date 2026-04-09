import 'package:client/src/shared/utils/movie_utils.dart';
import 'package:client/src/shared/utils/series_utils.dart';
import 'package:radarr_api/radarr_api.dart' show MovieResource;
import 'package:sonarr_api/sonarr_api.dart' show EpisodeResource;

class CalendarItem {
  final int id;
  final String title;
  final DateTime? airDate;
  final String overview;
  final String? posterPath;
  final bool hasFile;
  final bool monitored;
  final bool isRadarr;
  final String? seriesTitle;
  final int? seasonNumber;
  final int? episodeNumber;
  final String? quality;
  final int? runtime;

  CalendarItem({
    required this.id,
    required this.title,
    this.airDate,
    required this.overview,
    this.posterPath,
    required this.hasFile,
    required this.monitored,
    required this.isRadarr,
    this.seriesTitle,
    this.seasonNumber,
    this.episodeNumber,
    this.quality,
    this.runtime,
  });

  factory CalendarItem.fromRadarr(MovieResource movie) {
    return CalendarItem(
      id: movie.id!,
      title: movie.title!,
      airDate: movie.physicalRelease ?? movie.digitalRelease,
      overview: movie.overview ?? '',
      posterPath: movie.remotePosterUrlLink,
      hasFile: movie.hasFile ?? false,
      monitored: movie.monitored ?? false,
      isRadarr: true,
      quality: movie.qualityProfileId?.toString(),
      runtime: movie.runtime,
    );
  }

  factory CalendarItem.fromSonarr(EpisodeResource episode) {
    return CalendarItem(
      id: episode.id!,
      title: episode.title ?? 'Unknown Episode',
      airDate: episode.airDateUtc,
      overview: episode.overview ?? '',
      posterPath: episode.series?.remotePosterUrlLink,
      hasFile: episode.hasFile ?? false,
      monitored: episode.monitored ?? false,
      isRadarr: false,
      seriesTitle: episode.series?.title ?? 'Unknown Series',
      seasonNumber: episode.seasonNumber,
      episodeNumber: episode.episodeNumber,
      quality: episode.episodeFile?.quality?.quality?.name,
      runtime: episode.series?.runtime,
    );
  }

  String? get episodeNumberFormatted {
    if (!isRadarr && seasonNumber != null && episodeNumber != null) {
      return 'S${seasonNumber.toString().padLeft(2, '0')}E${episodeNumber.toString().padLeft(2, '0')}';
    }
    return null;
  }

  String get fullTitle {
    if (!isRadarr && seriesTitle != null) {
      final epNumber = episodeNumberFormatted;
      return epNumber != null
          ? '$seriesTitle - $epNumber - $title'
          : '$seriesTitle - $title';
    }
    return title;
  }
}
