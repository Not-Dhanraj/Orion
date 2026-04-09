//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/download_protocol.dart';
import 'package:sonarr_api/lib/model/quality_model.dart';
import 'package:sonarr_api/lib/model/series_resource.dart';
import 'package:sonarr_api/lib/model/custom_format_resource.dart';
import 'package:sonarr_api/lib/model/tracked_download_status_message.dart';
import 'package:sonarr_api/lib/model/tracked_download_state.dart';
import 'package:sonarr_api/lib/model/episode_resource.dart';
import 'package:sonarr_api/lib/model/tracked_download_status.dart';
import 'package:sonarr_api/lib/model/language.dart';
import 'package:sonarr_api/lib/model/queue_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'queue_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueueResource {
  /// Returns a new [QueueResource] instance.
  QueueResource({

     this.id,

     this.seriesId,

     this.episodeId,

     this.seasonNumber,

     this.series,

     this.episode,

     this.languages,

     this.quality,

     this.customFormats,

     this.customFormatScore,

     this.size,

     this.title,

     this.estimatedCompletionTime,

     this.added,

     this.status,

     this.trackedDownloadStatus,

     this.trackedDownloadState,

     this.statusMessages,

     this.errorMessage,

     this.downloadId,

     this.protocol,

     this.downloadClient,

     this.downloadClientHasPostImportCategory,

     this.indexer,

     this.outputPath,

     this.episodeHasFile,

     this.sizeleft,

     this.timeleft,
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
    
    name: r'episodeId',
    required: false,
    includeIfNull: false,
  )


  final int? episodeId;



  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'series',
    required: false,
    includeIfNull: false,
  )


  final SeriesResource? series;



  @JsonKey(
    
    name: r'episode',
    required: false,
    includeIfNull: false,
  )


  final EpisodeResource? episode;



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
    
    name: r'size',
    required: false,
    includeIfNull: false,
  )


  final double? size;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'estimatedCompletionTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? estimatedCompletionTime;



  @JsonKey(
    
    name: r'added',
    required: false,
    includeIfNull: false,
  )


  final DateTime? added;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final QueueStatus? status;



  @JsonKey(
    
    name: r'trackedDownloadStatus',
    required: false,
    includeIfNull: false,
  )


  final TrackedDownloadStatus? trackedDownloadStatus;



  @JsonKey(
    
    name: r'trackedDownloadState',
    required: false,
    includeIfNull: false,
  )


  final TrackedDownloadState? trackedDownloadState;



  @JsonKey(
    
    name: r'statusMessages',
    required: false,
    includeIfNull: false,
  )


  final List<TrackedDownloadStatusMessage>? statusMessages;



  @JsonKey(
    
    name: r'errorMessage',
    required: false,
    includeIfNull: false,
  )


  final String? errorMessage;



  @JsonKey(
    
    name: r'downloadId',
    required: false,
    includeIfNull: false,
  )


  final String? downloadId;



  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false,
  )


  final DownloadProtocol? protocol;



  @JsonKey(
    
    name: r'downloadClient',
    required: false,
    includeIfNull: false,
  )


  final String? downloadClient;



  @JsonKey(
    
    name: r'downloadClientHasPostImportCategory',
    required: false,
    includeIfNull: false,
  )


  final bool? downloadClientHasPostImportCategory;



  @JsonKey(
    
    name: r'indexer',
    required: false,
    includeIfNull: false,
  )


  final String? indexer;



  @JsonKey(
    
    name: r'outputPath',
    required: false,
    includeIfNull: false,
  )


  final String? outputPath;



  @JsonKey(
    
    name: r'episodeHasFile',
    required: false,
    includeIfNull: false,
  )


  final bool? episodeHasFile;



  @Deprecated('sizeleft has been deprecated')
  @JsonKey(
    
    name: r'sizeleft',
    required: false,
    includeIfNull: false,
  )


  final double? sizeleft;



  @Deprecated('timeleft has been deprecated')
  @JsonKey(
    
    name: r'timeleft',
    required: false,
    includeIfNull: false,
  )


  final String? timeleft;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QueueResource &&
      other.id == id &&
      other.seriesId == seriesId &&
      other.episodeId == episodeId &&
      other.seasonNumber == seasonNumber &&
      other.series == series &&
      other.episode == episode &&
      other.languages == languages &&
      other.quality == quality &&
      other.customFormats == customFormats &&
      other.customFormatScore == customFormatScore &&
      other.size == size &&
      other.title == title &&
      other.estimatedCompletionTime == estimatedCompletionTime &&
      other.added == added &&
      other.status == status &&
      other.trackedDownloadStatus == trackedDownloadStatus &&
      other.trackedDownloadState == trackedDownloadState &&
      other.statusMessages == statusMessages &&
      other.errorMessage == errorMessage &&
      other.downloadId == downloadId &&
      other.protocol == protocol &&
      other.downloadClient == downloadClient &&
      other.downloadClientHasPostImportCategory == downloadClientHasPostImportCategory &&
      other.indexer == indexer &&
      other.outputPath == outputPath &&
      other.episodeHasFile == episodeHasFile &&
      other.sizeleft == sizeleft &&
      other.timeleft == timeleft;

    @override
    int get hashCode =>
        id.hashCode +
        (seriesId == null ? 0 : seriesId.hashCode) +
        (episodeId == null ? 0 : episodeId.hashCode) +
        (seasonNumber == null ? 0 : seasonNumber.hashCode) +
        series.hashCode +
        episode.hashCode +
        (languages == null ? 0 : languages.hashCode) +
        quality.hashCode +
        (customFormats == null ? 0 : customFormats.hashCode) +
        customFormatScore.hashCode +
        size.hashCode +
        (title == null ? 0 : title.hashCode) +
        (estimatedCompletionTime == null ? 0 : estimatedCompletionTime.hashCode) +
        (added == null ? 0 : added.hashCode) +
        status.hashCode +
        trackedDownloadStatus.hashCode +
        trackedDownloadState.hashCode +
        (statusMessages == null ? 0 : statusMessages.hashCode) +
        (errorMessage == null ? 0 : errorMessage.hashCode) +
        (downloadId == null ? 0 : downloadId.hashCode) +
        protocol.hashCode +
        (downloadClient == null ? 0 : downloadClient.hashCode) +
        downloadClientHasPostImportCategory.hashCode +
        (indexer == null ? 0 : indexer.hashCode) +
        (outputPath == null ? 0 : outputPath.hashCode) +
        episodeHasFile.hashCode +
        sizeleft.hashCode +
        (timeleft == null ? 0 : timeleft.hashCode);

  factory QueueResource.fromJson(Map<String, dynamic> json) => _$QueueResourceFromJson(json);

  Map<String, dynamic> toJson() => _$QueueResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

