//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/download_protocol.dart';
import 'package:radarr_api/lib/model/custom_format_resource.dart';
import 'package:radarr_api/lib/model/quality_model.dart';
import 'package:radarr_api/lib/model/language.dart';
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

     this.customFormats,

     this.customFormatScore,

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

     this.sceneSource,

     this.movieTitles,

     this.languages,

     this.mappedMovieId,

     this.approved,

     this.temporarilyRejected,

     this.rejected,

     this.tmdbId,

     this.imdbId,

     this.rejections,

     this.publishDate,

     this.commentUrl,

     this.downloadUrl,

     this.infoUrl,

     this.movieRequested,

     this.downloadAllowed,

     this.releaseWeight,

     this.edition,

     this.magnetUrl,

     this.infoHash,

     this.seeders,

     this.leechers,

     this.protocol,

     this.indexerFlags,

     this.movieId,

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
    
    name: r'sceneSource',
    required: false,
    includeIfNull: false,
  )


  final bool? sceneSource;



  @JsonKey(
    
    name: r'movieTitles',
    required: false,
    includeIfNull: false,
  )


  final List<String>? movieTitles;



  @JsonKey(
    
    name: r'languages',
    required: false,
    includeIfNull: false,
  )


  final List<Language>? languages;



  @JsonKey(
    
    name: r'mappedMovieId',
    required: false,
    includeIfNull: false,
  )


  final int? mappedMovieId;



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
    
    name: r'tmdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tmdbId;



  @JsonKey(
    
    name: r'imdbId',
    required: false,
    includeIfNull: false,
  )


  final int? imdbId;



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
    
    name: r'movieRequested',
    required: false,
    includeIfNull: false,
  )


  final bool? movieRequested;



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
    
    name: r'edition',
    required: false,
    includeIfNull: false,
  )


  final String? edition;



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


  final Object? indexerFlags;



  @JsonKey(
    
    name: r'movieId',
    required: false,
    includeIfNull: false,
  )


  final int? movieId;



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
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore &&
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
      other.sceneSource == sceneSource &&
      other.movieTitles == movieTitles &&
      other.languages == languages &&
      other.mappedMovieId == mappedMovieId &&
      other.approved == approved &&
      other.temporarilyRejected == temporarilyRejected &&
      other.rejected == rejected &&
      other.tmdbId == tmdbId &&
      other.imdbId == imdbId &&
      other.rejections == rejections &&
      other.publishDate == publishDate &&
      other.commentUrl == commentUrl &&
      other.downloadUrl == downloadUrl &&
      other.infoUrl == infoUrl &&
      other.movieRequested == movieRequested &&
      other.downloadAllowed == downloadAllowed &&
      other.releaseWeight == releaseWeight &&
      other.edition == edition &&
      other.magnetUrl == magnetUrl &&
      other.infoHash == infoHash &&
      other.seeders == seeders &&
      other.leechers == leechers &&
      other.protocol == protocol &&
      other.indexerFlags == indexerFlags &&
      other.movieId == movieId &&
      other.downloadClientId == downloadClientId &&
      other.downloadClient == downloadClient &&
      other.shouldOverride == shouldOverride;

    @override
    int get hashCode =>
        id.hashCode +
        (guid == null ? 0 : guid.hashCode) +
        quality.hashCode +
        (customFormats == null ? 0 : customFormats.hashCode) +
        customFormatScore.hashCode +
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
        sceneSource.hashCode +
        (movieTitles == null ? 0 : movieTitles.hashCode) +
        (languages == null ? 0 : languages.hashCode) +
        (mappedMovieId == null ? 0 : mappedMovieId.hashCode) +
        approved.hashCode +
        temporarilyRejected.hashCode +
        rejected.hashCode +
        tmdbId.hashCode +
        imdbId.hashCode +
        (rejections == null ? 0 : rejections.hashCode) +
        publishDate.hashCode +
        (commentUrl == null ? 0 : commentUrl.hashCode) +
        (downloadUrl == null ? 0 : downloadUrl.hashCode) +
        (infoUrl == null ? 0 : infoUrl.hashCode) +
        movieRequested.hashCode +
        downloadAllowed.hashCode +
        releaseWeight.hashCode +
        (edition == null ? 0 : edition.hashCode) +
        (magnetUrl == null ? 0 : magnetUrl.hashCode) +
        (infoHash == null ? 0 : infoHash.hashCode) +
        (seeders == null ? 0 : seeders.hashCode) +
        (leechers == null ? 0 : leechers.hashCode) +
        protocol.hashCode +
        (indexerFlags == null ? 0 : indexerFlags.hashCode) +
        (movieId == null ? 0 : movieId.hashCode) +
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

