//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/quality_model.dart';
import 'package:sonarr_api/lib/model/episode_history_event_type.dart';
import 'package:sonarr_api/lib/model/series_resource.dart';
import 'package:sonarr_api/lib/model/custom_format_resource.dart';
import 'package:sonarr_api/lib/model/episode_resource.dart';
import 'package:sonarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'history_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HistoryResource {
  /// Returns a new [HistoryResource] instance.
  HistoryResource({

     this.id,

     this.episodeId,

     this.seriesId,

     this.sourceTitle,

     this.languages,

     this.quality,

     this.customFormats,

     this.customFormatScore,

     this.qualityCutoffNotMet,

     this.date,

     this.downloadId,

     this.eventType,

     this.data,

     this.episode,

     this.series,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'episodeId',
    required: false,
    includeIfNull: false,
  )


  final int? episodeId;



  @JsonKey(
    
    name: r'seriesId',
    required: false,
    includeIfNull: false,
  )


  final int? seriesId;



  @JsonKey(
    
    name: r'sourceTitle',
    required: false,
    includeIfNull: false,
  )


  final String? sourceTitle;



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
    
    name: r'qualityCutoffNotMet',
    required: false,
    includeIfNull: false,
  )


  final bool? qualityCutoffNotMet;



  @JsonKey(
    
    name: r'date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? date;



  @JsonKey(
    
    name: r'downloadId',
    required: false,
    includeIfNull: false,
  )


  final String? downloadId;



  @JsonKey(
    
    name: r'eventType',
    required: false,
    includeIfNull: false,
  )


  final EpisodeHistoryEventType? eventType;



  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? data;



  @JsonKey(
    
    name: r'episode',
    required: false,
    includeIfNull: false,
  )


  final EpisodeResource? episode;



  @JsonKey(
    
    name: r'series',
    required: false,
    includeIfNull: false,
  )


  final SeriesResource? series;





    @override
    bool operator ==(Object other) => identical(this, other) || other is HistoryResource &&
      other.id == id &&
      other.episodeId == episodeId &&
      other.seriesId == seriesId &&
      other.sourceTitle == sourceTitle &&
      other.languages == languages &&
      other.quality == quality &&
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore &&
      other.qualityCutoffNotMet == qualityCutoffNotMet &&
      other.date == date &&
      other.downloadId == downloadId &&
      other.eventType == eventType &&
      other.data == data &&
      other.episode == episode &&
      other.series == series;

    @override
    int get hashCode =>
        id.hashCode +
        episodeId.hashCode +
        seriesId.hashCode +
        (sourceTitle == null ? 0 : sourceTitle.hashCode) +
        (languages == null ? 0 : languages.hashCode) +
        quality.hashCode +
        (customFormats == null ? 0 : customFormats.hashCode) +
        customFormatScore.hashCode +
        qualityCutoffNotMet.hashCode +
        date.hashCode +
        (downloadId == null ? 0 : downloadId.hashCode) +
        eventType.hashCode +
        (data == null ? 0 : data.hashCode) +
        episode.hashCode +
        series.hashCode;

  factory HistoryResource.fromJson(Map<String, dynamic> json) => _$HistoryResourceFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

