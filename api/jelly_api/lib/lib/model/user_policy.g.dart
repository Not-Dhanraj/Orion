// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_policy.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserPolicyCWProxy {
  UserPolicy isAdministrator(bool? isAdministrator);

  UserPolicy isHidden(bool? isHidden);

  UserPolicy enableCollectionManagement(bool? enableCollectionManagement);

  UserPolicy enableSubtitleManagement(bool? enableSubtitleManagement);

  UserPolicy enableLyricManagement(bool? enableLyricManagement);

  UserPolicy isDisabled(bool? isDisabled);

  UserPolicy maxParentalRating(int? maxParentalRating);

  UserPolicy maxParentalSubRating(int? maxParentalSubRating);

  UserPolicy blockedTags(List<String>? blockedTags);

  UserPolicy allowedTags(List<String>? allowedTags);

  UserPolicy enableUserPreferenceAccess(bool? enableUserPreferenceAccess);

  UserPolicy accessSchedules(List<AccessSchedule>? accessSchedules);

  UserPolicy blockUnratedItems(List<UnratedItem>? blockUnratedItems);

  UserPolicy enableRemoteControlOfOtherUsers(
    bool? enableRemoteControlOfOtherUsers,
  );

  UserPolicy enableSharedDeviceControl(bool? enableSharedDeviceControl);

  UserPolicy enableRemoteAccess(bool? enableRemoteAccess);

  UserPolicy enableLiveTvManagement(bool? enableLiveTvManagement);

  UserPolicy enableLiveTvAccess(bool? enableLiveTvAccess);

  UserPolicy enableMediaPlayback(bool? enableMediaPlayback);

  UserPolicy enableAudioPlaybackTranscoding(
    bool? enableAudioPlaybackTranscoding,
  );

  UserPolicy enableVideoPlaybackTranscoding(
    bool? enableVideoPlaybackTranscoding,
  );

  UserPolicy enablePlaybackRemuxing(bool? enablePlaybackRemuxing);

  UserPolicy forceRemoteSourceTranscoding(bool? forceRemoteSourceTranscoding);

  UserPolicy enableContentDeletion(bool? enableContentDeletion);

  UserPolicy enableContentDeletionFromFolders(
    List<String>? enableContentDeletionFromFolders,
  );

  UserPolicy enableContentDownloading(bool? enableContentDownloading);

  UserPolicy enableSyncTranscoding(bool? enableSyncTranscoding);

  UserPolicy enableMediaConversion(bool? enableMediaConversion);

  UserPolicy enabledDevices(List<String>? enabledDevices);

  UserPolicy enableAllDevices(bool? enableAllDevices);

  UserPolicy enabledChannels(List<String>? enabledChannels);

  UserPolicy enableAllChannels(bool? enableAllChannels);

  UserPolicy enabledFolders(List<String>? enabledFolders);

  UserPolicy enableAllFolders(bool? enableAllFolders);

  UserPolicy invalidLoginAttemptCount(int? invalidLoginAttemptCount);

  UserPolicy loginAttemptsBeforeLockout(int? loginAttemptsBeforeLockout);

  UserPolicy maxActiveSessions(int? maxActiveSessions);

  UserPolicy enablePublicSharing(bool? enablePublicSharing);

  UserPolicy blockedMediaFolders(List<String>? blockedMediaFolders);

  UserPolicy blockedChannels(List<String>? blockedChannels);

  UserPolicy remoteClientBitrateLimit(int? remoteClientBitrateLimit);

  UserPolicy authenticationProviderId(String authenticationProviderId);

  UserPolicy passwordResetProviderId(String passwordResetProviderId);

  UserPolicy syncPlayAccess(SyncPlayUserAccessType? syncPlayAccess);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserPolicy(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserPolicy(...).copyWith(id: 12, name: "My name")
  /// ````
  UserPolicy call({
    bool? isAdministrator,
    bool? isHidden,
    bool? enableCollectionManagement,
    bool? enableSubtitleManagement,
    bool? enableLyricManagement,
    bool? isDisabled,
    int? maxParentalRating,
    int? maxParentalSubRating,
    List<String>? blockedTags,
    List<String>? allowedTags,
    bool? enableUserPreferenceAccess,
    List<AccessSchedule>? accessSchedules,
    List<UnratedItem>? blockUnratedItems,
    bool? enableRemoteControlOfOtherUsers,
    bool? enableSharedDeviceControl,
    bool? enableRemoteAccess,
    bool? enableLiveTvManagement,
    bool? enableLiveTvAccess,
    bool? enableMediaPlayback,
    bool? enableAudioPlaybackTranscoding,
    bool? enableVideoPlaybackTranscoding,
    bool? enablePlaybackRemuxing,
    bool? forceRemoteSourceTranscoding,
    bool? enableContentDeletion,
    List<String>? enableContentDeletionFromFolders,
    bool? enableContentDownloading,
    bool? enableSyncTranscoding,
    bool? enableMediaConversion,
    List<String>? enabledDevices,
    bool? enableAllDevices,
    List<String>? enabledChannels,
    bool? enableAllChannels,
    List<String>? enabledFolders,
    bool? enableAllFolders,
    int? invalidLoginAttemptCount,
    int? loginAttemptsBeforeLockout,
    int? maxActiveSessions,
    bool? enablePublicSharing,
    List<String>? blockedMediaFolders,
    List<String>? blockedChannels,
    int? remoteClientBitrateLimit,
    String authenticationProviderId,
    String passwordResetProviderId,
    SyncPlayUserAccessType? syncPlayAccess,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserPolicy.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserPolicy.copyWith.fieldName(...)`
class _$UserPolicyCWProxyImpl implements _$UserPolicyCWProxy {
  const _$UserPolicyCWProxyImpl(this._value);

  final UserPolicy _value;

  @override
  UserPolicy isAdministrator(bool? isAdministrator) =>
      this(isAdministrator: isAdministrator);

  @override
  UserPolicy isHidden(bool? isHidden) => this(isHidden: isHidden);

  @override
  UserPolicy enableCollectionManagement(bool? enableCollectionManagement) =>
      this(enableCollectionManagement: enableCollectionManagement);

  @override
  UserPolicy enableSubtitleManagement(bool? enableSubtitleManagement) =>
      this(enableSubtitleManagement: enableSubtitleManagement);

  @override
  UserPolicy enableLyricManagement(bool? enableLyricManagement) =>
      this(enableLyricManagement: enableLyricManagement);

  @override
  UserPolicy isDisabled(bool? isDisabled) => this(isDisabled: isDisabled);

  @override
  UserPolicy maxParentalRating(int? maxParentalRating) =>
      this(maxParentalRating: maxParentalRating);

  @override
  UserPolicy maxParentalSubRating(int? maxParentalSubRating) =>
      this(maxParentalSubRating: maxParentalSubRating);

  @override
  UserPolicy blockedTags(List<String>? blockedTags) =>
      this(blockedTags: blockedTags);

  @override
  UserPolicy allowedTags(List<String>? allowedTags) =>
      this(allowedTags: allowedTags);

  @override
  UserPolicy enableUserPreferenceAccess(bool? enableUserPreferenceAccess) =>
      this(enableUserPreferenceAccess: enableUserPreferenceAccess);

  @override
  UserPolicy accessSchedules(List<AccessSchedule>? accessSchedules) =>
      this(accessSchedules: accessSchedules);

  @override
  UserPolicy blockUnratedItems(List<UnratedItem>? blockUnratedItems) =>
      this(blockUnratedItems: blockUnratedItems);

  @override
  UserPolicy enableRemoteControlOfOtherUsers(
    bool? enableRemoteControlOfOtherUsers,
  ) => this(enableRemoteControlOfOtherUsers: enableRemoteControlOfOtherUsers);

  @override
  UserPolicy enableSharedDeviceControl(bool? enableSharedDeviceControl) =>
      this(enableSharedDeviceControl: enableSharedDeviceControl);

  @override
  UserPolicy enableRemoteAccess(bool? enableRemoteAccess) =>
      this(enableRemoteAccess: enableRemoteAccess);

  @override
  UserPolicy enableLiveTvManagement(bool? enableLiveTvManagement) =>
      this(enableLiveTvManagement: enableLiveTvManagement);

  @override
  UserPolicy enableLiveTvAccess(bool? enableLiveTvAccess) =>
      this(enableLiveTvAccess: enableLiveTvAccess);

  @override
  UserPolicy enableMediaPlayback(bool? enableMediaPlayback) =>
      this(enableMediaPlayback: enableMediaPlayback);

  @override
  UserPolicy enableAudioPlaybackTranscoding(
    bool? enableAudioPlaybackTranscoding,
  ) => this(enableAudioPlaybackTranscoding: enableAudioPlaybackTranscoding);

  @override
  UserPolicy enableVideoPlaybackTranscoding(
    bool? enableVideoPlaybackTranscoding,
  ) => this(enableVideoPlaybackTranscoding: enableVideoPlaybackTranscoding);

  @override
  UserPolicy enablePlaybackRemuxing(bool? enablePlaybackRemuxing) =>
      this(enablePlaybackRemuxing: enablePlaybackRemuxing);

  @override
  UserPolicy forceRemoteSourceTranscoding(bool? forceRemoteSourceTranscoding) =>
      this(forceRemoteSourceTranscoding: forceRemoteSourceTranscoding);

  @override
  UserPolicy enableContentDeletion(bool? enableContentDeletion) =>
      this(enableContentDeletion: enableContentDeletion);

  @override
  UserPolicy enableContentDeletionFromFolders(
    List<String>? enableContentDeletionFromFolders,
  ) => this(enableContentDeletionFromFolders: enableContentDeletionFromFolders);

  @override
  UserPolicy enableContentDownloading(bool? enableContentDownloading) =>
      this(enableContentDownloading: enableContentDownloading);

  @override
  UserPolicy enableSyncTranscoding(bool? enableSyncTranscoding) =>
      this(enableSyncTranscoding: enableSyncTranscoding);

  @override
  UserPolicy enableMediaConversion(bool? enableMediaConversion) =>
      this(enableMediaConversion: enableMediaConversion);

  @override
  UserPolicy enabledDevices(List<String>? enabledDevices) =>
      this(enabledDevices: enabledDevices);

  @override
  UserPolicy enableAllDevices(bool? enableAllDevices) =>
      this(enableAllDevices: enableAllDevices);

  @override
  UserPolicy enabledChannels(List<String>? enabledChannels) =>
      this(enabledChannels: enabledChannels);

  @override
  UserPolicy enableAllChannels(bool? enableAllChannels) =>
      this(enableAllChannels: enableAllChannels);

  @override
  UserPolicy enabledFolders(List<String>? enabledFolders) =>
      this(enabledFolders: enabledFolders);

  @override
  UserPolicy enableAllFolders(bool? enableAllFolders) =>
      this(enableAllFolders: enableAllFolders);

  @override
  UserPolicy invalidLoginAttemptCount(int? invalidLoginAttemptCount) =>
      this(invalidLoginAttemptCount: invalidLoginAttemptCount);

  @override
  UserPolicy loginAttemptsBeforeLockout(int? loginAttemptsBeforeLockout) =>
      this(loginAttemptsBeforeLockout: loginAttemptsBeforeLockout);

  @override
  UserPolicy maxActiveSessions(int? maxActiveSessions) =>
      this(maxActiveSessions: maxActiveSessions);

  @override
  UserPolicy enablePublicSharing(bool? enablePublicSharing) =>
      this(enablePublicSharing: enablePublicSharing);

  @override
  UserPolicy blockedMediaFolders(List<String>? blockedMediaFolders) =>
      this(blockedMediaFolders: blockedMediaFolders);

  @override
  UserPolicy blockedChannels(List<String>? blockedChannels) =>
      this(blockedChannels: blockedChannels);

  @override
  UserPolicy remoteClientBitrateLimit(int? remoteClientBitrateLimit) =>
      this(remoteClientBitrateLimit: remoteClientBitrateLimit);

  @override
  UserPolicy authenticationProviderId(String authenticationProviderId) =>
      this(authenticationProviderId: authenticationProviderId);

  @override
  UserPolicy passwordResetProviderId(String passwordResetProviderId) =>
      this(passwordResetProviderId: passwordResetProviderId);

  @override
  UserPolicy syncPlayAccess(SyncPlayUserAccessType? syncPlayAccess) =>
      this(syncPlayAccess: syncPlayAccess);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserPolicy(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserPolicy(...).copyWith(id: 12, name: "My name")
  /// ````
  UserPolicy call({
    Object? isAdministrator = const $CopyWithPlaceholder(),
    Object? isHidden = const $CopyWithPlaceholder(),
    Object? enableCollectionManagement = const $CopyWithPlaceholder(),
    Object? enableSubtitleManagement = const $CopyWithPlaceholder(),
    Object? enableLyricManagement = const $CopyWithPlaceholder(),
    Object? isDisabled = const $CopyWithPlaceholder(),
    Object? maxParentalRating = const $CopyWithPlaceholder(),
    Object? maxParentalSubRating = const $CopyWithPlaceholder(),
    Object? blockedTags = const $CopyWithPlaceholder(),
    Object? allowedTags = const $CopyWithPlaceholder(),
    Object? enableUserPreferenceAccess = const $CopyWithPlaceholder(),
    Object? accessSchedules = const $CopyWithPlaceholder(),
    Object? blockUnratedItems = const $CopyWithPlaceholder(),
    Object? enableRemoteControlOfOtherUsers = const $CopyWithPlaceholder(),
    Object? enableSharedDeviceControl = const $CopyWithPlaceholder(),
    Object? enableRemoteAccess = const $CopyWithPlaceholder(),
    Object? enableLiveTvManagement = const $CopyWithPlaceholder(),
    Object? enableLiveTvAccess = const $CopyWithPlaceholder(),
    Object? enableMediaPlayback = const $CopyWithPlaceholder(),
    Object? enableAudioPlaybackTranscoding = const $CopyWithPlaceholder(),
    Object? enableVideoPlaybackTranscoding = const $CopyWithPlaceholder(),
    Object? enablePlaybackRemuxing = const $CopyWithPlaceholder(),
    Object? forceRemoteSourceTranscoding = const $CopyWithPlaceholder(),
    Object? enableContentDeletion = const $CopyWithPlaceholder(),
    Object? enableContentDeletionFromFolders = const $CopyWithPlaceholder(),
    Object? enableContentDownloading = const $CopyWithPlaceholder(),
    Object? enableSyncTranscoding = const $CopyWithPlaceholder(),
    Object? enableMediaConversion = const $CopyWithPlaceholder(),
    Object? enabledDevices = const $CopyWithPlaceholder(),
    Object? enableAllDevices = const $CopyWithPlaceholder(),
    Object? enabledChannels = const $CopyWithPlaceholder(),
    Object? enableAllChannels = const $CopyWithPlaceholder(),
    Object? enabledFolders = const $CopyWithPlaceholder(),
    Object? enableAllFolders = const $CopyWithPlaceholder(),
    Object? invalidLoginAttemptCount = const $CopyWithPlaceholder(),
    Object? loginAttemptsBeforeLockout = const $CopyWithPlaceholder(),
    Object? maxActiveSessions = const $CopyWithPlaceholder(),
    Object? enablePublicSharing = const $CopyWithPlaceholder(),
    Object? blockedMediaFolders = const $CopyWithPlaceholder(),
    Object? blockedChannels = const $CopyWithPlaceholder(),
    Object? remoteClientBitrateLimit = const $CopyWithPlaceholder(),
    Object? authenticationProviderId = const $CopyWithPlaceholder(),
    Object? passwordResetProviderId = const $CopyWithPlaceholder(),
    Object? syncPlayAccess = const $CopyWithPlaceholder(),
  }) {
    return UserPolicy(
      isAdministrator: isAdministrator == const $CopyWithPlaceholder()
          ? _value.isAdministrator
          // ignore: cast_nullable_to_non_nullable
          : isAdministrator as bool?,
      isHidden: isHidden == const $CopyWithPlaceholder()
          ? _value.isHidden
          // ignore: cast_nullable_to_non_nullable
          : isHidden as bool?,
      enableCollectionManagement:
          enableCollectionManagement == const $CopyWithPlaceholder()
          ? _value.enableCollectionManagement
          // ignore: cast_nullable_to_non_nullable
          : enableCollectionManagement as bool?,
      enableSubtitleManagement:
          enableSubtitleManagement == const $CopyWithPlaceholder()
          ? _value.enableSubtitleManagement
          // ignore: cast_nullable_to_non_nullable
          : enableSubtitleManagement as bool?,
      enableLyricManagement:
          enableLyricManagement == const $CopyWithPlaceholder()
          ? _value.enableLyricManagement
          // ignore: cast_nullable_to_non_nullable
          : enableLyricManagement as bool?,
      isDisabled: isDisabled == const $CopyWithPlaceholder()
          ? _value.isDisabled
          // ignore: cast_nullable_to_non_nullable
          : isDisabled as bool?,
      maxParentalRating: maxParentalRating == const $CopyWithPlaceholder()
          ? _value.maxParentalRating
          // ignore: cast_nullable_to_non_nullable
          : maxParentalRating as int?,
      maxParentalSubRating: maxParentalSubRating == const $CopyWithPlaceholder()
          ? _value.maxParentalSubRating
          // ignore: cast_nullable_to_non_nullable
          : maxParentalSubRating as int?,
      blockedTags: blockedTags == const $CopyWithPlaceholder()
          ? _value.blockedTags
          // ignore: cast_nullable_to_non_nullable
          : blockedTags as List<String>?,
      allowedTags: allowedTags == const $CopyWithPlaceholder()
          ? _value.allowedTags
          // ignore: cast_nullable_to_non_nullable
          : allowedTags as List<String>?,
      enableUserPreferenceAccess:
          enableUserPreferenceAccess == const $CopyWithPlaceholder()
          ? _value.enableUserPreferenceAccess
          // ignore: cast_nullable_to_non_nullable
          : enableUserPreferenceAccess as bool?,
      accessSchedules: accessSchedules == const $CopyWithPlaceholder()
          ? _value.accessSchedules
          // ignore: cast_nullable_to_non_nullable
          : accessSchedules as List<AccessSchedule>?,
      blockUnratedItems: blockUnratedItems == const $CopyWithPlaceholder()
          ? _value.blockUnratedItems
          // ignore: cast_nullable_to_non_nullable
          : blockUnratedItems as List<UnratedItem>?,
      enableRemoteControlOfOtherUsers:
          enableRemoteControlOfOtherUsers == const $CopyWithPlaceholder()
          ? _value.enableRemoteControlOfOtherUsers
          // ignore: cast_nullable_to_non_nullable
          : enableRemoteControlOfOtherUsers as bool?,
      enableSharedDeviceControl:
          enableSharedDeviceControl == const $CopyWithPlaceholder()
          ? _value.enableSharedDeviceControl
          // ignore: cast_nullable_to_non_nullable
          : enableSharedDeviceControl as bool?,
      enableRemoteAccess: enableRemoteAccess == const $CopyWithPlaceholder()
          ? _value.enableRemoteAccess
          // ignore: cast_nullable_to_non_nullable
          : enableRemoteAccess as bool?,
      enableLiveTvManagement:
          enableLiveTvManagement == const $CopyWithPlaceholder()
          ? _value.enableLiveTvManagement
          // ignore: cast_nullable_to_non_nullable
          : enableLiveTvManagement as bool?,
      enableLiveTvAccess: enableLiveTvAccess == const $CopyWithPlaceholder()
          ? _value.enableLiveTvAccess
          // ignore: cast_nullable_to_non_nullable
          : enableLiveTvAccess as bool?,
      enableMediaPlayback: enableMediaPlayback == const $CopyWithPlaceholder()
          ? _value.enableMediaPlayback
          // ignore: cast_nullable_to_non_nullable
          : enableMediaPlayback as bool?,
      enableAudioPlaybackTranscoding:
          enableAudioPlaybackTranscoding == const $CopyWithPlaceholder()
          ? _value.enableAudioPlaybackTranscoding
          // ignore: cast_nullable_to_non_nullable
          : enableAudioPlaybackTranscoding as bool?,
      enableVideoPlaybackTranscoding:
          enableVideoPlaybackTranscoding == const $CopyWithPlaceholder()
          ? _value.enableVideoPlaybackTranscoding
          // ignore: cast_nullable_to_non_nullable
          : enableVideoPlaybackTranscoding as bool?,
      enablePlaybackRemuxing:
          enablePlaybackRemuxing == const $CopyWithPlaceholder()
          ? _value.enablePlaybackRemuxing
          // ignore: cast_nullable_to_non_nullable
          : enablePlaybackRemuxing as bool?,
      forceRemoteSourceTranscoding:
          forceRemoteSourceTranscoding == const $CopyWithPlaceholder()
          ? _value.forceRemoteSourceTranscoding
          // ignore: cast_nullable_to_non_nullable
          : forceRemoteSourceTranscoding as bool?,
      enableContentDeletion:
          enableContentDeletion == const $CopyWithPlaceholder()
          ? _value.enableContentDeletion
          // ignore: cast_nullable_to_non_nullable
          : enableContentDeletion as bool?,
      enableContentDeletionFromFolders:
          enableContentDeletionFromFolders == const $CopyWithPlaceholder()
          ? _value.enableContentDeletionFromFolders
          // ignore: cast_nullable_to_non_nullable
          : enableContentDeletionFromFolders as List<String>?,
      enableContentDownloading:
          enableContentDownloading == const $CopyWithPlaceholder()
          ? _value.enableContentDownloading
          // ignore: cast_nullable_to_non_nullable
          : enableContentDownloading as bool?,
      enableSyncTranscoding:
          enableSyncTranscoding == const $CopyWithPlaceholder()
          ? _value.enableSyncTranscoding
          // ignore: cast_nullable_to_non_nullable
          : enableSyncTranscoding as bool?,
      enableMediaConversion:
          enableMediaConversion == const $CopyWithPlaceholder()
          ? _value.enableMediaConversion
          // ignore: cast_nullable_to_non_nullable
          : enableMediaConversion as bool?,
      enabledDevices: enabledDevices == const $CopyWithPlaceholder()
          ? _value.enabledDevices
          // ignore: cast_nullable_to_non_nullable
          : enabledDevices as List<String>?,
      enableAllDevices: enableAllDevices == const $CopyWithPlaceholder()
          ? _value.enableAllDevices
          // ignore: cast_nullable_to_non_nullable
          : enableAllDevices as bool?,
      enabledChannels: enabledChannels == const $CopyWithPlaceholder()
          ? _value.enabledChannels
          // ignore: cast_nullable_to_non_nullable
          : enabledChannels as List<String>?,
      enableAllChannels: enableAllChannels == const $CopyWithPlaceholder()
          ? _value.enableAllChannels
          // ignore: cast_nullable_to_non_nullable
          : enableAllChannels as bool?,
      enabledFolders: enabledFolders == const $CopyWithPlaceholder()
          ? _value.enabledFolders
          // ignore: cast_nullable_to_non_nullable
          : enabledFolders as List<String>?,
      enableAllFolders: enableAllFolders == const $CopyWithPlaceholder()
          ? _value.enableAllFolders
          // ignore: cast_nullable_to_non_nullable
          : enableAllFolders as bool?,
      invalidLoginAttemptCount:
          invalidLoginAttemptCount == const $CopyWithPlaceholder()
          ? _value.invalidLoginAttemptCount
          // ignore: cast_nullable_to_non_nullable
          : invalidLoginAttemptCount as int?,
      loginAttemptsBeforeLockout:
          loginAttemptsBeforeLockout == const $CopyWithPlaceholder()
          ? _value.loginAttemptsBeforeLockout
          // ignore: cast_nullable_to_non_nullable
          : loginAttemptsBeforeLockout as int?,
      maxActiveSessions: maxActiveSessions == const $CopyWithPlaceholder()
          ? _value.maxActiveSessions
          // ignore: cast_nullable_to_non_nullable
          : maxActiveSessions as int?,
      enablePublicSharing: enablePublicSharing == const $CopyWithPlaceholder()
          ? _value.enablePublicSharing
          // ignore: cast_nullable_to_non_nullable
          : enablePublicSharing as bool?,
      blockedMediaFolders: blockedMediaFolders == const $CopyWithPlaceholder()
          ? _value.blockedMediaFolders
          // ignore: cast_nullable_to_non_nullable
          : blockedMediaFolders as List<String>?,
      blockedChannels: blockedChannels == const $CopyWithPlaceholder()
          ? _value.blockedChannels
          // ignore: cast_nullable_to_non_nullable
          : blockedChannels as List<String>?,
      remoteClientBitrateLimit:
          remoteClientBitrateLimit == const $CopyWithPlaceholder()
          ? _value.remoteClientBitrateLimit
          // ignore: cast_nullable_to_non_nullable
          : remoteClientBitrateLimit as int?,
      authenticationProviderId:
          authenticationProviderId == const $CopyWithPlaceholder()
          ? _value.authenticationProviderId
          // ignore: cast_nullable_to_non_nullable
          : authenticationProviderId as String,
      passwordResetProviderId:
          passwordResetProviderId == const $CopyWithPlaceholder()
          ? _value.passwordResetProviderId
          // ignore: cast_nullable_to_non_nullable
          : passwordResetProviderId as String,
      syncPlayAccess: syncPlayAccess == const $CopyWithPlaceholder()
          ? _value.syncPlayAccess
          // ignore: cast_nullable_to_non_nullable
          : syncPlayAccess as SyncPlayUserAccessType?,
    );
  }
}

extension $UserPolicyCopyWith on UserPolicy {
  /// Returns a callable class that can be used as follows: `instanceOfUserPolicy.copyWith(...)` or like so:`instanceOfUserPolicy.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserPolicyCWProxy get copyWith => _$UserPolicyCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPolicy _$UserPolicyFromJson(Map<String, dynamic> json) => $checkedCreate(
  'UserPolicy',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'AuthenticationProviderId',
        'PasswordResetProviderId',
      ],
    );
    final val = UserPolicy(
      isAdministrator: $checkedConvert('IsAdministrator', (v) => v as bool?),
      isHidden: $checkedConvert('IsHidden', (v) => v as bool?),
      enableCollectionManagement: $checkedConvert(
        'EnableCollectionManagement',
        (v) => v as bool? ?? false,
      ),
      enableSubtitleManagement: $checkedConvert(
        'EnableSubtitleManagement',
        (v) => v as bool? ?? false,
      ),
      enableLyricManagement: $checkedConvert(
        'EnableLyricManagement',
        (v) => v as bool? ?? false,
      ),
      isDisabled: $checkedConvert('IsDisabled', (v) => v as bool?),
      maxParentalRating: $checkedConvert(
        'MaxParentalRating',
        (v) => (v as num?)?.toInt(),
      ),
      maxParentalSubRating: $checkedConvert(
        'MaxParentalSubRating',
        (v) => (v as num?)?.toInt(),
      ),
      blockedTags: $checkedConvert(
        'BlockedTags',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      allowedTags: $checkedConvert(
        'AllowedTags',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      enableUserPreferenceAccess: $checkedConvert(
        'EnableUserPreferenceAccess',
        (v) => v as bool?,
      ),
      accessSchedules: $checkedConvert(
        'AccessSchedules',
        (v) => (v as List<dynamic>?)
            ?.map((e) => AccessSchedule.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      blockUnratedItems: $checkedConvert(
        'BlockUnratedItems',
        (v) => (v as List<dynamic>?)
            ?.map((e) => $enumDecode(_$UnratedItemEnumMap, e))
            .toList(),
      ),
      enableRemoteControlOfOtherUsers: $checkedConvert(
        'EnableRemoteControlOfOtherUsers',
        (v) => v as bool?,
      ),
      enableSharedDeviceControl: $checkedConvert(
        'EnableSharedDeviceControl',
        (v) => v as bool?,
      ),
      enableRemoteAccess: $checkedConvert(
        'EnableRemoteAccess',
        (v) => v as bool?,
      ),
      enableLiveTvManagement: $checkedConvert(
        'EnableLiveTvManagement',
        (v) => v as bool?,
      ),
      enableLiveTvAccess: $checkedConvert(
        'EnableLiveTvAccess',
        (v) => v as bool?,
      ),
      enableMediaPlayback: $checkedConvert(
        'EnableMediaPlayback',
        (v) => v as bool?,
      ),
      enableAudioPlaybackTranscoding: $checkedConvert(
        'EnableAudioPlaybackTranscoding',
        (v) => v as bool?,
      ),
      enableVideoPlaybackTranscoding: $checkedConvert(
        'EnableVideoPlaybackTranscoding',
        (v) => v as bool?,
      ),
      enablePlaybackRemuxing: $checkedConvert(
        'EnablePlaybackRemuxing',
        (v) => v as bool?,
      ),
      forceRemoteSourceTranscoding: $checkedConvert(
        'ForceRemoteSourceTranscoding',
        (v) => v as bool?,
      ),
      enableContentDeletion: $checkedConvert(
        'EnableContentDeletion',
        (v) => v as bool?,
      ),
      enableContentDeletionFromFolders: $checkedConvert(
        'EnableContentDeletionFromFolders',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      enableContentDownloading: $checkedConvert(
        'EnableContentDownloading',
        (v) => v as bool?,
      ),
      enableSyncTranscoding: $checkedConvert(
        'EnableSyncTranscoding',
        (v) => v as bool?,
      ),
      enableMediaConversion: $checkedConvert(
        'EnableMediaConversion',
        (v) => v as bool?,
      ),
      enabledDevices: $checkedConvert(
        'EnabledDevices',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      enableAllDevices: $checkedConvert('EnableAllDevices', (v) => v as bool?),
      enabledChannels: $checkedConvert(
        'EnabledChannels',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      enableAllChannels: $checkedConvert(
        'EnableAllChannels',
        (v) => v as bool?,
      ),
      enabledFolders: $checkedConvert(
        'EnabledFolders',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      enableAllFolders: $checkedConvert('EnableAllFolders', (v) => v as bool?),
      invalidLoginAttemptCount: $checkedConvert(
        'InvalidLoginAttemptCount',
        (v) => (v as num?)?.toInt(),
      ),
      loginAttemptsBeforeLockout: $checkedConvert(
        'LoginAttemptsBeforeLockout',
        (v) => (v as num?)?.toInt(),
      ),
      maxActiveSessions: $checkedConvert(
        'MaxActiveSessions',
        (v) => (v as num?)?.toInt(),
      ),
      enablePublicSharing: $checkedConvert(
        'EnablePublicSharing',
        (v) => v as bool?,
      ),
      blockedMediaFolders: $checkedConvert(
        'BlockedMediaFolders',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      blockedChannels: $checkedConvert(
        'BlockedChannels',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      remoteClientBitrateLimit: $checkedConvert(
        'RemoteClientBitrateLimit',
        (v) => (v as num?)?.toInt(),
      ),
      authenticationProviderId: $checkedConvert(
        'AuthenticationProviderId',
        (v) => v as String,
      ),
      passwordResetProviderId: $checkedConvert(
        'PasswordResetProviderId',
        (v) => v as String,
      ),
      syncPlayAccess: $checkedConvert(
        'SyncPlayAccess',
        (v) => $enumDecodeNullable(_$SyncPlayUserAccessTypeEnumMap, v),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'isAdministrator': 'IsAdministrator',
    'isHidden': 'IsHidden',
    'enableCollectionManagement': 'EnableCollectionManagement',
    'enableSubtitleManagement': 'EnableSubtitleManagement',
    'enableLyricManagement': 'EnableLyricManagement',
    'isDisabled': 'IsDisabled',
    'maxParentalRating': 'MaxParentalRating',
    'maxParentalSubRating': 'MaxParentalSubRating',
    'blockedTags': 'BlockedTags',
    'allowedTags': 'AllowedTags',
    'enableUserPreferenceAccess': 'EnableUserPreferenceAccess',
    'accessSchedules': 'AccessSchedules',
    'blockUnratedItems': 'BlockUnratedItems',
    'enableRemoteControlOfOtherUsers': 'EnableRemoteControlOfOtherUsers',
    'enableSharedDeviceControl': 'EnableSharedDeviceControl',
    'enableRemoteAccess': 'EnableRemoteAccess',
    'enableLiveTvManagement': 'EnableLiveTvManagement',
    'enableLiveTvAccess': 'EnableLiveTvAccess',
    'enableMediaPlayback': 'EnableMediaPlayback',
    'enableAudioPlaybackTranscoding': 'EnableAudioPlaybackTranscoding',
    'enableVideoPlaybackTranscoding': 'EnableVideoPlaybackTranscoding',
    'enablePlaybackRemuxing': 'EnablePlaybackRemuxing',
    'forceRemoteSourceTranscoding': 'ForceRemoteSourceTranscoding',
    'enableContentDeletion': 'EnableContentDeletion',
    'enableContentDeletionFromFolders': 'EnableContentDeletionFromFolders',
    'enableContentDownloading': 'EnableContentDownloading',
    'enableSyncTranscoding': 'EnableSyncTranscoding',
    'enableMediaConversion': 'EnableMediaConversion',
    'enabledDevices': 'EnabledDevices',
    'enableAllDevices': 'EnableAllDevices',
    'enabledChannels': 'EnabledChannels',
    'enableAllChannels': 'EnableAllChannels',
    'enabledFolders': 'EnabledFolders',
    'enableAllFolders': 'EnableAllFolders',
    'invalidLoginAttemptCount': 'InvalidLoginAttemptCount',
    'loginAttemptsBeforeLockout': 'LoginAttemptsBeforeLockout',
    'maxActiveSessions': 'MaxActiveSessions',
    'enablePublicSharing': 'EnablePublicSharing',
    'blockedMediaFolders': 'BlockedMediaFolders',
    'blockedChannels': 'BlockedChannels',
    'remoteClientBitrateLimit': 'RemoteClientBitrateLimit',
    'authenticationProviderId': 'AuthenticationProviderId',
    'passwordResetProviderId': 'PasswordResetProviderId',
    'syncPlayAccess': 'SyncPlayAccess',
  },
);

Map<String, dynamic> _$UserPolicyToJson(
  UserPolicy instance,
) => <String, dynamic>{
  'IsAdministrator': ?instance.isAdministrator,
  'IsHidden': ?instance.isHidden,
  'EnableCollectionManagement': ?instance.enableCollectionManagement,
  'EnableSubtitleManagement': ?instance.enableSubtitleManagement,
  'EnableLyricManagement': ?instance.enableLyricManagement,
  'IsDisabled': ?instance.isDisabled,
  'MaxParentalRating': ?instance.maxParentalRating,
  'MaxParentalSubRating': ?instance.maxParentalSubRating,
  'BlockedTags': ?instance.blockedTags,
  'AllowedTags': ?instance.allowedTags,
  'EnableUserPreferenceAccess': ?instance.enableUserPreferenceAccess,
  'AccessSchedules': ?instance.accessSchedules?.map((e) => e.toJson()).toList(),
  'BlockUnratedItems': ?instance.blockUnratedItems
      ?.map((e) => _$UnratedItemEnumMap[e]!)
      .toList(),
  'EnableRemoteControlOfOtherUsers': ?instance.enableRemoteControlOfOtherUsers,
  'EnableSharedDeviceControl': ?instance.enableSharedDeviceControl,
  'EnableRemoteAccess': ?instance.enableRemoteAccess,
  'EnableLiveTvManagement': ?instance.enableLiveTvManagement,
  'EnableLiveTvAccess': ?instance.enableLiveTvAccess,
  'EnableMediaPlayback': ?instance.enableMediaPlayback,
  'EnableAudioPlaybackTranscoding': ?instance.enableAudioPlaybackTranscoding,
  'EnableVideoPlaybackTranscoding': ?instance.enableVideoPlaybackTranscoding,
  'EnablePlaybackRemuxing': ?instance.enablePlaybackRemuxing,
  'ForceRemoteSourceTranscoding': ?instance.forceRemoteSourceTranscoding,
  'EnableContentDeletion': ?instance.enableContentDeletion,
  'EnableContentDeletionFromFolders':
      ?instance.enableContentDeletionFromFolders,
  'EnableContentDownloading': ?instance.enableContentDownloading,
  'EnableSyncTranscoding': ?instance.enableSyncTranscoding,
  'EnableMediaConversion': ?instance.enableMediaConversion,
  'EnabledDevices': ?instance.enabledDevices,
  'EnableAllDevices': ?instance.enableAllDevices,
  'EnabledChannels': ?instance.enabledChannels,
  'EnableAllChannels': ?instance.enableAllChannels,
  'EnabledFolders': ?instance.enabledFolders,
  'EnableAllFolders': ?instance.enableAllFolders,
  'InvalidLoginAttemptCount': ?instance.invalidLoginAttemptCount,
  'LoginAttemptsBeforeLockout': ?instance.loginAttemptsBeforeLockout,
  'MaxActiveSessions': ?instance.maxActiveSessions,
  'EnablePublicSharing': ?instance.enablePublicSharing,
  'BlockedMediaFolders': ?instance.blockedMediaFolders,
  'BlockedChannels': ?instance.blockedChannels,
  'RemoteClientBitrateLimit': ?instance.remoteClientBitrateLimit,
  'AuthenticationProviderId': instance.authenticationProviderId,
  'PasswordResetProviderId': instance.passwordResetProviderId,
  'SyncPlayAccess': ?_$SyncPlayUserAccessTypeEnumMap[instance.syncPlayAccess],
};

const _$UnratedItemEnumMap = {
  UnratedItem.movie: 'Movie',
  UnratedItem.trailer: 'Trailer',
  UnratedItem.series: 'Series',
  UnratedItem.music: 'Music',
  UnratedItem.book: 'Book',
  UnratedItem.liveTvChannel: 'LiveTvChannel',
  UnratedItem.liveTvProgram: 'LiveTvProgram',
  UnratedItem.channelContent: 'ChannelContent',
  UnratedItem.other: 'Other',
};

const _$SyncPlayUserAccessTypeEnumMap = {
  SyncPlayUserAccessType.createAndJoinGroups: 'CreateAndJoinGroups',
  SyncPlayUserAccessType.joinGroups: 'JoinGroups',
  SyncPlayUserAccessType.none: 'None',
};
