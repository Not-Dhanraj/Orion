//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/quality_model.dart';
import 'package:sonarr_api/lib/model/media_info_resource.dart';
import 'package:sonarr_api/lib/model/custom_format_resource.dart';
import 'package:sonarr_api/lib/model/language.dart';
import 'package:sonarr_api/lib/model/release_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'episode_file_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EpisodeFileResource {
  /// Returns a new [EpisodeFileResource] instance.
  EpisodeFileResource({

     this.id,

     this.seriesId,

     this.seasonNumber,

     this.relativePath,

     this.path,

     this.size,

     this.dateAdded,

     this.sceneName,

     this.releaseGroup,

     this.languages,

     this.quality,

     this.customFormats,

     this.customFormatScore,

     this.indexerFlags,

     this.releaseType,

     this.mediaInfo,

     this.qualityCutoffNotMet,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'seriesId',
    required: false,
    includeIfNull: false,
  )


  final int? seriesId;



  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'relativePath',
    required: false,
    includeIfNull: false,
  )


  final String? relativePath;



  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



  @JsonKey(
    
    name: r'size',
    required: false,
    includeIfNull: false,
  )


  final int? size;



  @JsonKey(
    
    name: r'dateAdded',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateAdded;



  @JsonKey(
    
    name: r'sceneName',
    required: false,
    includeIfNull: false,
  )


  final String? sceneName;



  @JsonKey(
    
    name: r'releaseGroup',
    required: false,
    includeIfNull: false,
  )


  final String? releaseGroup;



  @JsonKey(
    
    name: r'languages',
    required: false,
    includeIfNull: false,
  )


  final List<Language>? languages;



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
    
    name: r'indexerFlags',
    required: false,
    includeIfNull: false,
  )


  final int? indexerFlags;



  @JsonKey(
    
    name: r'releaseType',
    required: false,
    includeIfNull: false,
  )


  final ReleaseType? releaseType;



  @JsonKey(
    
    name: r'mediaInfo',
    required: false,
    includeIfNull: false,
  )


  final MediaInfoResource? mediaInfo;



  @JsonKey(
    
    name: r'qualityCutoffNotMet',
    required: false,
    includeIfNull: false,
  )


  final bool? qualityCutoffNotMet;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EpisodeFileResource &&
      other.id == id &&
      other.seriesId == seriesId &&
      other.seasonNumber == seasonNumber &&
      other.relativePath == relativePath &&
      other.path == path &&
      other.size == size &&
      other.dateAdded == dateAdded &&
      other.sceneName == sceneName &&
      other.releaseGroup == releaseGroup &&
      other.languages == languages &&
      other.quality == quality &&
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore &&
      other.indexerFlags == indexerFlags &&
      other.releaseType == releaseType &&
      other.mediaInfo == mediaInfo &&
      other.qualityCutoffNotMet == qualityCutoffNotMet;

    @override
    int get hashCode =>
        id.hashCode +
        seriesId.hashCode +
        seasonNumber.hashCode +
        (relativePath == null ? 0 : relativePath.hashCode) +
        (path == null ? 0 : path.hashCode) +
        size.hashCode +
        dateAdded.hashCode +
        (sceneName == null ? 0 : sceneName.hashCode) +
        (releaseGroup == null ? 0 : releaseGroup.hashCode) +
        (languages == null ? 0 : languages.hashCode) +
        quality.hashCode +
        (customFormats == null ? 0 : customFormats.hashCode) +
        customFormatScore.hashCode +
        (indexerFlags == null ? 0 : indexerFlags.hashCode) +
        releaseType.hashCode +
        mediaInfo.hashCode +
        qualityCutoffNotMet.hashCode;

  factory EpisodeFileResource.fromJson(Map<String, dynamic> json) => _$EpisodeFileResourceFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeFileResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

