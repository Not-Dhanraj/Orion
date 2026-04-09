//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/media_info_resource.dart';
import 'package:radarr_api/lib/model/custom_format_resource.dart';
import 'package:radarr_api/lib/model/quality_model.dart';
import 'package:radarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_file_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MovieFileResource {
  /// Returns a new [MovieFileResource] instance.
  MovieFileResource({

     this.id,

     this.movieId,

     this.relativePath,

     this.path,

     this.size,

     this.dateAdded,

     this.sceneName,

     this.releaseGroup,

     this.edition,

     this.languages,

     this.quality,

     this.customFormats,

     this.customFormatScore,

     this.indexerFlags,

     this.mediaInfo,

     this.originalFilePath,

     this.qualityCutoffNotMet,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'movieId',
    required: false,
    includeIfNull: false,
  )


  final int? movieId;



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
    
    name: r'edition',
    required: false,
    includeIfNull: false,
  )


  final String? edition;



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
    
    name: r'mediaInfo',
    required: false,
    includeIfNull: false,
  )


  final MediaInfoResource? mediaInfo;



  @JsonKey(
    
    name: r'originalFilePath',
    required: false,
    includeIfNull: false,
  )


  final String? originalFilePath;



  @JsonKey(
    
    name: r'qualityCutoffNotMet',
    required: false,
    includeIfNull: false,
  )


  final bool? qualityCutoffNotMet;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MovieFileResource &&
      other.id == id &&
      other.movieId == movieId &&
      other.relativePath == relativePath &&
      other.path == path &&
      other.size == size &&
      other.dateAdded == dateAdded &&
      other.sceneName == sceneName &&
      other.releaseGroup == releaseGroup &&
      other.edition == edition &&
      other.languages == languages &&
      other.quality == quality &&
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore &&
      other.indexerFlags == indexerFlags &&
      other.mediaInfo == mediaInfo &&
      other.originalFilePath == originalFilePath &&
      other.qualityCutoffNotMet == qualityCutoffNotMet;

    @override
    int get hashCode =>
        id.hashCode +
        movieId.hashCode +
        (relativePath == null ? 0 : relativePath.hashCode) +
        (path == null ? 0 : path.hashCode) +
        size.hashCode +
        dateAdded.hashCode +
        (sceneName == null ? 0 : sceneName.hashCode) +
        (releaseGroup == null ? 0 : releaseGroup.hashCode) +
        (edition == null ? 0 : edition.hashCode) +
        (languages == null ? 0 : languages.hashCode) +
        quality.hashCode +
        (customFormats == null ? 0 : customFormats.hashCode) +
        (customFormatScore == null ? 0 : customFormatScore.hashCode) +
        (indexerFlags == null ? 0 : indexerFlags.hashCode) +
        mediaInfo.hashCode +
        (originalFilePath == null ? 0 : originalFilePath.hashCode) +
        qualityCutoffNotMet.hashCode;

  factory MovieFileResource.fromJson(Map<String, dynamic> json) => _$MovieFileResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MovieFileResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

