//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/episode_file_resource.dart';
import 'package:sonarr_api/lib/model/media_cover.dart';
import 'package:sonarr_api/lib/model/series_resource.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'episode_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EpisodeResource {
  /// Returns a new [EpisodeResource] instance.
  EpisodeResource({

     this.id,

     this.seriesId,

     this.tvdbId,

     this.episodeFileId,

     this.seasonNumber,

     this.episodeNumber,

     this.title,

     this.airDate,

     this.airDateUtc,

     this.lastSearchTime,

     this.runtime,

     this.finaleType,

     this.overview,

     this.episodeFile,

     this.hasFile,

     this.monitored,

     this.absoluteEpisodeNumber,

     this.sceneAbsoluteEpisodeNumber,

     this.sceneEpisodeNumber,

     this.sceneSeasonNumber,

     this.unverifiedSceneNumbering,

     this.endTime,

     this.grabDate,

     this.series,

     this.images,
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
    
    name: r'tvdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tvdbId;



  @JsonKey(
    
    name: r'episodeFileId',
    required: false,
    includeIfNull: false,
  )


  final int? episodeFileId;



  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'episodeNumber',
    required: false,
    includeIfNull: false,
  )


  final int? episodeNumber;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'airDate',
    required: false,
    includeIfNull: false,
  )


  final String? airDate;



  @JsonKey(
    
    name: r'airDateUtc',
    required: false,
    includeIfNull: false,
  )


  final DateTime? airDateUtc;



  @JsonKey(
    
    name: r'lastSearchTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastSearchTime;



  @JsonKey(
    
    name: r'runtime',
    required: false,
    includeIfNull: false,
  )


  final int? runtime;



  @JsonKey(
    
    name: r'finaleType',
    required: false,
    includeIfNull: false,
  )


  final String? finaleType;



  @JsonKey(
    
    name: r'overview',
    required: false,
    includeIfNull: false,
  )


  final String? overview;



  @JsonKey(
    
    name: r'episodeFile',
    required: false,
    includeIfNull: false,
  )


  final EpisodeFileResource? episodeFile;



  @JsonKey(
    
    name: r'hasFile',
    required: false,
    includeIfNull: false,
  )


  final bool? hasFile;



  @JsonKey(
    
    name: r'monitored',
    required: false,
    includeIfNull: false,
  )


  final bool? monitored;



  @JsonKey(
    
    name: r'absoluteEpisodeNumber',
    required: false,
    includeIfNull: false,
  )


  final int? absoluteEpisodeNumber;



  @JsonKey(
    
    name: r'sceneAbsoluteEpisodeNumber',
    required: false,
    includeIfNull: false,
  )


  final int? sceneAbsoluteEpisodeNumber;



  @JsonKey(
    
    name: r'sceneEpisodeNumber',
    required: false,
    includeIfNull: false,
  )


  final int? sceneEpisodeNumber;



  @JsonKey(
    
    name: r'sceneSeasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? sceneSeasonNumber;



  @JsonKey(
    
    name: r'unverifiedSceneNumbering',
    required: false,
    includeIfNull: false,
  )


  final bool? unverifiedSceneNumbering;



  @JsonKey(
    
    name: r'endTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endTime;



  @JsonKey(
    
    name: r'grabDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? grabDate;



  @JsonKey(
    
    name: r'series',
    required: false,
    includeIfNull: false,
  )


  final SeriesResource? series;



  @JsonKey(
    
    name: r'images',
    required: false,
    includeIfNull: false,
  )


  final List<MediaCover>? images;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EpisodeResource &&
      other.id == id &&
      other.seriesId == seriesId &&
      other.tvdbId == tvdbId &&
      other.episodeFileId == episodeFileId &&
      other.seasonNumber == seasonNumber &&
      other.episodeNumber == episodeNumber &&
      other.title == title &&
      other.airDate == airDate &&
      other.airDateUtc == airDateUtc &&
      other.lastSearchTime == lastSearchTime &&
      other.runtime == runtime &&
      other.finaleType == finaleType &&
      other.overview == overview &&
      other.episodeFile == episodeFile &&
      other.hasFile == hasFile &&
      other.monitored == monitored &&
      other.absoluteEpisodeNumber == absoluteEpisodeNumber &&
      other.sceneAbsoluteEpisodeNumber == sceneAbsoluteEpisodeNumber &&
      other.sceneEpisodeNumber == sceneEpisodeNumber &&
      other.sceneSeasonNumber == sceneSeasonNumber &&
      other.unverifiedSceneNumbering == unverifiedSceneNumbering &&
      other.endTime == endTime &&
      other.grabDate == grabDate &&
      other.series == series &&
      other.images == images;

    @override
    int get hashCode =>
        id.hashCode +
        seriesId.hashCode +
        tvdbId.hashCode +
        episodeFileId.hashCode +
        seasonNumber.hashCode +
        episodeNumber.hashCode +
        (title == null ? 0 : title.hashCode) +
        (airDate == null ? 0 : airDate.hashCode) +
        (airDateUtc == null ? 0 : airDateUtc.hashCode) +
        (lastSearchTime == null ? 0 : lastSearchTime.hashCode) +
        runtime.hashCode +
        (finaleType == null ? 0 : finaleType.hashCode) +
        (overview == null ? 0 : overview.hashCode) +
        episodeFile.hashCode +
        hasFile.hashCode +
        monitored.hashCode +
        (absoluteEpisodeNumber == null ? 0 : absoluteEpisodeNumber.hashCode) +
        (sceneAbsoluteEpisodeNumber == null ? 0 : sceneAbsoluteEpisodeNumber.hashCode) +
        (sceneEpisodeNumber == null ? 0 : sceneEpisodeNumber.hashCode) +
        (sceneSeasonNumber == null ? 0 : sceneSeasonNumber.hashCode) +
        unverifiedSceneNumbering.hashCode +
        (endTime == null ? 0 : endTime.hashCode) +
        (grabDate == null ? 0 : grabDate.hashCode) +
        series.hashCode +
        (images == null ? 0 : images.hashCode);

  factory EpisodeResource.fromJson(Map<String, dynamic> json) => _$EpisodeResourceFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

