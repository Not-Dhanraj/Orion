//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/day_pattern.dart';
import 'package:jelly_api/lib/model/keep_until.dart';
import 'package:jelly_api/lib/model/day_of_week.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'series_timer_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SeriesTimerInfoDto {
  /// Returns a new [SeriesTimerInfoDto] instance.
  SeriesTimerInfoDto({

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

     this.recordAnyTime,

     this.skipEpisodesInLibrary,

     this.recordAnyChannel,

     this.keepUpTo,

     this.recordNewOnly,

     this.days,

     this.dayPattern,

     this.imageTags,

     this.parentThumbItemId,

     this.parentThumbImageTag,

     this.parentPrimaryImageItemId,

     this.parentPrimaryImageTag,
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



      /// Gets or sets a value indicating whether [record any time].
  @JsonKey(
    
    name: r'RecordAnyTime',
    required: false,
    includeIfNull: false,
  )


  final bool? recordAnyTime;



  @JsonKey(
    
    name: r'SkipEpisodesInLibrary',
    required: false,
    includeIfNull: false,
  )


  final bool? skipEpisodesInLibrary;



      /// Gets or sets a value indicating whether [record any channel].
  @JsonKey(
    
    name: r'RecordAnyChannel',
    required: false,
    includeIfNull: false,
  )


  final bool? recordAnyChannel;



  @JsonKey(
    
    name: r'KeepUpTo',
    required: false,
    includeIfNull: false,
  )


  final int? keepUpTo;



      /// Gets or sets a value indicating whether [record new only].
  @JsonKey(
    
    name: r'RecordNewOnly',
    required: false,
    includeIfNull: false,
  )


  final bool? recordNewOnly;



      /// Gets or sets the days.
  @JsonKey(
    
    name: r'Days',
    required: false,
    includeIfNull: false,
  )


  final List<DayOfWeek>? days;



      /// Gets or sets the day pattern.
  @JsonKey(
    
    name: r'DayPattern',
    required: false,
    includeIfNull: false,
  )


  final DayPattern? dayPattern;



      /// Gets or sets the image tags.
  @JsonKey(
    
    name: r'ImageTags',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? imageTags;



      /// Gets or sets the parent thumb item id.
  @JsonKey(
    
    name: r'ParentThumbItemId',
    required: false,
    includeIfNull: false,
  )


  final String? parentThumbItemId;



      /// Gets or sets the parent thumb image tag.
  @JsonKey(
    
    name: r'ParentThumbImageTag',
    required: false,
    includeIfNull: false,
  )


  final String? parentThumbImageTag;



      /// Gets or sets the parent primary image item identifier.
  @JsonKey(
    
    name: r'ParentPrimaryImageItemId',
    required: false,
    includeIfNull: false,
  )


  final String? parentPrimaryImageItemId;



      /// Gets or sets the parent primary image tag.
  @JsonKey(
    
    name: r'ParentPrimaryImageTag',
    required: false,
    includeIfNull: false,
  )


  final String? parentPrimaryImageTag;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SeriesTimerInfoDto &&
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
      other.recordAnyTime == recordAnyTime &&
      other.skipEpisodesInLibrary == skipEpisodesInLibrary &&
      other.recordAnyChannel == recordAnyChannel &&
      other.keepUpTo == keepUpTo &&
      other.recordNewOnly == recordNewOnly &&
      other.days == days &&
      other.dayPattern == dayPattern &&
      other.imageTags == imageTags &&
      other.parentThumbItemId == parentThumbItemId &&
      other.parentThumbImageTag == parentThumbImageTag &&
      other.parentPrimaryImageItemId == parentPrimaryImageItemId &&
      other.parentPrimaryImageTag == parentPrimaryImageTag;

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
        recordAnyTime.hashCode +
        skipEpisodesInLibrary.hashCode +
        recordAnyChannel.hashCode +
        keepUpTo.hashCode +
        recordNewOnly.hashCode +
        (days == null ? 0 : days.hashCode) +
        (dayPattern == null ? 0 : dayPattern.hashCode) +
        (imageTags == null ? 0 : imageTags.hashCode) +
        (parentThumbItemId == null ? 0 : parentThumbItemId.hashCode) +
        (parentThumbImageTag == null ? 0 : parentThumbImageTag.hashCode) +
        (parentPrimaryImageItemId == null ? 0 : parentPrimaryImageItemId.hashCode) +
        (parentPrimaryImageTag == null ? 0 : parentPrimaryImageTag.hashCode);

  factory SeriesTimerInfoDto.fromJson(Map<String, dynamic> json) => _$SeriesTimerInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesTimerInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

