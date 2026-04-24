//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/client_capabilities_dto.dart';
import 'package:jelly_api/lib/model/player_state_info.dart';
import 'package:jelly_api/lib/model/queue_item.dart';
import 'package:jelly_api/lib/model/session_user_info.dart';
import 'package:jelly_api/lib/model/base_item_dto.dart';
import 'package:jelly_api/lib/model/general_command_type.dart';
import 'package:jelly_api/lib/model/media_type.dart';
import 'package:jelly_api/lib/model/transcoding_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'session_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SessionInfoDto {
  /// Returns a new [SessionInfoDto] instance.
  SessionInfoDto({

     this.playState,

     this.additionalUsers,

     this.capabilities,

     this.remoteEndPoint,

     this.playableMediaTypes,

     this.id,

     this.userId,

     this.userName,

     this.client,

     this.lastActivityDate,

     this.lastPlaybackCheckIn,

     this.lastPausedDate,

     this.deviceName,

     this.deviceType,

     this.nowPlayingItem,

     this.nowViewingItem,

     this.deviceId,

     this.applicationVersion,

     this.transcodingInfo,

     this.isActive,

     this.supportsMediaControl,

     this.supportsRemoteControl,

     this.nowPlayingQueue,

     this.nowPlayingQueueFullItems,

     this.hasCustomDeviceName,

     this.playlistItemId,

     this.serverId,

     this.userPrimaryImageTag,

     this.supportedCommands,
  });

      /// Gets or sets the play state.
  @JsonKey(
    
    name: r'PlayState',
    required: false,
    includeIfNull: false,
  )


  final PlayerStateInfo? playState;



      /// Gets or sets the additional users.
  @JsonKey(
    
    name: r'AdditionalUsers',
    required: false,
    includeIfNull: false,
  )


  final List<SessionUserInfo>? additionalUsers;



      /// Gets or sets the client capabilities.
  @JsonKey(
    
    name: r'Capabilities',
    required: false,
    includeIfNull: false,
  )


  final ClientCapabilitiesDto? capabilities;



      /// Gets or sets the remote end point.
  @JsonKey(
    
    name: r'RemoteEndPoint',
    required: false,
    includeIfNull: false,
  )


  final String? remoteEndPoint;



      /// Gets or sets the playable media types.
  @JsonKey(
    
    name: r'PlayableMediaTypes',
    required: false,
    includeIfNull: false,
  )


  final List<MediaType>? playableMediaTypes;



      /// Gets or sets the id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the user id.
  @JsonKey(
    
    name: r'UserId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Gets or sets the username.
  @JsonKey(
    
    name: r'UserName',
    required: false,
    includeIfNull: false,
  )


  final String? userName;



      /// Gets or sets the type of the client.
  @JsonKey(
    
    name: r'Client',
    required: false,
    includeIfNull: false,
  )


  final String? client;



      /// Gets or sets the last activity date.
  @JsonKey(
    
    name: r'LastActivityDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastActivityDate;



      /// Gets or sets the last playback check in.
  @JsonKey(
    
    name: r'LastPlaybackCheckIn',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastPlaybackCheckIn;



      /// Gets or sets the last paused date.
  @JsonKey(
    
    name: r'LastPausedDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastPausedDate;



      /// Gets or sets the name of the device.
  @JsonKey(
    
    name: r'DeviceName',
    required: false,
    includeIfNull: false,
  )


  final String? deviceName;



      /// Gets or sets the type of the device.
  @JsonKey(
    
    name: r'DeviceType',
    required: false,
    includeIfNull: false,
  )


  final String? deviceType;



      /// Gets or sets the now playing item.
  @JsonKey(
    
    name: r'NowPlayingItem',
    required: false,
    includeIfNull: false,
  )


  final BaseItemDto? nowPlayingItem;



      /// Gets or sets the now viewing item.
  @JsonKey(
    
    name: r'NowViewingItem',
    required: false,
    includeIfNull: false,
  )


  final BaseItemDto? nowViewingItem;



      /// Gets or sets the device id.
  @JsonKey(
    
    name: r'DeviceId',
    required: false,
    includeIfNull: false,
  )


  final String? deviceId;



      /// Gets or sets the application version.
  @JsonKey(
    
    name: r'ApplicationVersion',
    required: false,
    includeIfNull: false,
  )


  final String? applicationVersion;



      /// Gets or sets the transcoding info.
  @JsonKey(
    
    name: r'TranscodingInfo',
    required: false,
    includeIfNull: false,
  )


  final TranscodingInfo? transcodingInfo;



      /// Gets or sets a value indicating whether this session is active.
  @JsonKey(
    
    name: r'IsActive',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// Gets or sets a value indicating whether the session supports media control.
  @JsonKey(
    
    name: r'SupportsMediaControl',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsMediaControl;



      /// Gets or sets a value indicating whether the session supports remote control.
  @JsonKey(
    
    name: r'SupportsRemoteControl',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsRemoteControl;



      /// Gets or sets the now playing queue.
  @JsonKey(
    
    name: r'NowPlayingQueue',
    required: false,
    includeIfNull: false,
  )


  final List<QueueItem>? nowPlayingQueue;



      /// Gets or sets the now playing queue full items.
  @JsonKey(
    
    name: r'NowPlayingQueueFullItems',
    required: false,
    includeIfNull: false,
  )


  final List<BaseItemDto>? nowPlayingQueueFullItems;



      /// Gets or sets a value indicating whether the session has a custom device name.
  @JsonKey(
    
    name: r'HasCustomDeviceName',
    required: false,
    includeIfNull: false,
  )


  final bool? hasCustomDeviceName;



      /// Gets or sets the playlist item id.
  @JsonKey(
    
    name: r'PlaylistItemId',
    required: false,
    includeIfNull: false,
  )


  final String? playlistItemId;



      /// Gets or sets the server id.
  @JsonKey(
    
    name: r'ServerId',
    required: false,
    includeIfNull: false,
  )


  final String? serverId;



      /// Gets or sets the user primary image tag.
  @JsonKey(
    
    name: r'UserPrimaryImageTag',
    required: false,
    includeIfNull: false,
  )


  final String? userPrimaryImageTag;



      /// Gets or sets the supported commands.
  @JsonKey(
    
    name: r'SupportedCommands',
    required: false,
    includeIfNull: false,
  )


  final List<GeneralCommandType>? supportedCommands;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SessionInfoDto &&
      other.playState == playState &&
      other.additionalUsers == additionalUsers &&
      other.capabilities == capabilities &&
      other.remoteEndPoint == remoteEndPoint &&
      other.playableMediaTypes == playableMediaTypes &&
      other.id == id &&
      other.userId == userId &&
      other.userName == userName &&
      other.client == client &&
      other.lastActivityDate == lastActivityDate &&
      other.lastPlaybackCheckIn == lastPlaybackCheckIn &&
      other.lastPausedDate == lastPausedDate &&
      other.deviceName == deviceName &&
      other.deviceType == deviceType &&
      other.nowPlayingItem == nowPlayingItem &&
      other.nowViewingItem == nowViewingItem &&
      other.deviceId == deviceId &&
      other.applicationVersion == applicationVersion &&
      other.transcodingInfo == transcodingInfo &&
      other.isActive == isActive &&
      other.supportsMediaControl == supportsMediaControl &&
      other.supportsRemoteControl == supportsRemoteControl &&
      other.nowPlayingQueue == nowPlayingQueue &&
      other.nowPlayingQueueFullItems == nowPlayingQueueFullItems &&
      other.hasCustomDeviceName == hasCustomDeviceName &&
      other.playlistItemId == playlistItemId &&
      other.serverId == serverId &&
      other.userPrimaryImageTag == userPrimaryImageTag &&
      other.supportedCommands == supportedCommands;

    @override
    int get hashCode =>
        (playState == null ? 0 : playState.hashCode) +
        (additionalUsers == null ? 0 : additionalUsers.hashCode) +
        (capabilities == null ? 0 : capabilities.hashCode) +
        (remoteEndPoint == null ? 0 : remoteEndPoint.hashCode) +
        playableMediaTypes.hashCode +
        (id == null ? 0 : id.hashCode) +
        userId.hashCode +
        (userName == null ? 0 : userName.hashCode) +
        (client == null ? 0 : client.hashCode) +
        lastActivityDate.hashCode +
        lastPlaybackCheckIn.hashCode +
        (lastPausedDate == null ? 0 : lastPausedDate.hashCode) +
        (deviceName == null ? 0 : deviceName.hashCode) +
        (deviceType == null ? 0 : deviceType.hashCode) +
        (nowPlayingItem == null ? 0 : nowPlayingItem.hashCode) +
        (nowViewingItem == null ? 0 : nowViewingItem.hashCode) +
        (deviceId == null ? 0 : deviceId.hashCode) +
        (applicationVersion == null ? 0 : applicationVersion.hashCode) +
        (transcodingInfo == null ? 0 : transcodingInfo.hashCode) +
        isActive.hashCode +
        supportsMediaControl.hashCode +
        supportsRemoteControl.hashCode +
        (nowPlayingQueue == null ? 0 : nowPlayingQueue.hashCode) +
        (nowPlayingQueueFullItems == null ? 0 : nowPlayingQueueFullItems.hashCode) +
        hasCustomDeviceName.hashCode +
        (playlistItemId == null ? 0 : playlistItemId.hashCode) +
        (serverId == null ? 0 : serverId.hashCode) +
        (userPrimaryImageTag == null ? 0 : userPrimaryImageTag.hashCode) +
        supportedCommands.hashCode;

  factory SessionInfoDto.fromJson(Map<String, dynamic> json) => _$SessionInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SessionInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

