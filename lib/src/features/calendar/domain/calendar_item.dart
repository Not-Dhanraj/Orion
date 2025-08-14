import 'package:radarr/radarr.dart' show MovieResource, MediaCoverTypes;
import 'package:sonarr/sonarr.dart' show EpisodeResource;

/// A model representing a calendar item from either Sonarr or Radarr
class CalendarItem {
  final int id;
  final String title;
  final DateTime? airDate;
  final String overview;
  final String? posterPath;
  final bool hasFile;
  final bool monitored;
  final bool isRadarr; // Whether this is from Radarr (true) or Sonarr (false)
  final String? seriesTitle; // Only for Sonarr items
  final int? seasonNumber; // Only for Sonarr items
  final int? episodeNumber; // Only for Sonarr items
  final String? quality; // Quality profile of the item
  final int? runtime; // Runtime in minutes

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

  /// Factory method to create a CalendarItem from a Radarr MovieResource
  factory CalendarItem.fromRadarr(MovieResource movie) {
    return CalendarItem(
      id: movie.id!,
      title: movie.title!,
      airDate: movie.physicalRelease ?? movie.digitalRelease,
      overview: movie.overview ?? '',
      posterPath: movie.images
          ?.firstWhere(
            (img) => img.coverType == MediaCoverTypes.poster,
            orElse: () => movie.images!.first,
          )
          .remoteUrl,
      hasFile: movie.hasFile ?? false,
      monitored: movie.monitored ?? false,
      isRadarr: true,
      quality: movie.qualityProfileId?.toString(),
      runtime: movie.runtime,
    );
  }

  /// Factory method to create a CalendarItem from a Sonarr EpisodeResource
  factory CalendarItem.fromSonarr(EpisodeResource episode) {
    return CalendarItem(
      id: episode.id!,
      title: episode.title ?? 'Unknown Episode',
      airDate: episode.airDateUtc,
      overview: episode.overview ?? '',
      posterPath: episode.series?.images
          ?.firstWhere(
            (img) => img.coverType == MediaCoverTypes.poster,
            orElse: () => episode.series!.images!.first,
          )
          .remoteUrl,
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

  /// Helper method to get a formatted episode number string (S01E01)
  String? get episodeNumberFormatted {
    if (!isRadarr && seasonNumber != null && episodeNumber != null) {
      return 'S${seasonNumber.toString().padLeft(2, '0')}E${episodeNumber.toString().padLeft(2, '0')}';
    }
    return null;
  }

  /// Helper method to get a full title (includes series title for TV shows)
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
