//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/quality_model.dart';
import 'package:radarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parsed_movie_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ParsedMovieInfo {
  /// Returns a new [ParsedMovieInfo] instance.
  ParsedMovieInfo({

     this.movieTitles,

     this.originalTitle,

     this.releaseTitle,

     this.simpleReleaseTitle,

     this.quality,

     this.languages,

     this.releaseGroup,

     this.releaseHash,

     this.edition,

     this.year,

     this.imdbId,

     this.tmdbId,

     this.hardcodedSubs,

     this.movieTitle,

     this.primaryMovieTitle,
  });

  @JsonKey(
    
    name: r'movieTitles',
    required: false,
    includeIfNull: false,
  )


  final List<String>? movieTitles;



  @JsonKey(
    
    name: r'originalTitle',
    required: false,
    includeIfNull: false,
  )


  final String? originalTitle;



  @JsonKey(
    
    name: r'releaseTitle',
    required: false,
    includeIfNull: false,
  )


  final String? releaseTitle;



  @JsonKey(
    
    name: r'simpleReleaseTitle',
    required: false,
    includeIfNull: false,
  )


  final String? simpleReleaseTitle;



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
    
    name: r'releaseHash',
    required: false,
    includeIfNull: false,
  )


  final String? releaseHash;



  @JsonKey(
    
    name: r'edition',
    required: false,
    includeIfNull: false,
  )


  final String? edition;



  @JsonKey(
    
    name: r'year',
    required: false,
    includeIfNull: false,
  )


  final int? year;



  @JsonKey(
    
    name: r'imdbId',
    required: false,
    includeIfNull: false,
  )


  final String? imdbId;



  @JsonKey(
    
    name: r'tmdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tmdbId;



  @JsonKey(
    
    name: r'hardcodedSubs',
    required: false,
    includeIfNull: false,
  )


  final String? hardcodedSubs;



  @JsonKey(
    
    name: r'movieTitle',
    required: false,
    includeIfNull: false,
  )


  final String? movieTitle;



  @JsonKey(
    
    name: r'primaryMovieTitle',
    required: false,
    includeIfNull: false,
  )


  final String? primaryMovieTitle;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ParsedMovieInfo &&
      other.movieTitles == movieTitles &&
      other.originalTitle == originalTitle &&
      other.releaseTitle == releaseTitle &&
      other.simpleReleaseTitle == simpleReleaseTitle &&
      other.quality == quality &&
      other.languages == languages &&
      other.releaseGroup == releaseGroup &&
      other.releaseHash == releaseHash &&
      other.edition == edition &&
      other.year == year &&
      other.imdbId == imdbId &&
      other.tmdbId == tmdbId &&
      other.hardcodedSubs == hardcodedSubs &&
      other.movieTitle == movieTitle &&
      other.primaryMovieTitle == primaryMovieTitle;

    @override
    int get hashCode =>
        (movieTitles == null ? 0 : movieTitles.hashCode) +
        (originalTitle == null ? 0 : originalTitle.hashCode) +
        (releaseTitle == null ? 0 : releaseTitle.hashCode) +
        (simpleReleaseTitle == null ? 0 : simpleReleaseTitle.hashCode) +
        quality.hashCode +
        (languages == null ? 0 : languages.hashCode) +
        (releaseGroup == null ? 0 : releaseGroup.hashCode) +
        (releaseHash == null ? 0 : releaseHash.hashCode) +
        (edition == null ? 0 : edition.hashCode) +
        year.hashCode +
        (imdbId == null ? 0 : imdbId.hashCode) +
        tmdbId.hashCode +
        (hardcodedSubs == null ? 0 : hardcodedSubs.hashCode) +
        (movieTitle == null ? 0 : movieTitle.hashCode) +
        (primaryMovieTitle == null ? 0 : primaryMovieTitle.hashCode);

  factory ParsedMovieInfo.fromJson(Map<String, dynamic> json) => _$ParsedMovieInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ParsedMovieInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

