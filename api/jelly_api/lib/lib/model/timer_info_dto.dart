//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/keep_until.dart';
import 'package:jelly_api/lib/model/recording_status.dart';
import 'package:jelly_api/lib/model/base_item_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timer_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TimerInfoDto {
  /// Returns a new [TimerInfoDto] instance.
  TimerInfoDto({

     this.id,

     this.type,

     this.serverId,

     this.externalId,

     this.channelId,

     this.externalChannelId,

     this.channelName,

     this.channelPrimaryImageTag,

     this.programId,

     this.externalProgramId,

     this.name,

     this.overview,

     this.startDate,

     this.endDate,

     this.serviceName,

     this.priority,

     this.prePaddingSeconds,

     this.postPaddingSeconds,

     this.isPrePaddingRequired,

     this.parentBackdropItemId,

     this.parentBackdropImageTags,

     this.isPostPaddingRequired,

     this.keepUntil,

     this.status,

     this.seriesTimerId,

     this.externalSeriesTimerId,

     this.runTimeTicks,

     this.programInfo,
  });

      /// Gets or sets the Id of the recording.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final String? type;



      /// Gets or sets the server identifier.
  @JsonKey(
    
    name: r'ServerId',
    required: false,
    includeIfNull: false,
  )


  final String? serverId;



      /// Gets or sets the external identifier.
  @JsonKey(
    
    name: r'ExternalId',
    required: false,
    includeIfNull: false,
  )


  final String? externalId;



      /// Gets or sets the channel id of the recording.
  @JsonKey(
    
    name: r'ChannelId',
    required: false,
    includeIfNull: false,
  )


  final String? channelId;



      /// Gets or sets the external channel identifier.
  @JsonKey(
    
    name: r'ExternalChannelId',
    required: false,
    includeIfNull: false,
  )


  final String? externalChannelId;



      /// Gets or sets the channel name of the recording.
  @JsonKey(
    
    name: r'ChannelName',
    required: false,
    includeIfNull: false,
  )


  final String? channelName;



  @JsonKey(
    
    name: r'ChannelPrimaryImageTag',
    required: false,
    includeIfNull: false,
  )


  final String? channelPrimaryImageTag;



      /// Gets or sets the program identifier.
  @JsonKey(
    
    name: r'ProgramId',
    required: false,
    includeIfNull: false,
  )


  final String? programId;



      /// Gets or sets the external program identifier.
  @JsonKey(
    
    name: r'ExternalProgramId',
    required: false,
    includeIfNull: false,
  )


  final String? externalProgramId;



      /// Gets or sets the name of the recording.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the description of the recording.
  @JsonKey(
    
    name: r'Overview',
    required: false,
    includeIfNull: false,
  )


  final String? overview;



      /// Gets or sets the start date of the recording, in UTC.
  @JsonKey(
    
    name: r'StartDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startDate;



      /// Gets or sets the end date of the recording, in UTC.
  @JsonKey(
    
    name: r'EndDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endDate;



      /// Gets or sets the name of the service.
  @JsonKey(
    
    name: r'ServiceName',
    required: false,
    includeIfNull: false,
  )


  final String? serviceName;



      /// Gets or sets the priority.
  @JsonKey(
    
    name: r'Priority',
    required: false,
    includeIfNull: false,
  )


  final int? priority;



      /// Gets or sets the pre padding seconds.
  @JsonKey(
    
    name: r'PrePaddingSeconds',
    required: false,
    includeIfNull: false,
  )


  final int? prePaddingSeconds;



      /// Gets or sets the post padding seconds.
  @JsonKey(
    
    name: r'PostPaddingSeconds',
    required: false,
    includeIfNull: false,
  )


  final int? postPaddingSeconds;



      /// Gets or sets a value indicating whether this instance is pre padding required.
  @JsonKey(
    
    name: r'IsPrePaddingRequired',
    required: false,
    includeIfNull: false,
  )


  final bool? isPrePaddingRequired;



      /// Gets or sets the Id of the Parent that has a backdrop if the item does not have one.
  @JsonKey(
    
    name: r'ParentBackdropItemId',
    required: false,
    includeIfNull: false,
  )


  final String? parentBackdropItemId;



      /// Gets or sets the parent backdrop image tags.
  @JsonKey(
    
    name: r'ParentBackdropImageTags',
    required: false,
    includeIfNull: false,
  )


  final List<String>? parentBackdropImageTags;



      /// Gets or sets a value indicating whether this instance is post padding required.
  @JsonKey(
    
    name: r'IsPostPaddingRequired',
    required: false,
    includeIfNull: false,
  )


  final bool? isPostPaddingRequired;



  @JsonKey(
    
    name: r'KeepUntil',
    required: false,
    includeIfNull: false,
  )


  final KeepUntil? keepUntil;



      /// Gets or sets the status.
  @JsonKey(
    
    name: r'Status',
    required: false,
    includeIfNull: false,
  )


  final RecordingStatus? status;



      /// Gets or sets the series timer identifier.
  @JsonKey(
    
    name: r'SeriesTimerId',
    required: false,
    includeIfNull: false,
  )


  final String? seriesTimerId;



      /// Gets or sets the external series timer identifier.
  @JsonKey(
    
    name: r'ExternalSeriesTimerId',
    required: false,
    includeIfNull: false,
  )


  final String? externalSeriesTimerId;



      /// Gets or sets the run time ticks.
  @JsonKey(
    
    name: r'RunTimeTicks',
    required: false,
    includeIfNull: false,
  )


  final int? runTimeTicks;



      /// Gets or sets the program information.
  @JsonKey(
    
    name: r'ProgramInfo',
    required: false,
    includeIfNull: false,
  )


  final BaseItemDto? programInfo;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TimerInfoDto &&
      other.id == id &&
      other.type == type &&
      other.serverId == serverId &&
      other.externalId == externalId &&
      other.channelId == channelId &&
      other.externalChannelId == externalChannelId &&
      other.channelName == channelName &&
      other.channelPrimaryImageTag == channelPrimaryImageTag &&
      other.programId == programId &&
      other.externalProgramId == externalProgramId &&
      other.name == name &&
      other.overview == overview &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.serviceName == serviceName &&
      other.priority == priority &&
      other.prePaddingSeconds == prePaddingSeconds &&
      other.postPaddingSeconds == postPaddingSeconds &&
      other.isPrePaddingRequired == isPrePaddingRequired &&
      other.parentBackdropItemId == parentBackdropItemId &&
      other.parentBackdropImageTags == parentBackdropImageTags &&
      other.isPostPaddingRequired == isPostPaddingRequired &&
      other.keepUntil == keepUntil &&
      other.status == status &&
      other.seriesTimerId == seriesTimerId &&
      other.externalSeriesTimerId == externalSeriesTimerId &&
      other.runTimeTicks == runTimeTicks &&
      other.programInfo == programInfo;

    @override
    int get hashCode =>
        (id == null ? 0 : id.hashCode) +
        (type == null ? 0 : type.hashCode) +
        (serverId == null ? 0 : serverId.hashCode) +
        (externalId == null ? 0 : externalId.hashCode) +
        channelId.hashCode +
        (externalChannelId == null ? 0 : externalChannelId.hashCode) +
        (channelName == null ? 0 : channelName.hashCode) +
        (channelPrimaryImageTag == null ? 0 : channelPrimaryImageTag.hashCode) +
        (programId == null ? 0 : programId.hashCode) +
        (externalProgramId == null ? 0 : externalProgramId.hashCode) +
        (name == null ? 0 : name.hashCode) +
        (overview == null ? 0 : overview.hashCode) +
        startDate.hashCode +
        endDate.hashCode +
        (serviceName == null ? 0 : serviceName.hashCode) +
        priority.hashCode +
        prePaddingSeconds.hashCode +
        postPaddingSeconds.hashCode +
        isPrePaddingRequired.hashCode +
        (parentBackdropItemId == null ? 0 : parentBackdropItemId.hashCode) +
        (parentBackdropImageTags == null ? 0 : parentBackdropImageTags.hashCode) +
        isPostPaddingRequired.hashCode +
        keepUntil.hashCode +
        status.hashCode +
        (seriesTimerId == null ? 0 : seriesTimerId.hashCode) +
        (externalSeriesTimerId == null ? 0 : externalSeriesTimerId.hashCode) +
        (runTimeTicks == null ? 0 : runTimeTicks.hashCode) +
        (programInfo == null ? 0 : programInfo.hashCode);

  factory TimerInfoDto.fromJson(Map<String, dynamic> json) => _$TimerInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TimerInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

