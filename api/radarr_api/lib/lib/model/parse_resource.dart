//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/parsed_movie_info.dart';
import 'package:radarr_api/lib/model/movie_resource.dart';
import 'package:radarr_api/lib/model/custom_format_resource.dart';
import 'package:radarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parse_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ParseResource {
  /// Returns a new [ParseResource] instance.
  ParseResource({

     this.id,

     this.title,

     this.parsedMovieInfo,

     this.movie,

     this.languages,

     this.customFormats,

     this.customFormatScore,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'parsedMovieInfo',
    required: false,
    includeIfNull: false,
  )


  final ParsedMovieInfo? parsedMovieInfo;



  @JsonKey(
    
    name: r'movie',
    required: false,
    includeIfNull: false,
  )


  final MovieResource? movie;



  @JsonKey(
    
    name: r'languages',
    required: false,
    includeIfNull: false,
  )


  final List<Language>? languages;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is ParseResource &&
      other.id == id &&
      other.title == title &&
      other.parsedMovieInfo == parsedMovieInfo &&
      other.movie == movie &&
      other.languages == languages &&
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore;

    @override
    int get hashCode =>
        id.hashCode +
        (title == null ? 0 : title.hashCode) +
        parsedMovieInfo.hashCode +
        movie.hashCode +
        (languages == null ? 0 : languages.hashCode) +
        (customFormats == null ? 0 : customFormats.hashCode) +
        customFormatScore.hashCode;

  factory ParseResource.fromJson(Map<String, dynamic> json) => _$ParseResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ParseResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

