// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_queue_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlayQueueUpdateCWProxy {
  PlayQueueUpdate reason(PlayQueueUpdateReason? reason);

  PlayQueueUpdate lastUpdate(DateTime? lastUpdate);

  PlayQueueUpdate playlist(List<SyncPlayQueueItem>? playlist);

  PlayQueueUpdate playingItemIndex(int? playingItemIndex);

  PlayQueueUpdate startPositionTicks(int? startPositionTicks);

  PlayQueueUpdate isPlaying(bool? isPlaying);

  PlayQueueUpdate shuffleMode(GroupShuffleMode? shuffleMode);

  PlayQueueUpdate repeatMode(GroupRepeatMode? repeatMode);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlayQueueUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlayQueueUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  PlayQueueUpdate call({
    PlayQueueUpdateReason? reason,
    DateTime? lastUpdate,
    List<SyncPlayQueueItem>? playlist,
    int? playingItemIndex,
    int? startPositionTicks,
    bool? isPlaying,
    GroupShuffleMode? shuffleMode,
    GroupRepeatMode? repeatMode,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlayQueueUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlayQueueUpdate.copyWith.fieldName(...)`
class _$PlayQueueUpdateCWProxyImpl implements _$PlayQueueUpdateCWProxy {
  const _$PlayQueueUpdateCWProxyImpl(this._value);

  final PlayQueueUpdate _value;

  @override
  PlayQueueUpdate reason(PlayQueueUpdateReason? reason) => this(reason: reason);

  @override
  PlayQueueUpdate lastUpdate(DateTime? lastUpdate) =>
      this(lastUpdate: lastUpdate);

  @override
  PlayQueueUpdate playlist(List<SyncPlayQueueItem>? playlist) =>
      this(playlist: playlist);

  @override
  PlayQueueUpdate playingItemIndex(int? playingItemIndex) =>
      this(playingItemIndex: playingItemIndex);

  @override
  PlayQueueUpdate startPositionTicks(int? startPositionTicks) =>
      this(startPositionTicks: startPositionTicks);

  @override
  PlayQueueUpdate isPlaying(bool? isPlaying) => this(isPlaying: isPlaying);

  @override
  PlayQueueUpdate shuffleMode(GroupShuffleMode? shuffleMode) =>
      this(shuffleMode: shuffleMode);

  @override
  PlayQueueUpdate repeatMode(GroupRepeatMode? repeatMode) =>
      this(repeatMode: repeatMode);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlayQueueUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlayQueueUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  PlayQueueUpdate call({
    Object? reason = const $CopyWithPlaceholder(),
    Object? lastUpdate = const $CopyWithPlaceholder(),
    Object? playlist = const $CopyWithPlaceholder(),
    Object? playingItemIndex = const $CopyWithPlaceholder(),
    Object? startPositionTicks = const $CopyWithPlaceholder(),
    Object? isPlaying = const $CopyWithPlaceholder(),
    Object? shuffleMode = const $CopyWithPlaceholder(),
    Object? repeatMode = const $CopyWithPlaceholder(),
  }) {
    return PlayQueueUpdate(
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as PlayQueueUpdateReason?,
      lastUpdate: lastUpdate == const $CopyWithPlaceholder()
          ? _value.lastUpdate
          // ignore: cast_nullable_to_non_nullable
          : lastUpdate as DateTime?,
      playlist: playlist == const $CopyWithPlaceholder()
          ? _value.playlist
          // ignore: cast_nullable_to_non_nullable
          : playlist as List<SyncPlayQueueItem>?,
      playingItemIndex: playingItemIndex == const $CopyWithPlaceholder()
          ? _value.playingItemIndex
          // ignore: cast_nullable_to_non_nullable
          : playingItemIndex as int?,
      startPositionTicks: startPositionTicks == const $CopyWithPlaceholder()
          ? _value.startPositionTicks
          // ignore: cast_nullable_to_non_nullable
          : startPositionTicks as int?,
      isPlaying: isPlaying == const $CopyWithPlaceholder()
          ? _value.isPlaying
          // ignore: cast_nullable_to_non_nullable
          : isPlaying as bool?,
      shuffleMode: shuffleMode == const $CopyWithPlaceholder()
          ? _value.shuffleMode
          // ignore: cast_nullable_to_non_nullable
          : shuffleMode as GroupShuffleMode?,
      repeatMode: repeatMode == const $CopyWithPlaceholder()
          ? _value.repeatMode
          // ignore: cast_nullable_to_non_nullable
          : repeatMode as GroupRepeatMode?,
    );
  }
}

extension $PlayQueueUpdateCopyWith on PlayQueueUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfPlayQueueUpdate.copyWith(...)` or like so:`instanceOfPlayQueueUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlayQueueUpdateCWProxy get copyWith => _$PlayQueueUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayQueueUpdate _$PlayQueueUpdateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PlayQueueUpdate',
      json,
      ($checkedConvert) {
        final val = PlayQueueUpdate(
          reason: $checkedConvert(
            'Reason',
            (v) => $enumDecodeNullable(_$PlayQueueUpdateReasonEnumMap, v),
          ),
          lastUpdate: $checkedConvert(
            'LastUpdate',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          playlist: $checkedConvert(
            'Playlist',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => SyncPlayQueueItem.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
          playingItemIndex: $checkedConvert(
            'PlayingItemIndex',
            (v) => (v as num?)?.toInt(),
          ),
          startPositionTicks: $checkedConvert(
            'StartPositionTicks',
            (v) => (v as num?)?.toInt(),
          ),
          isPlaying: $checkedConvert('IsPlaying', (v) => v as bool?),
          shuffleMode: $checkedConvert(
            'ShuffleMode',
            (v) => $enumDecodeNullable(_$GroupShuffleModeEnumMap, v),
          ),
          repeatMode: $checkedConvert(
            'RepeatMode',
            (v) => $enumDecodeNullable(_$GroupRepeatModeEnumMap, v),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'reason': 'Reason',
        'lastUpdate': 'LastUpdate',
        'playlist': 'Playlist',
        'playingItemIndex': 'PlayingItemIndex',
        'startPositionTicks': 'StartPositionTicks',
        'isPlaying': 'IsPlaying',
        'shuffleMode': 'ShuffleMode',
        'repeatMode': 'RepeatMode',
      },
    );

Map<String, dynamic> _$PlayQueueUpdateToJson(PlayQueueUpdate instance) =>
    <String, dynamic>{
      'Reason': ?_$PlayQueueUpdateReasonEnumMap[instance.reason],
      'LastUpdate': ?instance.lastUpdate?.toIso8601String(),
      'Playlist': ?instance.playlist?.map((e) => e.toJson()).toList(),
      'PlayingItemIndex': ?instance.playingItemIndex,
      'StartPositionTicks': ?instance.startPositionTicks,
      'IsPlaying': ?instance.isPlaying,
      'ShuffleMode': ?_$GroupShuffleModeEnumMap[instance.shuffleMode],
      'RepeatMode': ?_$GroupRepeatModeEnumMap[instance.repeatMode],
    };

const _$PlayQueueUpdateReasonEnumMap = {
  PlayQueueUpdateReason.newPlaylist: 'NewPlaylist',
  PlayQueueUpdateReason.setCurrentItem: 'SetCurrentItem',
  PlayQueueUpdateReason.removeItems: 'RemoveItems',
  PlayQueueUpdateReason.moveItem: 'MoveItem',
  PlayQueueUpdateReason.queue: 'Queue',
  PlayQueueUpdateReason.queueNext: 'QueueNext',
  PlayQueueUpdateReason.nextItem: 'NextItem',
  PlayQueueUpdateReason.previousItem: 'PreviousItem',
  PlayQueueUpdateReason.repeatMode: 'RepeatMode',
  PlayQueueUpdateReason.shuffleMode: 'ShuffleMode',
};

const _$GroupShuffleModeEnumMap = {
  GroupShuffleMode.sorted: 'Sorted',
  GroupShuffleMode.shuffle: 'Shuffle',
};

const _$GroupRepeatModeEnumMap = {
  GroupRepeatMode.repeatOne: 'RepeatOne',
  GroupRepeatMode.repeatAll: 'RepeatAll',
  GroupRepeatMode.repeatNone: 'RepeatNone',
};
