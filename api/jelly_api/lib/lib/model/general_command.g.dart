// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_command.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GeneralCommandCWProxy {
  GeneralCommand name(GeneralCommandType? name);

  GeneralCommand controllingUserId(String? controllingUserId);

  GeneralCommand arguments(Map<String, String>? arguments);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GeneralCommand(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GeneralCommand(...).copyWith(id: 12, name: "My name")
  /// ````
  GeneralCommand call({
    GeneralCommandType? name,
    String? controllingUserId,
    Map<String, String>? arguments,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGeneralCommand.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGeneralCommand.copyWith.fieldName(...)`
class _$GeneralCommandCWProxyImpl implements _$GeneralCommandCWProxy {
  const _$GeneralCommandCWProxyImpl(this._value);

  final GeneralCommand _value;

  @override
  GeneralCommand name(GeneralCommandType? name) => this(name: name);

  @override
  GeneralCommand controllingUserId(String? controllingUserId) =>
      this(controllingUserId: controllingUserId);

  @override
  GeneralCommand arguments(Map<String, String>? arguments) =>
      this(arguments: arguments);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GeneralCommand(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GeneralCommand(...).copyWith(id: 12, name: "My name")
  /// ````
  GeneralCommand call({
    Object? name = const $CopyWithPlaceholder(),
    Object? controllingUserId = const $CopyWithPlaceholder(),
    Object? arguments = const $CopyWithPlaceholder(),
  }) {
    return GeneralCommand(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as GeneralCommandType?,
      controllingUserId: controllingUserId == const $CopyWithPlaceholder()
          ? _value.controllingUserId
          // ignore: cast_nullable_to_non_nullable
          : controllingUserId as String?,
      arguments: arguments == const $CopyWithPlaceholder()
          ? _value.arguments
          // ignore: cast_nullable_to_non_nullable
          : arguments as Map<String, String>?,
    );
  }
}

extension $GeneralCommandCopyWith on GeneralCommand {
  /// Returns a callable class that can be used as follows: `instanceOfGeneralCommand.copyWith(...)` or like so:`instanceOfGeneralCommand.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GeneralCommandCWProxy get copyWith => _$GeneralCommandCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralCommand _$GeneralCommandFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GeneralCommand',
      json,
      ($checkedConvert) {
        final val = GeneralCommand(
          name: $checkedConvert(
            'Name',
            (v) => $enumDecodeNullable(_$GeneralCommandTypeEnumMap, v),
          ),
          controllingUserId: $checkedConvert(
            'ControllingUserId',
            (v) => v as String?,
          ),
          arguments: $checkedConvert(
            'Arguments',
            (v) => (v as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, e as String),
            ),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'name': 'Name',
        'controllingUserId': 'ControllingUserId',
        'arguments': 'Arguments',
      },
    );

Map<String, dynamic> _$GeneralCommandToJson(GeneralCommand instance) =>
    <String, dynamic>{
      'Name': ?_$GeneralCommandTypeEnumMap[instance.name],
      'ControllingUserId': ?instance.controllingUserId,
      'Arguments': ?instance.arguments,
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
