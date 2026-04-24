// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_state_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GroupStateUpdateCWProxy {
  GroupStateUpdate state(GroupStateType? state);

  GroupStateUpdate reason(PlaybackRequestType? reason);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GroupStateUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GroupStateUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  GroupStateUpdate call({GroupStateType? state, PlaybackRequestType? reason});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGroupStateUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGroupStateUpdate.copyWith.fieldName(...)`
class _$GroupStateUpdateCWProxyImpl implements _$GroupStateUpdateCWProxy {
  const _$GroupStateUpdateCWProxyImpl(this._value);

  final GroupStateUpdate _value;

  @override
  GroupStateUpdate state(GroupStateType? state) => this(state: state);

  @override
  GroupStateUpdate reason(PlaybackRequestType? reason) => this(reason: reason);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GroupStateUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GroupStateUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  GroupStateUpdate call({
    Object? state = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
  }) {
    return GroupStateUpdate(
      state: state == const $CopyWithPlaceholder()
          ? _value.state
          // ignore: cast_nullable_to_non_nullable
          : state as GroupStateType?,
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as PlaybackRequestType?,
    );
  }
}

extension $GroupStateUpdateCopyWith on GroupStateUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfGroupStateUpdate.copyWith(...)` or like so:`instanceOfGroupStateUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GroupStateUpdateCWProxy get copyWith => _$GroupStateUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupStateUpdate _$GroupStateUpdateFromJson(Map<String, dynamic> json) =>
    $checkedCreate('GroupStateUpdate', json, ($checkedConvert) {
      final val = GroupStateUpdate(
        state: $checkedConvert(
          'State',
          (v) => $enumDecodeNullable(_$GroupStateTypeEnumMap, v),
        ),
        reason: $checkedConvert(
          'Reason',
          (v) => $enumDecodeNullable(_$PlaybackRequestTypeEnumMap, v),
        ),
      );
      return val;
    }, fieldKeyMap: const {'state': 'State', 'reason': 'Reason'});

Map<String, dynamic> _$GroupStateUpdateToJson(GroupStateUpdate instance) =>
    <String, dynamic>{
      'State': ?_$GroupStateTypeEnumMap[instance.state],
      'Reason': ?_$PlaybackRequestTypeEnumMap[instance.reason],
    };

const _$GroupStateTypeEnumMap = {
  GroupStateType.idle: 'Idle',
  GroupStateType.waiting: 'Waiting',
  GroupStateType.paused: 'Paused',
  GroupStateType.playing: 'Playing',
};

const _$PlaybackRequestTypeEnumMap = {
  PlaybackRequestType.play: 'Play',
  PlaybackRequestType.setPlaylistItem: 'SetPlaylistItem',
  PlaybackRequestType.removeFromPlaylist: 'RemoveFromPlaylist',
  PlaybackRequestType.movePlaylistItem: 'MovePlaylistItem',
  PlaybackRequestType.queue: 'Queue',
  PlaybackRequestType.unpause: 'Unpause',
  PlaybackRequestType.pause: 'Pause',
  PlaybackRequestType.stop: 'Stop',
  PlaybackRequestType.seek: 'Seek',
  PlaybackRequestType.buffer: 'Buffer',
  PlaybackRequestType.ready: 'Ready',
  PlaybackRequestType.nextItem: 'NextItem',
  PlaybackRequestType.previousItem: 'PreviousItem',
  PlaybackRequestType.setRepeatMode: 'SetRepeatMode',
  PlaybackRequestType.setShuffleMode: 'SetShuffleMode',
  PlaybackRequestType.ping: 'Ping',
  PlaybackRequestType.ignoreWait: 'IgnoreWait',
};
