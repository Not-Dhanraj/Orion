// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playstate_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaystateRequestCWProxy {
  PlaystateRequest command(PlaystateCommand? command);

  PlaystateRequest seekPositionTicks(int? seekPositionTicks);

  PlaystateRequest controllingUserId(String? controllingUserId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaystateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaystateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaystateRequest call({
    PlaystateCommand? command,
    int? seekPositionTicks,
    String? controllingUserId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlaystateRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlaystateRequest.copyWith.fieldName(...)`
class _$PlaystateRequestCWProxyImpl implements _$PlaystateRequestCWProxy {
  const _$PlaystateRequestCWProxyImpl(this._value);

  final PlaystateRequest _value;

  @override
  PlaystateRequest command(PlaystateCommand? command) => this(command: command);

  @override
  PlaystateRequest seekPositionTicks(int? seekPositionTicks) =>
      this(seekPositionTicks: seekPositionTicks);

  @override
  PlaystateRequest controllingUserId(String? controllingUserId) =>
      this(controllingUserId: controllingUserId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaystateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaystateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaystateRequest call({
    Object? command = const $CopyWithPlaceholder(),
    Object? seekPositionTicks = const $CopyWithPlaceholder(),
    Object? controllingUserId = const $CopyWithPlaceholder(),
  }) {
    return PlaystateRequest(
      command: command == const $CopyWithPlaceholder()
          ? _value.command
          // ignore: cast_nullable_to_non_nullable
          : command as PlaystateCommand?,
      seekPositionTicks: seekPositionTicks == const $CopyWithPlaceholder()
          ? _value.seekPositionTicks
          // ignore: cast_nullable_to_non_nullable
          : seekPositionTicks as int?,
      controllingUserId: controllingUserId == const $CopyWithPlaceholder()
          ? _value.controllingUserId
          // ignore: cast_nullable_to_non_nullable
          : controllingUserId as String?,
    );
  }
}

extension $PlaystateRequestCopyWith on PlaystateRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPlaystateRequest.copyWith(...)` or like so:`instanceOfPlaystateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlaystateRequestCWProxy get copyWith => _$PlaystateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaystateRequest _$PlaystateRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PlaystateRequest',
      json,
      ($checkedConvert) {
        final val = PlaystateRequest(
          command: $checkedConvert(
            'Command',
            (v) => $enumDecodeNullable(_$PlaystateCommandEnumMap, v),
          ),
          seekPositionTicks: $checkedConvert(
            'SeekPositionTicks',
            (v) => (v as num?)?.toInt(),
          ),
          controllingUserId: $checkedConvert(
            'ControllingUserId',
            (v) => v as String?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'command': 'Command',
        'seekPositionTicks': 'SeekPositionTicks',
        'controllingUserId': 'ControllingUserId',
      },
    );

Map<String, dynamic> _$PlaystateRequestToJson(PlaystateRequest instance) =>
    <String, dynamic>{
      'Command': ?_$PlaystateCommandEnumMap[instance.command],
      'SeekPositionTicks': ?instance.seekPositionTicks,
      'ControllingUserId': ?instance.controllingUserId,
    };

const _$PlaystateCommandEnumMap = {
  PlaystateCommand.stop: 'Stop',
  PlaystateCommand.pause: 'Pause',
  PlaystateCommand.unpause: 'Unpause',
  PlaystateCommand.nextTrack: 'NextTrack',
  PlaystateCommand.previousTrack: 'PreviousTrack',
  PlaystateCommand.seek: 'Seek',
  PlaystateCommand.rewind: 'Rewind',
  PlaystateCommand.fastForward: 'FastForward',
  PlaystateCommand.playPause: 'PlayPause',
};
