//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/parsed_episode_info.dart';
import 'package:sonarr_api/lib/model/series_resource.dart';
import 'package:sonarr_api/lib/model/custom_format_resource.dart';
import 'package:sonarr_api/lib/model/episode_resource.dart';
import 'package:sonarr_api/lib/model/language.dart';
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

     this.parsedEpisodeInfo,

     this.series,

     this.episodes,

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
    
    name: r'parsedEpisodeInfo',
    required: false,
    includeIfNull: false,
  )


  final ParsedEpisodeInfo? parsedEpisodeInfo;



  @JsonKey(
    
    name: r'series',
    required: false,
    includeIfNull: false,
  )


  final SeriesResource? series;



  @JsonKey(
    
    name: r'episodes',
    required: false,
    includeIfNull: false,
  )


  final List<EpisodeResource>? episodes;



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
      other.parsedEpisodeInfo == parsedEpisodeInfo &&
      other.series == series &&
      other.episodes == episodes &&
      other.languages == languages &&
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore;

    @override
    int get hashCode =>
        id.hashCode +
        (title == null ? 0 : title.hashCode) +
        parsedEpisodeInfo.hashCode +
        series.hashCode +
        (episodes == null ? 0 : episodes.hashCode) +
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

