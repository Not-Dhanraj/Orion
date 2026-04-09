import 'package:radarr_api/radarr_api.dart' as radarr;
import 'package:sonarr_api/sonarr_api.dart' as sonarr;

class ReleaseItem {
  final String guid;
  final int indexerId;
  final String title;
  final int size;
  final DateTime? publishDate;
  final String? quality;
  final List<String> rejections;
  final String? infoUrl;
  final String? indexer;
  final String? protocol;
  final String? languages;
  final int seeders;
  final int leechers;
  final bool fullSeason;

  const ReleaseItem({
    required this.guid,
    required this.indexerId,
    required this.title,
    required this.size,
    required this.publishDate,
    required this.quality,
    required this.rejections,
    required this.infoUrl,
    required this.indexer,
    required this.protocol,
    required this.languages,
    required this.seeders,
    required this.leechers,
    required this.fullSeason,
  });

  factory ReleaseItem.fromRadarr(radarr.ReleaseResource r) {
    return ReleaseItem(
      guid: r.guid ?? '',
      indexerId: r.indexerId ?? 0,
      title: r.title ?? 'Unknown Release',
      size: (r.size ?? 0).toInt(),
      publishDate: r.publishDate,
      quality: r.quality?.quality?.name,
      rejections: r.rejections?.toList() ?? [],
      infoUrl: r.infoUrl,
      indexer: r.indexer,
      protocol: r.protocol?.name,
      languages: r.languages?.map((l) => l.name).join(', '),
      seeders: r.seeders ?? 0,
      leechers: r.leechers ?? 0,
      fullSeason: false,
    );
  }

  factory ReleaseItem.fromSonarr(sonarr.ReleaseResource r) {
    return ReleaseItem(
      guid: r.guid ?? '',
      indexerId: r.indexerId ?? 0,
      title: r.title ?? 'Unknown Release',
      size: (r.size ?? 0).toInt(),
      publishDate: r.publishDate,
      quality: r.quality?.quality?.name,
      rejections: r.rejections?.toList() ?? [],
      infoUrl: r.infoUrl,
      indexer: r.indexer,
      protocol: r.protocol?.name,
      languages: r.languages?.map((l) => l.name).join(', '),
      seeders: r.seeders ?? 0,
      leechers: r.leechers ?? 0,
      fullSeason: r.fullSeason ?? false,
    );
  }
}
