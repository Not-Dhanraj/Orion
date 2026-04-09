//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/quality_model.dart';
import 'package:sonarr_api/lib/model/series_title_info.dart';
import 'package:sonarr_api/lib/model/language.dart';
import 'package:sonarr_api/lib/model/release_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parsed_episode_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ParsedEpisodeInfo {
  /// Returns a new [ParsedEpisodeInfo] instance.
  ParsedEpisodeInfo({

     this.releaseTitle,

     this.seriesTitle,

     this.seriesTitleInfo,

     this.quality,

     this.seasonNumber,

     this.episodeNumbers,

     this.absoluteEpisodeNumbers,

     this.specialAbsoluteEpisodeNumbers,

     this.airDate,

     this.languages,

     this.fullSeason,

     this.isPartialSeason,

     this.isMultiSeason,

     this.isSeasonExtra,

     this.isSplitEpisode,

     this.isMiniSeries,

     this.special,

     this.releaseGroup,

     this.releaseHash,

     this.seasonPart,

     this.releaseTokens,

     this.dailyPart,

     this.isDaily,

     this.isAbsoluteNumbering,

     this.isPossibleSpecialEpisode,

     this.isPossibleSceneSeasonSpecial,

     this.releaseType,
  });

  @JsonKey(
    
    name: r'releaseTitle',
    required: false,
    includeIfNull: false,
  )


  final String? releaseTitle;



  @JsonKey(
    
    name: r'seriesTitle',
    required: false,
    includeIfNull: false,
  )


  final String? seriesTitle;



  @JsonKey(
    
    name: r'seriesTitleInfo',
    required: false,
    includeIfNull: false,
  )


  final SeriesTitleInfo? seriesTitleInfo;



  @JsonKey(
    
    name: r'quality',
    required: false,
    includeIfNull: false,
  )


  final QualityModel? quality;



  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'episodeNumbers',
    required: false,
    includeIfNull: false,
  )


  final List<int>? episodeNumbers;



  @JsonKey(
    
    name: r'absoluteEpisodeNumbers',
    required: false,
    includeIfNull: false,
  )


  final List<int>? absoluteEpisodeNumbers;



  @JsonKey(
    
    name: r'specialAbsoluteEpisodeNumbers',
    required: false,
    includeIfNull: false,
  )


  final List<double>? specialAbsoluteEpisodeNumbers;



  @JsonKey(
    
    name: r'airDate',
    required: false,
    includeIfNull: false,
  )


  final String? airDate;



  @JsonKey(
    
    name: r'languages',
    required: false,
    includeIfNull: false,
  )


  final List<Language>? languages;



  @JsonKey(
    
    name: r'fullSeason',
    required: false,
    includeIfNull: false,
  )


  final bool? fullSeason;



  @JsonKey(
    
    name: r'isPartialSeason',
    required: false,
    includeIfNull: false,
  )


  final bool? isPartialSeason;



  @JsonKey(
    
    name: r'isMultiSeason',
    required: false,
    includeIfNull: false,
  )


  final bool? isMultiSeason;



  @JsonKey(
    
    name: r'isSeasonExtra',
    required: false,
    includeIfNull: false,
  )


  final bool? isSeasonExtra;



  @JsonKey(
    
    name: r'isSplitEpisode',
    required: false,
    includeIfNull: false,
  )


  final bool? isSplitEpisode;



  @JsonKey(
    
    name: r'isMiniSeries',
    required: false,
    includeIfNull: false,
  )


  final bool? isMiniSeries;



  @JsonKey(
    
    name: r'special',
    required: false,
    includeIfNull: false,
  )


  final bool? special;



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
    
    name: r'seasonPart',
    required: false,
    includeIfNull: false,
  )


  final int? seasonPart;



  @JsonKey(
    
    name: r'releaseTokens',
    required: false,
    includeIfNull: false,
  )


  final String? releaseTokens;



  @JsonKey(
    
    name: r'dailyPart',
    required: false,
    includeIfNull: false,
  )


  final int? dailyPart;



  @JsonKey(
    
    name: r'isDaily',
    required: false,
    includeIfNull: false,
  )


  final bool? isDaily;



  @JsonKey(
    
    name: r'isAbsoluteNumbering',
    required: false,
    includeIfNull: false,
  )


  final bool? isAbsoluteNumbering;



  @JsonKey(
    
    name: r'isPossibleSpecialEpisode',
    required: false,
    includeIfNull: false,
  )


  final bool? isPossibleSpecialEpisode;



  @JsonKey(
    
    name: r'isPossibleSceneSeasonSpecial',
    required: false,
    includeIfNull: false,
  )


  final bool? isPossibleSceneSeasonSpecial;



  @JsonKey(
    
    name: r'releaseType',
    required: false,
    includeIfNull: false,
  )


  final ReleaseType? releaseType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ParsedEpisodeInfo &&
      other.releaseTitle == releaseTitle &&
      other.seriesTitle == seriesTitle &&
      other.seriesTitleInfo == seriesTitleInfo &&
      other.quality == quality &&
      other.seasonNumber == seasonNumber &&
      other.episodeNumbers == episodeNumbers &&
      other.absoluteEpisodeNumbers == absoluteEpisodeNumbers &&
      other.specialAbsoluteEpisodeNumbers == specialAbsoluteEpisodeNumbers &&
      other.airDate == airDate &&
      other.languages == languages &&
      other.fullSeason == fullSeason &&
      other.isPartialSeason == isPartialSeason &&
      other.isMultiSeason == isMultiSeason &&
      other.isSeasonExtra == isSeasonExtra &&
      other.isSplitEpisode == isSplitEpisode &&
      other.isMiniSeries == isMiniSeries &&
      other.special == special &&
      other.releaseGroup == releaseGroup &&
      other.releaseHash == releaseHash &&
      other.seasonPart == seasonPart &&
      other.releaseTokens == releaseTokens &&
      other.dailyPart == dailyPart &&
      other.isDaily == isDaily &&
      other.isAbsoluteNumbering == isAbsoluteNumbering &&
      other.isPossibleSpecialEpisode == isPossibleSpecialEpisode &&
      other.isPossibleSceneSeasonSpecial == isPossibleSceneSeasonSpecial &&
      other.releaseType == releaseType;

    @override
    int get hashCode =>
        (releaseTitle == null ? 0 : releaseTitle.hashCode) +
        (seriesTitle == null ? 0 : seriesTitle.hashCode) +
        seriesTitleInfo.hashCode +
        quality.hashCode +
        seasonNumber.hashCode +
        (episodeNumbers == null ? 0 : episodeNumbers.hashCode) +
        (absoluteEpisodeNumbers == null ? 0 : absoluteEpisodeNumbers.hashCode) +
        (specialAbsoluteEpisodeNumbers == null ? 0 : specialAbsoluteEpisodeNumbers.hashCode) +
        (airDate == null ? 0 : airDate.hashCode) +
        (languages == null ? 0 : languages.hashCode) +
        fullSeason.hashCode +
        isPartialSeason.hashCode +
        isMultiSeason.hashCode +
        isSeasonExtra.hashCode +
        isSplitEpisode.hashCode +
        isMiniSeries.hashCode +
        special.hashCode +
        (releaseGroup == null ? 0 : releaseGroup.hashCode) +
        (releaseHash == null ? 0 : releaseHash.hashCode) +
        seasonPart.hashCode +
        (releaseTokens == null ? 0 : releaseTokens.hashCode) +
        (dailyPart == null ? 0 : dailyPart.hashCode) +
        isDaily.hashCode +
        isAbsoluteNumbering.hashCode +
        isPossibleSpecialEpisode.hashCode +
        isPossibleSceneSeasonSpecial.hashCode +
        releaseType.hashCode;

  factory ParsedEpisodeInfo.fromJson(Map<String, dynamic> json) => _$ParsedEpisodeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ParsedEpisodeInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

