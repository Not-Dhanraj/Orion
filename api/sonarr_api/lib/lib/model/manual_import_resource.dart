//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/quality_model.dart';
import 'package:sonarr_api/lib/model/series_resource.dart';
import 'package:sonarr_api/lib/model/custom_format_resource.dart';
import 'package:sonarr_api/lib/model/import_rejection_resource.dart';
import 'package:sonarr_api/lib/model/episode_resource.dart';
import 'package:sonarr_api/lib/model/language.dart';
import 'package:sonarr_api/lib/model/release_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manual_import_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ManualImportResource {
  /// Returns a new [ManualImportResource] instance.
  ManualImportResource({

     this.id,

     this.path,

     this.relativePath,

     this.folderName,

     this.name,

     this.size,

     this.series,

     this.seasonNumber,

     this.episodes,

     this.episodeFileId,

     this.releaseGroup,

     this.quality,

     this.languages,

     this.qualityWeight,

     this.downloadId,

     this.customFormats,

     this.customFormatScore,

     this.indexerFlags,

     this.releaseType,

     this.rejections,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



  @JsonKey(
    
    name: r'relativePath',
    required: false,
    includeIfNull: false,
  )


  final String? relativePath;



  @JsonKey(
    
    name: r'folderName',
    required: false,
    includeIfNull: false,
  )


  final String? folderName;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'size',
    required: false,
    includeIfNull: false,
  )


  final int? size;



  @JsonKey(
    
    name: r'series',
    required: false,
    includeIfNull: false,
  )


  final SeriesResource? series;



  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'episodes',
    required: false,
    includeIfNull: false,
  )


  final List<EpisodeResource>? episodes;



  @JsonKey(
    
    name: r'episodeFileId',
    required: false,
    includeIfNull: false,
  )


  final int? episodeFileId;



  @JsonKey(
    
    name: r'releaseGroup',
    required: false,
    includeIfNull: false,
  )


  final String? releaseGroup;



  @JsonKey(
    
    name: r'quality',
    required: false,
    includeIfNull: false,
  )


  final QualityModel? quality;



  @JsonKey(
    
    name: r'languages',
    required: false,
    includeIfNull: false,
  )


  final List<Language>? languages;



  @JsonKey(
    
    name: r'qualityWeight',
    required: false,
    includeIfNull: false,
  )


  final int? qualityWeight;



  @JsonKey(
    
    name: r'downloadId',
    required: false,
    includeIfNull: false,
  )


  final String? downloadId;



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
    
    name: r'rejections',
    required: false,
    includeIfNull: false,
  )


  final List<ImportRejectionResource>? rejections;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ManualImportResource &&
      other.id == id &&
      other.path == path &&
      other.relativePath == relativePath &&
      other.folderName == folderName &&
      other.name == name &&
      other.size == size &&
      other.series == series &&
      other.seasonNumber == seasonNumber &&
      other.episodes == episodes &&
      other.episodeFileId == episodeFileId &&
      other.releaseGroup == releaseGroup &&
      other.quality == quality &&
      other.languages == languages &&
      other.qualityWeight == qualityWeight &&
      other.downloadId == downloadId &&
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore &&
      other.indexerFlags == indexerFlags &&
      other.releaseType == releaseType &&
      other.rejections == rejections;

    @override
    int get hashCode =>
        id.hashCode +
        (path == null ? 0 : path.hashCode) +
        (relativePath == null ? 0 : relativePath.hashCode) +
        (folderName == null ? 0 : folderName.hashCode) +
        (name == null ? 0 : name.hashCode) +
        size.hashCode +
        series.hashCode +
        (seasonNumber == null ? 0 : seasonNumber.hashCode) +
        (episodes == null ? 0 : episodes.hashCode) +
        (episodeFileId == null ? 0 : episodeFileId.hashCode) +
        (releaseGroup == null ? 0 : releaseGroup.hashCode) +
        quality.hashCode +
        (languages == null ? 0 : languages.hashCode) +
        qualityWeight.hashCode +
        (downloadId == null ? 0 : downloadId.hashCode) +
        (customFormats == null ? 0 : customFormats.hashCode) +
        customFormatScore.hashCode +
        indexerFlags.hashCode +
        releaseType.hashCode +
        (rejections == null ? 0 : rejections.hashCode);

  factory ManualImportResource.fromJson(Map<String, dynamic> json) => _$ManualImportResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ManualImportResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

