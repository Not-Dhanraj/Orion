//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/quality_model.dart';
import 'package:sonarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_file_list_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MovieFileListResource {
  /// Returns a new [MovieFileListResource] instance.
  MovieFileListResource({

     this.movieFileIds,

     this.languages,

     this.quality,

     this.edition,

     this.releaseGroup,

     this.sceneName,

     this.indexerFlags,
  });

  @JsonKey(
    
    name: r'movieFileIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? movieFileIds;



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
    
    name: r'edition',
    required: false,
    includeIfNull: false,
  )


  final String? edition;



  @JsonKey(
    
    name: r'releaseGroup',
    required: false,
    includeIfNull: false,
  )


  final String? releaseGroup;



  @JsonKey(
    
    name: r'sceneName',
    required: false,
    includeIfNull: false,
  )


  final String? sceneName;



  @JsonKey(
    
    name: r'indexerFlags',
    required: false,
    includeIfNull: false,
  )


  final int? indexerFlags;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MovieFileListResource &&
      other.movieFileIds == movieFileIds &&
      other.languages == languages &&
      other.quality == quality &&
      other.edition == edition &&
      other.releaseGroup == releaseGroup &&
      other.sceneName == sceneName &&
      other.indexerFlags == indexerFlags;

    @override
    int get hashCode =>
        (movieFileIds == null ? 0 : movieFileIds.hashCode) +
        (languages == null ? 0 : languages.hashCode) +
        quality.hashCode +
        (edition == null ? 0 : edition.hashCode) +
        (releaseGroup == null ? 0 : releaseGroup.hashCode) +
        (sceneName == null ? 0 : sceneName.hashCode) +
        (indexerFlags == null ? 0 : indexerFlags.hashCode);

  factory MovieFileListResource.fromJson(Map<String, dynamic> json) => _$MovieFileListResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MovieFileListResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

