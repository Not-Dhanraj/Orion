//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/movie_resource.dart';
import 'package:radarr_api/lib/model/custom_format_resource.dart';
import 'package:radarr_api/lib/model/quality_model.dart';
import 'package:radarr_api/lib/model/import_rejection_resource.dart';
import 'package:radarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manual_import_reprocess_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ManualImportReprocessResource {
  /// Returns a new [ManualImportReprocessResource] instance.
  ManualImportReprocessResource({

     this.id,

     this.path,

     this.movieId,

     this.movie,

     this.quality,

     this.languages,

     this.releaseGroup,

     this.downloadId,

     this.customFormats,

     this.customFormatScore,

     this.indexerFlags,

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
    
    name: r'movieId',
    required: false,
    includeIfNull: false,
  )


  final int? movieId;



  @JsonKey(
    
    name: r'movie',
    required: false,
    includeIfNull: false,
  )


  final MovieResource? movie;



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
    
    name: r'releaseGroup',
    required: false,
    includeIfNull: false,
  )


  final String? releaseGroup;



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
    
    name: r'rejections',
    required: false,
    includeIfNull: false,
  )


  final List<ImportRejectionResource>? rejections;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ManualImportReprocessResource &&
      other.id == id &&
      other.path == path &&
      other.movieId == movieId &&
      other.movie == movie &&
      other.quality == quality &&
      other.languages == languages &&
      other.releaseGroup == releaseGroup &&
      other.downloadId == downloadId &&
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore &&
      other.indexerFlags == indexerFlags &&
      other.rejections == rejections;

    @override
    int get hashCode =>
        id.hashCode +
        (path == null ? 0 : path.hashCode) +
        movieId.hashCode +
        movie.hashCode +
        quality.hashCode +
        (languages == null ? 0 : languages.hashCode) +
        (releaseGroup == null ? 0 : releaseGroup.hashCode) +
        (downloadId == null ? 0 : downloadId.hashCode) +
        (customFormats == null ? 0 : customFormats.hashCode) +
        customFormatScore.hashCode +
        indexerFlags.hashCode +
        (rejections == null ? 0 : rejections.hashCode);

  factory ManualImportReprocessResource.fromJson(Map<String, dynamic> json) => _$ManualImportReprocessResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ManualImportReprocessResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

