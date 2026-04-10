//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/unrated_item.dart';
import 'package:jelly_api/lib/model/sync_play_user_access_type.dart';
import 'package:jelly_api/lib/model/access_schedule.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_policy.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserPolicy {
  /// Returns a new [UserPolicy] instance.
  UserPolicy({

     this.isAdministrator,

     this.isHidden,

     this.enableCollectionManagement = false,

     this.enableSubtitleManagement = false,

     this.enableLyricManagement = false,

     this.isDisabled,

     this.maxParentalRating,

     this.maxParentalSubRating,

     this.blockedTags,

     this.allowedTags,

     this.enableUserPreferenceAccess,

     this.accessSchedules,

     this.blockUnratedItems,

     this.enableRemoteControlOfOtherUsers,

     this.enableSharedDeviceControl,

     this.enableRemoteAccess,

     this.enableLiveTvManagement,

     this.enableLiveTvAccess,

     this.enableMediaPlayback,

     this.enableAudioPlaybackTranscoding,

     this.enableVideoPlaybackTranscoding,

     this.enablePlaybackRemuxing,

     this.forceRemoteSourceTranscoding,

     this.enableContentDeletion,

     this.enableContentDeletionFromFolders,

     this.enableContentDownloading,

     this.enableSyncTranscoding,

     this.enableMediaConversion,

     this.enabledDevices,

     this.enableAllDevices,

     this.enabledChannels,

     this.enableAllChannels,

     this.enabledFolders,

     this.enableAllFolders,

     this.invalidLoginAttemptCount,

     this.loginAttemptsBeforeLockout,

     this.maxActiveSessions,

     this.enablePublicSharing,

     this.blockedMediaFolders,

     this.blockedChannels,

     this.remoteClientBitrateLimit,

    required  this.authenticationProviderId,

    required  this.passwordResetProviderId,

     this.syncPlayAccess,
  });

      /// Gets or sets a value indicating whether this instance is administrator.
  @JsonKey(
    
    name: r'IsAdministrator',
    required: false,
    includeIfNull: false,
  )


  final bool? isAdministrator;



      /// Gets or sets a value indicating whether this instance is hidden.
  @JsonKey(
    
    name: r'IsHidden',
    required: false,
    includeIfNull: false,
  )


  final bool? isHidden;



      /// Gets or sets a value indicating whether this instance can manage collections.
  @JsonKey(
    defaultValue: false,
    name: r'EnableCollectionManagement',
    required: false,
    includeIfNull: false,
  )


  final bool? enableCollectionManagement;



      /// Gets or sets a value indicating whether this instance can manage subtitles.
  @JsonKey(
    defaultValue: false,
    name: r'EnableSubtitleManagement',
    required: false,
    includeIfNull: false,
  )


  final bool? enableSubtitleManagement;



      /// Gets or sets a value indicating whether this user can manage lyrics.
  @JsonKey(
    defaultValue: false,
    name: r'EnableLyricManagement',
    required: false,
    includeIfNull: false,
  )


  final bool? enableLyricManagement;



      /// Gets or sets a value indicating whether this instance is disabled.
  @JsonKey(
    
    name: r'IsDisabled',
    required: false,
    includeIfNull: false,
  )


  final bool? isDisabled;



      /// Gets or sets the max parental rating.
  @JsonKey(
    
    name: r'MaxParentalRating',
    required: false,
    includeIfNull: false,
  )


  final int? maxParentalRating;



  @JsonKey(
    
    name: r'MaxParentalSubRating',
    required: false,
    includeIfNull: false,
  )


  final int? maxParentalSubRating;



  @JsonKey(
    
    name: r'BlockedTags',
    required: false,
    includeIfNull: false,
  )


  final List<String>? blockedTags;



  @JsonKey(
    
    name: r'AllowedTags',
    required: false,
    includeIfNull: false,
  )


  final List<String>? allowedTags;



  @JsonKey(
    
    name: r'EnableUserPreferenceAccess',
    required: false,
    includeIfNull: false,
  )


  final bool? enableUserPreferenceAccess;



  @JsonKey(
    
    name: r'AccessSchedules',
    required: false,
    includeIfNull: false,
  )


  final List<AccessSchedule>? accessSchedules;



  @JsonKey(
    
    name: r'BlockUnratedItems',
    required: false,
    includeIfNull: false,
  )


  final List<UnratedItem>? blockUnratedItems;



  @JsonKey(
    
    name: r'EnableRemoteControlOfOtherUsers',
    required: false,
    includeIfNull: false,
  )


  final bool? enableRemoteControlOfOtherUsers;



  @JsonKey(
    
    name: r'EnableSharedDeviceControl',
    required: false,
    includeIfNull: false,
  )


  final bool? enableSharedDeviceControl;



  @JsonKey(
    
    name: r'EnableRemoteAccess',
    required: false,
    includeIfNull: false,
  )


  final bool? enableRemoteAccess;



  @JsonKey(
    
    name: r'EnableLiveTvManagement',
    required: false,
    includeIfNull: false,
  )


  final bool? enableLiveTvManagement;



  @JsonKey(
    
    name: r'EnableLiveTvAccess',
    required: false,
    includeIfNull: false,
  )


  final bool? enableLiveTvAccess;



  @JsonKey(
    
    name: r'EnableMediaPlayback',
    required: false,
    includeIfNull: false,
  )


  final bool? enableMediaPlayback;



  @JsonKey(
    
    name: r'EnableAudioPlaybackTranscoding',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAudioPlaybackTranscoding;



  @JsonKey(
    
    name: r'EnableVideoPlaybackTranscoding',
    required: false,
    includeIfNull: false,
  )


  final bool? enableVideoPlaybackTranscoding;



  @JsonKey(
    
    name: r'EnablePlaybackRemuxing',
    required: false,
    includeIfNull: false,
  )


  final bool? enablePlaybackRemuxing;



  @JsonKey(
    
    name: r'ForceRemoteSourceTranscoding',
    required: false,
    includeIfNull: false,
  )


  final bool? forceRemoteSourceTranscoding;



  @JsonKey(
    
    name: r'EnableContentDeletion',
    required: false,
    includeIfNull: false,
  )


  final bool? enableContentDeletion;



  @JsonKey(
    
    name: r'EnableContentDeletionFromFolders',
    required: false,
    includeIfNull: false,
  )


  final List<String>? enableContentDeletionFromFolders;



  @JsonKey(
    
    name: r'EnableContentDownloading',
    required: false,
    includeIfNull: false,
  )


  final bool? enableContentDownloading;



      /// Gets or sets a value indicating whether [enable synchronize].
  @JsonKey(
    
    name: r'EnableSyncTranscoding',
    required: false,
    includeIfNull: false,
  )


  final bool? enableSyncTranscoding;



  @JsonKey(
    
    name: r'EnableMediaConversion',
    required: false,
    includeIfNull: false,
  )


  final bool? enableMediaConversion;



  @JsonKey(
    
    name: r'EnabledDevices',
    required: false,
    includeIfNull: false,
  )


  final List<String>? enabledDevices;



  @JsonKey(
    
    name: r'EnableAllDevices',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAllDevices;



  @JsonKey(
    
    name: r'EnabledChannels',
    required: false,
    includeIfNull: false,
  )


  final List<String>? enabledChannels;



  @JsonKey(
    
    name: r'EnableAllChannels',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAllChannels;



  @JsonKey(
    
    name: r'EnabledFolders',
    required: false,
    includeIfNull: false,
  )


  final List<String>? enabledFolders;



  @JsonKey(
    
    name: r'EnableAllFolders',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAllFolders;



  @JsonKey(
    
    name: r'InvalidLoginAttemptCount',
    required: false,
    includeIfNull: false,
  )


  final int? invalidLoginAttemptCount;



  @JsonKey(
    
    name: r'LoginAttemptsBeforeLockout',
    required: false,
    includeIfNull: false,
  )


  final int? loginAttemptsBeforeLockout;



  @JsonKey(
    
    name: r'MaxActiveSessions',
    required: false,
    includeIfNull: false,
  )


  final int? maxActiveSessions;



  @JsonKey(
    
    name: r'EnablePublicSharing',
    required: false,
    includeIfNull: false,
  )


  final bool? enablePublicSharing;



  @JsonKey(
    
    name: r'BlockedMediaFolders',
    required: false,
    includeIfNull: false,
  )


  final List<String>? blockedMediaFolders;



  @JsonKey(
    
    name: r'BlockedChannels',
    required: false,
    includeIfNull: false,
  )


  final List<String>? blockedChannels;



  @JsonKey(
    
    name: r'RemoteClientBitrateLimit',
    required: false,
    includeIfNull: false,
  )


  final int? remoteClientBitrateLimit;



  @JsonKey(
    
    name: r'AuthenticationProviderId',
    required: true,
    includeIfNull: false,
  )


  final String authenticationProviderId;



  @JsonKey(
    
    name: r'PasswordResetProviderId',
    required: true,
    includeIfNull: false,
  )


  final String passwordResetProviderId;



      /// Gets or sets a value indicating what SyncPlay features the user can access.
  @JsonKey(
    
    name: r'SyncPlayAccess',
    required: false,
    includeIfNull: false,
  )


  final SyncPlayUserAccessType? syncPlayAccess;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserPolicy &&
      other.isAdministrator == isAdministrator &&
      other.isHidden == isHidden &&
      other.enableCollectionManagement == enableCollectionManagement &&
      other.enableSubtitleManagement == enableSubtitleManagement &&
      other.enableLyricManagement == enableLyricManagement &&
      other.isDisabled == isDisabled &&
      other.maxParentalRating == maxParentalRating &&
      other.maxParentalSubRating == maxParentalSubRating &&
      other.blockedTags == blockedTags &&
      other.allowedTags == allowedTags &&
      other.enableUserPreferenceAccess == enableUserPreferenceAccess &&
      other.accessSchedules == accessSchedules &&
      other.blockUnratedItems == blockUnratedItems &&
      other.enableRemoteControlOfOtherUsers == enableRemoteControlOfOtherUsers &&
      other.enableSharedDeviceControl == enableSharedDeviceControl &&
      other.enableRemoteAccess == enableRemoteAccess &&
      other.enableLiveTvManagement == enableLiveTvManagement &&
      other.enableLiveTvAccess == enableLiveTvAccess &&
      other.enableMediaPlayback == enableMediaPlayback &&
      other.enableAudioPlaybackTranscoding == enableAudioPlaybackTranscoding &&
      other.enableVideoPlaybackTranscoding == enableVideoPlaybackTranscoding &&
      other.enablePlaybackRemuxing == enablePlaybackRemuxing &&
      other.forceRemoteSourceTranscoding == forceRemoteSourceTranscoding &&
      other.enableContentDeletion == enableContentDeletion &&
      other.enableContentDeletionFromFolders == enableContentDeletionFromFolders &&
      other.enableContentDownloading == enableContentDownloading &&
      other.enableSyncTranscoding == enableSyncTranscoding &&
      other.enableMediaConversion == enableMediaConversion &&
      other.enabledDevices == enabledDevices &&
      other.enableAllDevices == enableAllDevices &&
      other.enabledChannels == enabledChannels &&
      other.enableAllChannels == enableAllChannels &&
      other.enabledFolders == enabledFolders &&
      other.enableAllFolders == enableAllFolders &&
      other.invalidLoginAttemptCount == invalidLoginAttemptCount &&
      other.loginAttemptsBeforeLockout == loginAttemptsBeforeLockout &&
      other.maxActiveSessions == maxActiveSessions &&
      other.enablePublicSharing == enablePublicSharing &&
      other.blockedMediaFolders == blockedMediaFolders &&
      other.blockedChannels == blockedChannels &&
      other.remoteClientBitrateLimit == remoteClientBitrateLimit &&
      other.authenticationProviderId == authenticationProviderId &&
      other.passwordResetProviderId == passwordResetProviderId &&
      other.syncPlayAccess == syncPlayAccess;

    @override
    int get hashCode =>
        isAdministrator.hashCode +
        isHidden.hashCode +
        enableCollectionManagement.hashCode +
        enableSubtitleManagement.hashCode +
        enableLyricManagement.hashCode +
        isDisabled.hashCode +
        (maxParentalRating == null ? 0 : maxParentalRating.hashCode) +
        (maxParentalSubRating == null ? 0 : maxParentalSubRating.hashCode) +
        (blockedTags == null ? 0 : blockedTags.hashCode) +
        (allowedTags == null ? 0 : allowedTags.hashCode) +
        enableUserPreferenceAccess.hashCode +
        (accessSchedules == null ? 0 : accessSchedules.hashCode) +
        (blockUnratedItems == null ? 0 : blockUnratedItems.hashCode) +
        enableRemoteControlOfOtherUsers.hashCode +
        enableSharedDeviceControl.hashCode +
        enableRemoteAccess.hashCode +
        enableLiveTvManagement.hashCode +
        enableLiveTvAccess.hashCode +
        enableMediaPlayback.hashCode +
        enableAudioPlaybackTranscoding.hashCode +
        enableVideoPlaybackTranscoding.hashCode +
        enablePlaybackRemuxing.hashCode +
        forceRemoteSourceTranscoding.hashCode +
        enableContentDeletion.hashCode +
        (enableContentDeletionFromFolders == null ? 0 : enableContentDeletionFromFolders.hashCode) +
        enableContentDownloading.hashCode +
        enableSyncTranscoding.hashCode +
        enableMediaConversion.hashCode +
        (enabledDevices == null ? 0 : enabledDevices.hashCode) +
        enableAllDevices.hashCode +
        (enabledChannels == null ? 0 : enabledChannels.hashCode) +
        enableAllChannels.hashCode +
        (enabledFolders == null ? 0 : enabledFolders.hashCode) +
        enableAllFolders.hashCode +
        invalidLoginAttemptCount.hashCode +
        loginAttemptsBeforeLockout.hashCode +
        maxActiveSessions.hashCode +
        enablePublicSharing.hashCode +
        (blockedMediaFolders == null ? 0 : blockedMediaFolders.hashCode) +
        (blockedChannels == null ? 0 : blockedChannels.hashCode) +
        remoteClientBitrateLimit.hashCode +
        authenticationProviderId.hashCode +
        passwordResetProviderId.hashCode +
        syncPlayAccess.hashCode;

  factory UserPolicy.fromJson(Map<String, dynamic> json) => _$UserPolicyFromJson(json);

  Map<String, dynamic> toJson() => _$UserPolicyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

