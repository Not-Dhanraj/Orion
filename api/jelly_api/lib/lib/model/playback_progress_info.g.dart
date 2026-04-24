// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_progress_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaybackProgressInfoCWProxy {
  PlaybackProgressInfo canSeek(bool? canSeek);

  PlaybackProgressInfo item(BaseItemDto? item);

  PlaybackProgressInfo itemId(String? itemId);

  PlaybackProgressInfo sessionId(String? sessionId);

  PlaybackProgressInfo mediaSourceId(String? mediaSourceId);

  PlaybackProgressInfo audioStreamIndex(int? audioStreamIndex);

  PlaybackProgressInfo subtitleStreamIndex(int? subtitleStreamIndex);

  PlaybackProgressInfo isPaused(bool? isPaused);

  PlaybackProgressInfo isMuted(bool? isMuted);

  PlaybackProgressInfo positionTicks(int? positionTicks);

  PlaybackProgressInfo playbackStartTimeTicks(int? playbackStartTimeTicks);

  PlaybackProgressInfo volumeLevel(int? volumeLevel);

  PlaybackProgressInfo brightness(int? brightness);

  PlaybackProgressInfo aspectRatio(String? aspectRatio);

  PlaybackProgressInfo playMethod(PlayMethod? playMethod);

  PlaybackProgressInfo liveStreamId(String? liveStreamId);

  PlaybackProgressInfo playSessionId(String? playSessionId);

  PlaybackProgressInfo repeatMode(RepeatMode? repeatMode);

  PlaybackProgressInfo playbackOrder(PlaybackOrder? playbackOrder);

  PlaybackProgressInfo nowPlayingQueue(List<QueueItem>? nowPlayingQueue);

  PlaybackProgressInfo playlistItemId(String? playlistItemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaybackProgressInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaybackProgressInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaybackProgressInfo call({
    bool? canSeek,
    BaseItemDto? item,
    String? itemId,
    String? sessionId,
    String? mediaSourceId,
    int? audioStreamIndex,
    int? subtitleStreamIndex,
    bool? isPaused,
    bool? isMuted,
    int? positionTicks,
    int? playbackStartTimeTicks,
    int? volumeLevel,
    int? brightness,
    String? aspectRatio,
    PlayMethod? playMethod,
    String? liveStreamId,
    String? playSessionId,
    RepeatMode? repeatMode,
    PlaybackOrder? playbackOrder,
    List<QueueItem>? nowPlayingQueue,
    String? playlistItemId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlaybackProgressInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlaybackProgressInfo.copyWith.fieldName(...)`
class _$PlaybackProgressInfoCWProxyImpl
    implements _$PlaybackProgressInfoCWProxy {
  const _$PlaybackProgressInfoCWProxyImpl(this._value);

  final PlaybackProgressInfo _value;

  @override
  PlaybackProgressInfo canSeek(bool? canSeek) => this(canSeek: canSeek);

  @override
  PlaybackProgressInfo item(BaseItemDto? item) => this(item: item);

  @override
  PlaybackProgressInfo itemId(String? itemId) => this(itemId: itemId);

  @override
  PlaybackProgressInfo sessionId(String? sessionId) =>
      this(sessionId: sessionId);

  @override
  PlaybackProgressInfo mediaSourceId(String? mediaSourceId) =>
      this(mediaSourceId: mediaSourceId);

  @override
  PlaybackProgressInfo audioStreamIndex(int? audioStreamIndex) =>
      this(audioStreamIndex: audioStreamIndex);

  @override
  PlaybackProgressInfo subtitleStreamIndex(int? subtitleStreamIndex) =>
      this(subtitleStreamIndex: subtitleStreamIndex);

  @override
  PlaybackProgressInfo isPaused(bool? isPaused) => this(isPaused: isPaused);

  @override
  PlaybackProgressInfo isMuted(bool? isMuted) => this(isMuted: isMuted);

  @override
  PlaybackProgressInfo positionTicks(int? positionTicks) =>
      this(positionTicks: positionTicks);

  @override
  PlaybackProgressInfo playbackStartTimeTicks(int? playbackStartTimeTicks) =>
      this(playbackStartTimeTicks: playbackStartTimeTicks);

  @override
  PlaybackProgressInfo volumeLevel(int? volumeLevel) =>
      this(volumeLevel: volumeLevel);

  @override
  PlaybackProgressInfo brightness(int? brightness) =>
      this(brightness: brightness);

  @override
  PlaybackProgressInfo aspectRatio(String? aspectRatio) =>
      this(aspectRatio: aspectRatio);

  @override
  PlaybackProgressInfo playMethod(PlayMethod? playMethod) =>
      this(playMethod: playMethod);

  @override
  PlaybackProgressInfo liveStreamId(String? liveStreamId) =>
      this(liveStreamId: liveStreamId);

  @override
  PlaybackProgressInfo playSessionId(String? playSessionId) =>
      this(playSessionId: playSessionId);

  @override
  PlaybackProgressInfo repeatMode(RepeatMode? repeatMode) =>
      this(repeatMode: repeatMode);

  @override
  PlaybackProgressInfo playbackOrder(PlaybackOrder? playbackOrder) =>
      this(playbackOrder: playbackOrder);

  @override
  PlaybackProgressInfo nowPlayingQueue(List<QueueItem>? nowPlayingQueue) =>
      this(nowPlayingQueue: nowPlayingQueue);

  @override
  PlaybackProgressInfo playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaybackProgressInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaybackProgressInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaybackProgressInfo call({
    Object? canSeek = const $CopyWithPlaceholder(),
    Object? item = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? sessionId = const $CopyWithPlaceholder(),
    Object? mediaSourceId = const $CopyWithPlaceholder(),
    Object? audioStreamIndex = const $CopyWithPlaceholder(),
    Object? subtitleStreamIndex = const $CopyWithPlaceholder(),
    Object? isPaused = const $CopyWithPlaceholder(),
    Object? isMuted = const $CopyWithPlaceholder(),
    Object? positionTicks = const $CopyWithPlaceholder(),
    Object? playbackStartTimeTicks = const $CopyWithPlaceholder(),
    Object? volumeLevel = const $CopyWithPlaceholder(),
    Object? brightness = const $CopyWithPlaceholder(),
    Object? aspectRatio = const $CopyWithPlaceholder(),
    Object? playMethod = const $CopyWithPlaceholder(),
    Object? liveStreamId = const $CopyWithPlaceholder(),
    Object? playSessionId = const $CopyWithPlaceholder(),
    Object? repeatMode = const $CopyWithPlaceholder(),
    Object? playbackOrder = const $CopyWithPlaceholder(),
    Object? nowPlayingQueue = const $CopyWithPlaceholder(),
    Object? playlistItemId = const $CopyWithPlaceholder(),
  }) {
    return PlaybackProgressInfo(
      canSeek: canSeek == const $CopyWithPlaceholder()
          ? _value.canSeek
          // ignore: cast_nullable_to_non_nullable
          : canSeek as bool?,
      item: item == const $CopyWithPlaceholder()
          ? _value.item
          // ignore: cast_nullable_to_non_nullable
          : item as BaseItemDto?,
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      sessionId: sessionId == const $CopyWithPlaceholder()
          ? _value.sessionId
          // ignore: cast_nullable_to_non_nullable
          : sessionId as String?,
      mediaSourceId: mediaSourceId == const $CopyWithPlaceholder()
          ? _value.mediaSourceId
          // ignore: cast_nullable_to_non_nullable
          : mediaSourceId as String?,
      audioStreamIndex: audioStreamIndex == const $CopyWithPlaceholder()
          ? _value.audioStreamIndex
          // ignore: cast_nullable_to_non_nullable
          : audioStreamIndex as int?,
      subtitleStreamIndex: subtitleStreamIndex == const $CopyWithPlaceholder()
          ? _value.subtitleStreamIndex
          // ignore: cast_nullable_to_non_nullable
          : subtitleStreamIndex as int?,
      isPaused: isPaused == const $CopyWithPlaceholder()
          ? _value.isPaused
          // ignore: cast_nullable_to_non_nullable
          : isPaused as bool?,
      isMuted: isMuted == const $CopyWithPlaceholder()
          ? _value.isMuted
          // ignore: cast_nullable_to_non_nullable
          : isMuted as bool?,
      positionTicks: positionTicks == const $CopyWithPlaceholder()
          ? _value.positionTicks
          // ignore: cast_nullable_to_non_nullable
          : positionTicks as int?,
      playbackStartTimeTicks:
          playbackStartTimeTicks == const $CopyWithPlaceholder()
          ? _value.playbackStartTimeTicks
          // ignore: cast_nullable_to_non_nullable
          : playbackStartTimeTicks as int?,
      volumeLevel: volumeLevel == const $CopyWithPlaceholder()
          ? _value.volumeLevel
          // ignore: cast_nullable_to_non_nullable
          : volumeLevel as int?,
      brightness: brightness == const $CopyWithPlaceholder()
          ? _value.brightness
          // ignore: cast_nullable_to_non_nullable
          : brightness as int?,
      aspectRatio: aspectRatio == const $CopyWithPlaceholder()
          ? _value.aspectRatio
          // ignore: cast_nullable_to_non_nullable
          : aspectRatio as String?,
      playMethod: playMethod == const $CopyWithPlaceholder()
          ? _value.playMethod
          // ignore: cast_nullable_to_non_nullable
          : playMethod as PlayMethod?,
      liveStreamId: liveStreamId == const $CopyWithPlaceholder()
          ? _value.liveStreamId
          // ignore: cast_nullable_to_non_nullable
          : liveStreamId as String?,
      playSessionId: playSessionId == const $CopyWithPlaceholder()
          ? _value.playSessionId
          // ignore: cast_nullable_to_non_nullable
          : playSessionId as String?,
      repeatMode: repeatMode == const $CopyWithPlaceholder()
          ? _value.repeatMode
          // ignore: cast_nullable_to_non_nullable
          : repeatMode as RepeatMode?,
      playbackOrder: playbackOrder == const $CopyWithPlaceholder()
          ? _value.playbackOrder
          // ignore: cast_nullable_to_non_nullable
          : playbackOrder as PlaybackOrder?,
      nowPlayingQueue: nowPlayingQueue == const $CopyWithPlaceholder()
          ? _value.nowPlayingQueue
          // ignore: cast_nullable_to_non_nullable
          : nowPlayingQueue as List<QueueItem>?,
      playlistItemId: playlistItemId == const $CopyWithPlaceholder()
          ? _value.playlistItemId
          // ignore: cast_nullable_to_non_nullable
          : playlistItemId as String?,
    );
  }
}

extension $PlaybackProgressInfoCopyWith on PlaybackProgressInfo {
  /// Returns a callable class that can be used as follows: `instanceOfPlaybackProgressInfo.copyWith(...)` or like so:`instanceOfPlaybackProgressInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlaybackProgressInfoCWProxy get copyWith =>
      _$PlaybackProgressInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaybackProgressInfo _$PlaybackProgressInfoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PlaybackProgressInfo',
  json,
  ($checkedConvert) {
    final val = PlaybackProgressInfo(
      canSeek: $checkedConvert('CanSeek', (v) => v as bool?),
      item: $checkedConvert(
        'Item',
        (v) =>
            v == null ? null : BaseItemDto.fromJson(v as Map<String, dynamic>),
      ),
      itemId: $checkedConvert('ItemId', (v) => v as String?),
      sessionId: $checkedConvert('SessionId', (v) => v as String?),
      mediaSourceId: $checkedConvert('MediaSourceId', (v) => v as String?),
      audioStreamIndex: $checkedConvert(
        'AudioStreamIndex',
        (v) => (v as num?)?.toInt(),
      ),
      subtitleStreamIndex: $checkedConvert(
        'SubtitleStreamIndex',
        (v) => (v as num?)?.toInt(),
      ),
      isPaused: $checkedConvert('IsPaused', (v) => v as bool?),
      isMuted: $checkedConvert('IsMuted', (v) => v as bool?),
      positionTicks: $checkedConvert(
        'PositionTicks',
        (v) => (v as num?)?.toInt(),
      ),
      playbackStartTimeTicks: $checkedConvert(
        'PlaybackStartTimeTicks',
        (v) => (v as num?)?.toInt(),
      ),
      volumeLevel: $checkedConvert('VolumeLevel', (v) => (v as num?)?.toInt()),
      brightness: $checkedConvert('Brightness', (v) => (v as num?)?.toInt()),
      aspectRatio: $checkedConvert('AspectRatio', (v) => v as String?),
      playMethod: $checkedConvert(
        'PlayMethod',
        (v) => $enumDecodeNullable(_$PlayMethodEnumMap, v),
      ),
      liveStreamId: $checkedConvert('LiveStreamId', (v) => v as String?),
      playSessionId: $checkedConvert('PlaySessionId', (v) => v as String?),
      repeatMode: $checkedConvert(
        'RepeatMode',
        (v) => $enumDecodeNullable(_$RepeatModeEnumMap, v),
      ),
      playbackOrder: $checkedConvert(
        'PlaybackOrder',
        (v) => $enumDecodeNullable(_$PlaybackOrderEnumMap, v),
      ),
      nowPlayingQueue: $checkedConvert(
        'NowPlayingQueue',
        (v) => (v as List<dynamic>?)
            ?.map((e) => QueueItem.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      playlistItemId: $checkedConvert('PlaylistItemId', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'canSeek': 'CanSeek',
    'item': 'Item',
    'itemId': 'ItemId',
    'sessionId': 'SessionId',
    'mediaSourceId': 'MediaSourceId',
    'audioStreamIndex': 'AudioStreamIndex',
    'subtitleStreamIndex': 'SubtitleStreamIndex',
    'isPaused': 'IsPaused',
    'isMuted': 'IsMuted',
    'positionTicks': 'PositionTicks',
    'playbackStartTimeTicks': 'PlaybackStartTimeTicks',
    'volumeLevel': 'VolumeLevel',
    'brightness': 'Brightness',
    'aspectRatio': 'AspectRatio',
    'playMethod': 'PlayMethod',
    'liveStreamId': 'LiveStreamId',
    'playSessionId': 'PlaySessionId',
    'repeatMode': 'RepeatMode',
    'playbackOrder': 'PlaybackOrder',
    'nowPlayingQueue': 'NowPlayingQueue',
    'playlistItemId': 'PlaylistItemId',
  },
);

Map<String, dynamic> _$PlaybackProgressInfoToJson(
  PlaybackProgressInfo instance,
) => <String, dynamic>{
  'CanSeek': ?instance.canSeek,
  'Item': ?instance.item?.toJson(),
  'ItemId': ?instance.itemId,
  'SessionId': ?instance.sessionId,
  'MediaSourceId': ?instance.mediaSourceId,
  'AudioStreamIndex': ?instance.audioStreamIndex,
  'SubtitleStreamIndex': ?instance.subtitleStreamIndex,
  'IsPaused': ?instance.isPaused,
  'IsMuted': ?instance.isMuted,
  'PositionTicks': ?instance.positionTicks,
  'PlaybackStartTimeTicks': ?instance.playbackStartTimeTicks,
  'VolumeLevel': ?instance.volumeLevel,
  'Brightness': ?instance.brightness,
  'AspectRatio': ?instance.aspectRatio,
  'PlayMethod': ?_$PlayMethodEnumMap[instance.playMethod],
  'LiveStreamId': ?instance.liveStreamId,
  'PlaySessionId': ?instance.playSessionId,
  'RepeatMode': ?_$RepeatModeEnumMap[instance.repeatMode],
  'PlaybackOrder': ?_$PlaybackOrderEnumMap[instance.playbackOrder],
  'NowPlayingQueue': ?instance.nowPlayingQueue?.map((e) => e.toJson()).toList(),
  'PlaylistItemId': ?instance.playlistItemId,
};

const _$PlayMethodEnumMap = {
  PlayMethod.transcode: 'Transcode',
  PlayMethod.directStream: 'DirectStream',
  PlayMethod.directPlay: 'DirectPlay',
};

const _$RepeatModeEnumMap = {
  RepeatMode.repeatNone: 'RepeatNone',
  RepeatMode.repeatAll: 'RepeatAll',
  RepeatMode.repeatOne: 'RepeatOne',
};

const _$PlaybackOrderEnumMap = {
  PlaybackOrder.default_: 'Default',
  PlaybackOrder.shuffle: 'Shuffle',
};
