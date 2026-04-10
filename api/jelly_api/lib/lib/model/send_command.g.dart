// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_command.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SendCommandCWProxy {
  SendCommand groupId(String? groupId);

  SendCommand playlistItemId(String? playlistItemId);

  SendCommand when_(DateTime? when_);

  SendCommand positionTicks(int? positionTicks);

  SendCommand command(SendCommandType? command);

  SendCommand emittedAt(DateTime? emittedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SendCommand(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SendCommand(...).copyWith(id: 12, name: "My name")
  /// ````
  SendCommand call({
    String? groupId,
    String? playlistItemId,
    DateTime? when_,
    int? positionTicks,
    SendCommandType? command,
    DateTime? emittedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSendCommand.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSendCommand.copyWith.fieldName(...)`
class _$SendCommandCWProxyImpl implements _$SendCommandCWProxy {
  const _$SendCommandCWProxyImpl(this._value);

  final SendCommand _value;

  @override
  SendCommand groupId(String? groupId) => this(groupId: groupId);

  @override
  SendCommand playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  SendCommand when_(DateTime? when_) => this(when_: when_);

  @override
  SendCommand positionTicks(int? positionTicks) =>
      this(positionTicks: positionTicks);

  @override
  SendCommand command(SendCommandType? command) => this(command: command);

  @override
  SendCommand emittedAt(DateTime? emittedAt) => this(emittedAt: emittedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SendCommand(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SendCommand(...).copyWith(id: 12, name: "My name")
  /// ````
  SendCommand call({
    Object? groupId = const $CopyWithPlaceholder(),
    Object? playlistItemId = const $CopyWithPlaceholder(),
    Object? when_ = const $CopyWithPlaceholder(),
    Object? positionTicks = const $CopyWithPlaceholder(),
    Object? command = const $CopyWithPlaceholder(),
    Object? emittedAt = const $CopyWithPlaceholder(),
  }) {
    return SendCommand(
      groupId: groupId == const $CopyWithPlaceholder()
          ? _value.groupId
          // ignore: cast_nullable_to_non_nullable
          : groupId as String?,
      playlistItemId: playlistItemId == const $CopyWithPlaceholder()
          ? _value.playlistItemId
          // ignore: cast_nullable_to_non_nullable
          : playlistItemId as String?,
      when_: when_ == const $CopyWithPlaceholder()
          ? _value.when_
          // ignore: cast_nullable_to_non_nullable
          : when_ as DateTime?,
      positionTicks: positionTicks == const $CopyWithPlaceholder()
          ? _value.positionTicks
          // ignore: cast_nullable_to_non_nullable
          : positionTicks as int?,
      command: command == const $CopyWithPlaceholder()
          ? _value.command
          // ignore: cast_nullable_to_non_nullable
          : command as SendCommandType?,
      emittedAt: emittedAt == const $CopyWithPlaceholder()
          ? _value.emittedAt
          // ignore: cast_nullable_to_non_nullable
          : emittedAt as DateTime?,
    );
  }
}

extension $SendCommandCopyWith on SendCommand {
  /// Returns a callable class that can be used as follows: `instanceOfSendCommand.copyWith(...)` or like so:`instanceOfSendCommand.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SendCommandCWProxy get copyWith => _$SendCommandCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendCommand _$SendCommandFromJson(Map<String, dynamic> json) => $checkedCreate(
  'SendCommand',
  json,
  ($checkedConvert) {
    final val = SendCommand(
      groupId: $checkedConvert('GroupId', (v) => v as String?),
      playlistItemId: $checkedConvert('PlaylistItemId', (v) => v as String?),
      when_: $checkedConvert(
        'When',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      positionTicks: $checkedConvert(
        'PositionTicks',
        (v) => (v as num?)?.toInt(),
      ),
      command: $checkedConvert(
        'Command',
        (v) => $enumDecodeNullable(_$SendCommandTypeEnumMap, v),
      ),
      emittedAt: $checkedConvert(
        'EmittedAt',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'groupId': 'GroupId',
    'playlistItemId': 'PlaylistItemId',
    'when_': 'When',
    'positionTicks': 'PositionTicks',
    'command': 'Command',
    'emittedAt': 'EmittedAt',
  },
);

Map<String, dynamic> _$SendCommandToJson(SendCommand instance) =>
    <String, dynamic>{
      'GroupId': ?instance.groupId,
      'PlaylistItemId': ?instance.playlistItemId,
      'When': ?instance.when_?.toIso8601String(),
      'PositionTicks': ?instance.positionTicks,
      'Command': ?_$SendCommandTypeEnumMap[instance.command],
      'EmittedAt': ?instance.emittedAt?.toIso8601String(),
    };

const _$SendCommandTypeEnumMap = {
  SendCommandType.unpause: 'Unpause',
  SendCommandType.pause: 'Pause',
  SendCommandType.stop: 'Stop',
  SendCommandType.seek: 'Seek',
};
