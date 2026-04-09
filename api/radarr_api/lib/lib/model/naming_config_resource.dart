//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/colon_replacement_format.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'naming_config_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NamingConfigResource {
  /// Returns a new [NamingConfigResource] instance.
  NamingConfigResource({

     this.id,

     this.renameMovies,

     this.replaceIllegalCharacters,

     this.colonReplacementFormat,

     this.standardMovieFormat,

     this.movieFolderFormat,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'renameMovies',
    required: false,
    includeIfNull: false,
  )


  final bool? renameMovies;



  @JsonKey(
    
    name: r'replaceIllegalCharacters',
    required: false,
    includeIfNull: false,
  )


  final bool? replaceIllegalCharacters;



  @JsonKey(
    
    name: r'colonReplacementFormat',
    required: false,
    includeIfNull: false,
  )


  final ColonReplacementFormat? colonReplacementFormat;



  @JsonKey(
    
    name: r'standardMovieFormat',
    required: false,
    includeIfNull: false,
  )


  final String? standardMovieFormat;



  @JsonKey(
    
    name: r'movieFolderFormat',
    required: false,
    includeIfNull: false,
  )


  final String? movieFolderFormat;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NamingConfigResource &&
      other.id == id &&
      other.renameMovies == renameMovies &&
      other.replaceIllegalCharacters == replaceIllegalCharacters &&
      other.colonReplacementFormat == colonReplacementFormat &&
      other.standardMovieFormat == standardMovieFormat &&
      other.movieFolderFormat == movieFolderFormat;

    @override
    int get hashCode =>
        id.hashCode +
        renameMovies.hashCode +
        replaceIllegalCharacters.hashCode +
        colonReplacementFormat.hashCode +
        (standardMovieFormat == null ? 0 : standardMovieFormat.hashCode) +
        (movieFolderFormat == null ? 0 : movieFolderFormat.hashCode);

  factory NamingConfigResource.fromJson(Map<String, dynamic> json) => _$NamingConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$NamingConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

