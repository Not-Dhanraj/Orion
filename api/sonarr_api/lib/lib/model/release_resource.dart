//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/download_protocol.dart';
import 'package:sonarr_api/lib/model/quality_model.dart';
import 'package:sonarr_api/lib/model/release_episode_resource.dart';
import 'package:sonarr_api/lib/model/alternate_title_resource.dart';
import 'package:sonarr_api/lib/model/custom_format_resource.dart';
import 'package:sonarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'release_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReleaseResource {
  /// Returns a new [ReleaseResource] instance.
  ReleaseResource({

     this.id,

     this.guid,

     this.quality,

     this.qualityWeight,

     this.age,

     this.ageHours,

     this.ageMinutes,

     this.size,

     this.indexerId,

     this.indexer,

     this.releaseGroup,

     this.subGroup,

     this.releaseHash,

     this.title,

     this.fullSeason,

     this.sceneSource,

     this.seasonNumber,

     this.languages,

     this.languageWeight,

     this.airDate,

     this.seriesTitle,

     this.episodeNumbers,

     this.absoluteEpisodeNumbers,

     this.mappedSeasonNumber,

     this.mappedEpisodeNumbers,

     this.mappedAbsoluteEpisodeNumbers,

     this.mappedSeriesId,

     this.mappedEpisodeInfo,

     this.approved,

     this.temporarilyRejected,

     this.rejected,

     this.tvdbId,

     this.tvRageId,

     this.imdbId,

     this.rejections,

     this.publishDate,

     this.commentUrl,

     this.downloadUrl,

     this.infoUrl,

     this.episodeRequested,

     this.downloadAllowed,

     this.releaseWeight,

     this.customFormats,

     this.customFormatScore,

     this.sceneMapping,

     this.magnetUrl,

     this.infoHash,

     this.seeders,

     this.leechers,

     this.protocol,

     this.indexerFlags,

     this.isDaily,

     this.isAbsoluteNumbering,

     this.isPossibleSpecialEpisode,

     this.special,

     this.seriesId,

     this.episodeId,

     this.episodeIds,

     this.downloadClientId,

     this.downloadClient,

     this.shouldOverride,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'guid',
    required: false,
    includeIfNull: false,
  )


  final String? guid;



  @JsonKey(
    
    name: r'quality',
    required: false,
    includeIfNull: false,
  )


  final QualityModel? quality;



  @JsonKey(
    
    name: r'qualityWeight',
    required: false,
    includeIfNull: false,
  )


  final int? qualityWeight;



  @JsonKey(
    
    name: r'age',
    required: false,
    includeIfNull: false,
  )


  final int? age;



  @JsonKey(
    
    name: r'ageHours',
    required: false,
    includeIfNull: false,
  )


  final double? ageHours;



  @JsonKey(
    
    name: r'ageMinutes',
    required: false,
    includeIfNull: false,
  )


  final double? ageMinutes;



  @JsonKey(
    
    name: r'size',
    required: false,
    includeIfNull: false,
  )


  final int? size;



  @JsonKey(
    
    name: r'indexerId',
    required: false,
    includeIfNull: false,
  )


  final int? indexerId;



  @JsonKey(
    
    name: r'indexer',
    required: false,
    includeIfNull: false,
  )


  final String? indexer;



  @JsonKey(
    
    name: r'releaseGroup',
    required: false,
    includeIfNull: false,
  )


  final String? releaseGroup;



  @JsonKey(
    
    name: r'subGroup',
    required: false,
    includeIfNull: false,
  )


  final String? subGroup;



  @JsonKey(
    
    name: r'releaseHash',
    required: false,
    includeIfNull: false,
  )


  final String? releaseHash;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'fullSeason',
    required: false,
    includeIfNull: false,
  )


  final bool? fullSeason;



  @JsonKey(
    
    name: r'sceneSource',
    required: false,
    includeIfNull: false,
  )


  final bool? sceneSource;



  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'languages',
    required: false,
    includeIfNull: false,
  )


  final List<Language>? languages;



  @JsonKey(
    
    name: r'languageWeight',
    required: false,
    includeIfNull: false,
  )


  final int? languageWeight;



  @JsonKey(
    
    name: r'airDate',
    required: false,
    includeIfNull: false,
  )


  final String? airDate;



  @JsonKey(
    
    name: r'seriesTitle',
    required: false,
    includeIfNull: false,
  )


  final String? seriesTitle;



  @JsonKey(
    
    name: r'episodeNumbers',
    required: false,
    includeIfNull: false,
  )


  final List<int>? episodeNumbers;



  @JsonKey(
    
    name: r'absoluteEpisodeNumbers',
    required: false,
    includeIfNull: false,
  )


  final List<int>? absoluteEpisodeNumbers;



  @JsonKey(
    
    name: r'mappedSeasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? mappedSeasonNumber;



  @JsonKey(
    
    name: r'mappedEpisodeNumbers',
    required: false,
    includeIfNull: false,
  )


  final List<int>? mappedEpisodeNumbers;



  @JsonKey(
    
    name: r'mappedAbsoluteEpisodeNumbers',
    required: false,
    includeIfNull: false,
  )


  final List<int>? mappedAbsoluteEpisodeNumbers;



  @JsonKey(
    
    name: r'mappedSeriesId',
    required: false,
    includeIfNull: false,
  )


  final int? mappedSeriesId;



  @JsonKey(
    
    name: r'mappedEpisodeInfo',
    required: false,
    includeIfNull: false,
  )


  final List<ReleaseEpisodeResource>? mappedEpisodeInfo;



  @JsonKey(
    
    name: r'approved',
    required: false,
    includeIfNull: false,
  )


  final bool? approved;



  @JsonKey(
    
    name: r'temporarilyRejected',
    required: false,
    includeIfNull: false,
  )


  final bool? temporarilyRejected;



  @JsonKey(
    
    name: r'rejected',
    required: false,
    includeIfNull: false,
  )


  final bool? rejected;



  @JsonKey(
    
    name: r'tvdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tvdbId;



  @JsonKey(
    
    name: r'tvRageId',
    required: false,
    includeIfNull: false,
  )


  final int? tvRageId;



  @JsonKey(
    
    name: r'imdbId',
    required: false,
    includeIfNull: false,
  )


  final String? imdbId;



  @JsonKey(
    
    name: r'rejections',
    required: false,
    includeIfNull: false,
  )


  final List<String>? rejections;



  @JsonKey(
    
    name: r'publishDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? publishDate;



  @JsonKey(
    
    name: r'commentUrl',
    required: false,
    includeIfNull: false,
  )


  final String? commentUrl;



  @JsonKey(
    
    name: r'downloadUrl',
    required: false,
    includeIfNull: false,
  )


  final String? downloadUrl;



  @JsonKey(
    
    name: r'infoUrl',
    required: false,
    includeIfNull: false,
  )


  final String? infoUrl;



  @JsonKey(
    
    name: r'episodeRequested',
    required: false,
    includeIfNull: false,
  )


  final bool? episodeRequested;



  @JsonKey(
    
    name: r'downloadAllowed',
    required: false,
    includeIfNull: false,
  )


  final bool? downloadAllowed;



  @JsonKey(
    
    name: r'releaseWeight',
    required: false,
    includeIfNull: false,
  )


  final int? releaseWeight;



  @JsonKey(
    
    name: r'customFormats',
    required: false,
    includeIfNull: false,
  )


  final List<CustomFormatResource>? customFormats;



  @JsonKey(
    
    name: r'customFormatScore',
    required: false,
    includeIfNull: false,
  )


  final int? customFormatScore;



  @JsonKey(
    
    name: r'sceneMapping',
    required: false,
    includeIfNull: false,
  )


  final AlternateTitleResource? sceneMapping;



  @JsonKey(
    
    name: r'magnetUrl',
    required: false,
    includeIfNull: false,
  )


  final String? magnetUrl;



  @JsonKey(
    
    name: r'infoHash',
    required: false,
    includeIfNull: false,
  )


  final String? infoHash;



  @JsonKey(
    
    name: r'seeders',
    required: false,
    includeIfNull: false,
  )


  final int? seeders;



  @JsonKey(
    
    name: r'leechers',
    required: false,
    includeIfNull: false,
  )


  final int? leechers;



  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false,
  )


  final DownloadProtocol? protocol;



  @JsonKey(
    
    name: r'indexerFlags',
    required: false,
    includeIfNull: false,
  )


  final int? indexerFlags;



  @JsonKey(
    
    name: r'isDaily',
    required: false,
    includeIfNull: false,
  )


  final bool? isDaily;



  @JsonKey(
    
    name: r'isAbsoluteNumbering',
    required: false,
    includeIfNull: false,
  )


  final bool? isAbsoluteNumbering;



  @JsonKey(
    
    name: r'isPossibleSpecialEpisode',
    required: false,
    includeIfNull: false,
  )


  final bool? isPossibleSpecialEpisode;



  @JsonKey(
    
    name: r'special',
    required: false,
    includeIfNull: false,
  )


  final bool? special;



  @JsonKey(
    
    name: r'seriesId',
    required: false,
    includeIfNull: false,
  )


  final int? seriesId;



  @JsonKey(
    
    name: r'episodeId',
    required: false,
    includeIfNull: false,
  )


  final int? episodeId;



  @JsonKey(
    
    name: r'episodeIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? episodeIds;



  @JsonKey(
    
    name: r'downloadClientId',
    required: false,
    includeIfNull: false,
  )


  final int? downloadClientId;



  @JsonKey(
    
    name: r'downloadClient',
    required: false,
    includeIfNull: false,
  )


  final String? downloadClient;



  @JsonKey(
    
    name: r'shouldOverride',
    required: false,
    includeIfNull: false,
  )


  final bool? shouldOverride;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReleaseResource &&
      other.id == id &&
      other.guid == guid &&
      other.quality == quality &&
      other.qualityWeight == qualityWeight &&
      other.age == age &&
      other.ageHours == ageHours &&
      other.ageMinutes == ageMinutes &&
      other.size == size &&
      other.indexerId == indexerId &&
      other.indexer == indexer &&
      other.releaseGroup == releaseGroup &&
      other.subGroup == subGroup &&
      other.releaseHash == releaseHash &&
      other.title == title &&
      other.fullSeason == fullSeason &&
      other.sceneSource == sceneSource &&
      other.seasonNumber == seasonNumber &&
      other.languages == languages &&
      other.languageWeight == languageWeight &&
      other.airDate == airDate &&
      other.seriesTitle == seriesTitle &&
      other.episodeNumbers == episodeNumbers &&
      other.absoluteEpisodeNumbers == absoluteEpisodeNumbers &&
      other.mappedSeasonNumber == mappedSeasonNumber &&
      other.mappedEpisodeNumbers == mappedEpisodeNumbers &&
      other.mappedAbsoluteEpisodeNumbers == mappedAbsoluteEpisodeNumbers &&
      other.mappedSeriesId == mappedSeriesId &&
      other.mappedEpisodeInfo == mappedEpisodeInfo &&
      other.approved == approved &&
      other.temporarilyRejected == temporarilyRejected &&
      other.rejected == rejected &&
      other.tvdbId == tvdbId &&
      other.tvRageId == tvRageId &&
      other.imdbId == imdbId &&
      other.rejections == rejections &&
      other.publishDate == publishDate &&
      other.commentUrl == commentUrl &&
      other.downloadUrl == downloadUrl &&
      other.infoUrl == infoUrl &&
      other.episodeRequested == episodeRequested &&
      other.downloadAllowed == downloadAllowed &&
      other.releaseWeight == releaseWeight &&
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore &&
      other.sceneMapping == sceneMapping &&
      other.magnetUrl == magnetUrl &&
      other.infoHash == infoHash &&
      other.seeders == seeders &&
      other.leechers == leechers &&
      other.protocol == protocol &&
      other.indexerFlags == indexerFlags &&
      other.isDaily == isDaily &&
      other.isAbsoluteNumbering == isAbsoluteNumbering &&
      other.isPossibleSpecialEpisode == isPossibleSpecialEpisode &&
      other.special == special &&
      other.seriesId == seriesId &&
      other.episodeId == episodeId &&
      other.episodeIds == episodeIds &&
      other.downloadClientId == downloadClientId &&
      other.downloadClient == downloadClient &&
      other.shouldOverride == shouldOverride;

    @override
    int get hashCode =>
        id.hashCode +
        (guid == null ? 0 : guid.hashCode) +
        quality.hashCode +
        qualityWeight.hashCode +
        age.hashCode +
        ageHours.hashCode +
        ageMinutes.hashCode +
        size.hashCode +
        indexerId.hashCode +
        (indexer == null ? 0 : indexer.hashCode) +
        (releaseGroup == null ? 0 : releaseGroup.hashCode) +
        (subGroup == null ? 0 : subGroup.hashCode) +
        (releaseHash == null ? 0 : releaseHash.hashCode) +
        (title == null ? 0 : title.hashCode) +
        fullSeason.hashCode +
        sceneSource.hashCode +
        seasonNumber.hashCode +
        (languages == null ? 0 : languages.hashCode) +
        languageWeight.hashCode +
        (airDate == null ? 0 : airDate.hashCode) +
        (seriesTitle == null ? 0 : seriesTitle.hashCode) +
        (episodeNumbers == null ? 0 : episodeNumbers.hashCode) +
        (absoluteEpisodeNumbers == null ? 0 : absoluteEpisodeNumbers.hashCode) +
        (mappedSeasonNumber == null ? 0 : mappedSeasonNumber.hashCode) +
        (mappedEpisodeNumbers == null ? 0 : mappedEpisodeNumbers.hashCode) +
        (mappedAbsoluteEpisodeNumbers == null ? 0 : mappedAbsoluteEpisodeNumbers.hashCode) +
        (mappedSeriesId == null ? 0 : mappedSeriesId.hashCode) +
        (mappedEpisodeInfo == null ? 0 : mappedEpisodeInfo.hashCode) +
        approved.hashCode +
        temporarilyRejected.hashCode +
        rejected.hashCode +
        tvdbId.hashCode +
        tvRageId.hashCode +
        (imdbId == null ? 0 : imdbId.hashCode) +
        (rejections == null ? 0 : rejections.hashCode) +
        publishDate.hashCode +
        (commentUrl == null ? 0 : commentUrl.hashCode) +
        (downloadUrl == null ? 0 : downloadUrl.hashCode) +
        (infoUrl == null ? 0 : infoUrl.hashCode) +
        episodeRequested.hashCode +
        downloadAllowed.hashCode +
        releaseWeight.hashCode +
        (customFormats == null ? 0 : customFormats.hashCode) +
        customFormatScore.hashCode +
        sceneMapping.hashCode +
        (magnetUrl == null ? 0 : magnetUrl.hashCode) +
        (infoHash == null ? 0 : infoHash.hashCode) +
        (seeders == null ? 0 : seeders.hashCode) +
        (leechers == null ? 0 : leechers.hashCode) +
        protocol.hashCode +
        indexerFlags.hashCode +
        isDaily.hashCode +
        isAbsoluteNumbering.hashCode +
        isPossibleSpecialEpisode.hashCode +
        special.hashCode +
        (seriesId == null ? 0 : seriesId.hashCode) +
        (episodeId == null ? 0 : episodeId.hashCode) +
        (episodeIds == null ? 0 : episodeIds.hashCode) +
        (downloadClientId == null ? 0 : downloadClientId.hashCode) +
        (downloadClient == null ? 0 : downloadClient.hashCode) +
        (shouldOverride == null ? 0 : shouldOverride.hashCode);

  factory ReleaseResource.fromJson(Map<String, dynamic> json) => _$ReleaseResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

