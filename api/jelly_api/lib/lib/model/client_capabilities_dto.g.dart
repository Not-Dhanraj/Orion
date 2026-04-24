// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_capabilities_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientCapabilitiesDtoCWProxy {
  ClientCapabilitiesDto playableMediaTypes(List<MediaType>? playableMediaTypes);

  ClientCapabilitiesDto supportedCommands(
    List<GeneralCommandType>? supportedCommands,
  );

  ClientCapabilitiesDto supportsMediaControl(bool? supportsMediaControl);

  ClientCapabilitiesDto supportsPersistentIdentifier(
    bool? supportsPersistentIdentifier,
  );

  ClientCapabilitiesDto deviceProfile(DeviceProfile? deviceProfile);

  ClientCapabilitiesDto appStoreUrl(String? appStoreUrl);

  ClientCapabilitiesDto iconUrl(String? iconUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientCapabilitiesDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientCapabilitiesDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientCapabilitiesDto call({
    List<MediaType>? playableMediaTypes,
    List<GeneralCommandType>? supportedCommands,
    bool? supportsMediaControl,
    bool? supportsPersistentIdentifier,
    DeviceProfile? deviceProfile,
    String? appStoreUrl,
    String? iconUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientCapabilitiesDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientCapabilitiesDto.copyWith.fieldName(...)`
class _$ClientCapabilitiesDtoCWProxyImpl
    implements _$ClientCapabilitiesDtoCWProxy {
  const _$ClientCapabilitiesDtoCWProxyImpl(this._value);

  final ClientCapabilitiesDto _value;

  @override
  ClientCapabilitiesDto playableMediaTypes(
    List<MediaType>? playableMediaTypes,
  ) => this(playableMediaTypes: playableMediaTypes);

  @override
  ClientCapabilitiesDto supportedCommands(
    List<GeneralCommandType>? supportedCommands,
  ) => this(supportedCommands: supportedCommands);

  @override
  ClientCapabilitiesDto supportsMediaControl(bool? supportsMediaControl) =>
      this(supportsMediaControl: supportsMediaControl);

  @override
  ClientCapabilitiesDto supportsPersistentIdentifier(
    bool? supportsPersistentIdentifier,
  ) => this(supportsPersistentIdentifier: supportsPersistentIdentifier);

  @override
  ClientCapabilitiesDto deviceProfile(DeviceProfile? deviceProfile) =>
      this(deviceProfile: deviceProfile);

  @override
  ClientCapabilitiesDto appStoreUrl(String? appStoreUrl) =>
      this(appStoreUrl: appStoreUrl);

  @override
  ClientCapabilitiesDto iconUrl(String? iconUrl) => this(iconUrl: iconUrl);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientCapabilitiesDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientCapabilitiesDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientCapabilitiesDto call({
    Object? playableMediaTypes = const $CopyWithPlaceholder(),
    Object? supportedCommands = const $CopyWithPlaceholder(),
    Object? supportsMediaControl = const $CopyWithPlaceholder(),
    Object? supportsPersistentIdentifier = const $CopyWithPlaceholder(),
    Object? deviceProfile = const $CopyWithPlaceholder(),
    Object? appStoreUrl = const $CopyWithPlaceholder(),
    Object? iconUrl = const $CopyWithPlaceholder(),
  }) {
    return ClientCapabilitiesDto(
      playableMediaTypes: playableMediaTypes == const $CopyWithPlaceholder()
          ? _value.playableMediaTypes
          // ignore: cast_nullable_to_non_nullable
          : playableMediaTypes as List<MediaType>?,
      supportedCommands: supportedCommands == const $CopyWithPlaceholder()
          ? _value.supportedCommands
          // ignore: cast_nullable_to_non_nullable
          : supportedCommands as List<GeneralCommandType>?,
      supportsMediaControl: supportsMediaControl == const $CopyWithPlaceholder()
          ? _value.supportsMediaControl
          // ignore: cast_nullable_to_non_nullable
          : supportsMediaControl as bool?,
      supportsPersistentIdentifier:
          supportsPersistentIdentifier == const $CopyWithPlaceholder()
          ? _value.supportsPersistentIdentifier
          // ignore: cast_nullable_to_non_nullable
          : supportsPersistentIdentifier as bool?,
      deviceProfile: deviceProfile == const $CopyWithPlaceholder()
          ? _value.deviceProfile
          // ignore: cast_nullable_to_non_nullable
          : deviceProfile as DeviceProfile?,
      appStoreUrl: appStoreUrl == const $CopyWithPlaceholder()
          ? _value.appStoreUrl
          // ignore: cast_nullable_to_non_nullable
          : appStoreUrl as String?,
      iconUrl: iconUrl == const $CopyWithPlaceholder()
          ? _value.iconUrl
          // ignore: cast_nullable_to_non_nullable
          : iconUrl as String?,
    );
  }
}

extension $ClientCapabilitiesDtoCopyWith on ClientCapabilitiesDto {
  /// Returns a callable class that can be used as follows: `instanceOfClientCapabilitiesDto.copyWith(...)` or like so:`instanceOfClientCapabilitiesDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientCapabilitiesDtoCWProxy get copyWith =>
      _$ClientCapabilitiesDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientCapabilitiesDto _$ClientCapabilitiesDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ClientCapabilitiesDto',
  json,
  ($checkedConvert) {
    final val = ClientCapabilitiesDto(
      playableMediaTypes: $checkedConvert(
        'PlayableMediaTypes',
        (v) => (v as List<dynamic>?)
            ?.map((e) => $enumDecode(_$MediaTypeEnumMap, e))
            .toList(),
      ),
      supportedCommands: $checkedConvert(
        'SupportedCommands',
        (v) => (v as List<dynamic>?)
            ?.map((e) => $enumDecode(_$GeneralCommandTypeEnumMap, e))
            .toList(),
      ),
      supportsMediaControl: $checkedConvert(
        'SupportsMediaControl',
        (v) => v as bool?,
      ),
      supportsPersistentIdentifier: $checkedConvert(
        'SupportsPersistentIdentifier',
        (v) => v as bool?,
      ),
      deviceProfile: $checkedConvert(
        'DeviceProfile',
        (v) => v == null
            ? null
            : DeviceProfile.fromJson(v as Map<String, dynamic>),
      ),
      appStoreUrl: $checkedConvert('AppStoreUrl', (v) => v as String?),
      iconUrl: $checkedConvert('IconUrl', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'playableMediaTypes': 'PlayableMediaTypes',
    'supportedCommands': 'SupportedCommands',
    'supportsMediaControl': 'SupportsMediaControl',
    'supportsPersistentIdentifier': 'SupportsPersistentIdentifier',
    'deviceProfile': 'DeviceProfile',
    'appStoreUrl': 'AppStoreUrl',
    'iconUrl': 'IconUrl',
  },
);

Map<String, dynamic> _$ClientCapabilitiesDtoToJson(
  ClientCapabilitiesDto instance,
) => <String, dynamic>{
  'PlayableMediaTypes': ?instance.playableMediaTypes
      ?.map((e) => _$MediaTypeEnumMap[e]!)
      .toList(),
  'SupportedCommands': ?instance.supportedCommands
      ?.map((e) => _$GeneralCommandTypeEnumMap[e]!)
      .toList(),
  'SupportsMediaControl': ?instance.supportsMediaControl,
  'SupportsPersistentIdentifier': ?instance.supportsPersistentIdentifier,
  'DeviceProfile': ?instance.deviceProfile?.toJson(),
  'AppStoreUrl': ?instance.appStoreUrl,
  'IconUrl': ?instance.iconUrl,
};

const _$MediaTypeEnumMap = {
  MediaType.unknown: 'Unknown',
  MediaType.video: 'Video',
  MediaType.audio: 'Audio',
  MediaType.photo: 'Photo',
  MediaType.book: 'Book',
};

const _$GeneralCommandTypeEnumMap = {
  GeneralCommandType.moveUp: 'MoveUp',
  GeneralCommandType.moveDown: 'MoveDown',
  GeneralCommandType.moveLeft: 'MoveLeft',
  GeneralCommandType.moveRight: 'MoveRight',
  GeneralCommandType.pageUp: 'PageUp',
  GeneralCommandType.pageDown: 'PageDown',
  GeneralCommandType.previousLetter: 'PreviousLetter',
  GeneralCommandType.nextLetter: 'NextLetter',
  GeneralCommandType.toggleOsd: 'ToggleOsd',
  GeneralCommandType.toggleContextMenu: 'ToggleContextMenu',
  GeneralCommandType.select: 'Select',
  GeneralCommandType.back: 'Back',
  GeneralCommandType.takeScreenshot: 'TakeScreenshot',
  GeneralCommandType.sendKey: 'SendKey',
  GeneralCommandType.sendString: 'SendString',
  GeneralCommandType.goHome: 'GoHome',
  GeneralCommandType.goToSettings: 'GoToSettings',
  GeneralCommandType.volumeUp: 'VolumeUp',
  GeneralCommandType.volumeDown: 'VolumeDown',
  GeneralCommandType.mute: 'Mute',
  GeneralCommandType.unmute: 'Unmute',
  GeneralCommandType.toggleMute: 'ToggleMute',
  GeneralCommandType.setVolume: 'SetVolume',
  GeneralCommandType.setAudioStreamIndex: 'SetAudioStreamIndex',
  GeneralCommandType.setSubtitleStreamIndex: 'SetSubtitleStreamIndex',
  GeneralCommandType.toggleFullscreen: 'ToggleFullscreen',
  GeneralCommandType.displayContent: 'DisplayContent',
  GeneralCommandType.goToSearch: 'GoToSearch',
  GeneralCommandType.displayMessage: 'DisplayMessage',
  GeneralCommandType.setRepeatMode: 'SetRepeatMode',
  GeneralCommandType.channelUp: 'ChannelUp',
  GeneralCommandType.channelDown: 'ChannelDown',
  GeneralCommandType.guide: 'Guide',
  GeneralCommandType.toggleStats: 'ToggleStats',
  GeneralCommandType.playMediaSource: 'PlayMediaSource',
  GeneralCommandType.playTrailers: 'PlayTrailers',
  GeneralCommandType.setShuffleQueue: 'SetShuffleQueue',
  GeneralCommandType.playState: 'PlayState',
  GeneralCommandType.playNext: 'PlayNext',
  GeneralCommandType.toggleOsdMenu: 'ToggleOsdMenu',
  GeneralCommandType.play: 'Play',
  GeneralCommandType.setMaxStreamingBitrate: 'SetMaxStreamingBitrate',
  GeneralCommandType.setPlaybackOrder: 'SetPlaybackOrder',
};
