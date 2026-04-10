// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlayRequestCWProxy {
  PlayRequest itemIds(List<String>? itemIds);

  PlayRequest startPositionTicks(int? startPositionTicks);

  PlayRequest playCommand(PlayCommand? playCommand);

  PlayRequest controllingUserId(String? controllingUserId);

  PlayRequest subtitleStreamIndex(int? subtitleStreamIndex);

  PlayRequest audioStreamIndex(int? audioStreamIndex);

  PlayRequest mediaSourceId(String? mediaSourceId);

  PlayRequest startIndex(int? startIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlayRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlayRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PlayRequest call({
    List<String>? itemIds,
    int? startPositionTicks,
    PlayCommand? playCommand,
    String? controllingUserId,
    int? subtitleStreamIndex,
    int? audioStreamIndex,
    String? mediaSourceId,
    int? startIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlayRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlayRequest.copyWith.fieldName(...)`
class _$PlayRequestCWProxyImpl implements _$PlayRequestCWProxy {
  const _$PlayRequestCWProxyImpl(this._value);

  final PlayRequest _value;

  @override
  PlayRequest itemIds(List<String>? itemIds) => this(itemIds: itemIds);

  @override
  PlayRequest startPositionTicks(int? startPositionTicks) =>
      this(startPositionTicks: startPositionTicks);

  @override
  PlayRequest playCommand(PlayCommand? playCommand) =>
      this(playCommand: playCommand);

  @override
  PlayRequest controllingUserId(String? controllingUserId) =>
      this(controllingUserId: controllingUserId);

  @override
  PlayRequest subtitleStreamIndex(int? subtitleStreamIndex) =>
      this(subtitleStreamIndex: subtitleStreamIndex);

  @override
  PlayRequest audioStreamIndex(int? audioStreamIndex) =>
      this(audioStreamIndex: audioStreamIndex);

  @override
  PlayRequest mediaSourceId(String? mediaSourceId) =>
      this(mediaSourceId: mediaSourceId);

  @override
  PlayRequest startIndex(int? startIndex) => this(startIndex: startIndex);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlayRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlayRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PlayRequest call({
    Object? itemIds = const $CopyWithPlaceholder(),
    Object? startPositionTicks = const $CopyWithPlaceholder(),
    Object? playCommand = const $CopyWithPlaceholder(),
    Object? controllingUserId = const $CopyWithPlaceholder(),
    Object? subtitleStreamIndex = const $CopyWithPlaceholder(),
    Object? audioStreamIndex = const $CopyWithPlaceholder(),
    Object? mediaSourceId = const $CopyWithPlaceholder(),
    Object? startIndex = const $CopyWithPlaceholder(),
  }) {
    return PlayRequest(
      itemIds: itemIds == const $CopyWithPlaceholder()
          ? _value.itemIds
          // ignore: cast_nullable_to_non_nullable
          : itemIds as List<String>?,
      startPositionTicks: startPositionTicks == const $CopyWithPlaceholder()
          ? _value.startPositionTicks
          // ignore: cast_nullable_to_non_nullable
          : startPositionTicks as int?,
      playCommand: playCommand == const $CopyWithPlaceholder()
          ? _value.playCommand
          // ignore: cast_nullable_to_non_nullable
          : playCommand as PlayCommand?,
      controllingUserId: controllingUserId == const $CopyWithPlaceholder()
          ? _value.controllingUserId
          // ignore: cast_nullable_to_non_nullable
          : controllingUserId as String?,
      subtitleStreamIndex: subtitleStreamIndex == const $CopyWithPlaceholder()
          ? _value.subtitleStreamIndex
          // ignore: cast_nullable_to_non_nullable
          : subtitleStreamIndex as int?,
      audioStreamIndex: audioStreamIndex == const $CopyWithPlaceholder()
          ? _value.audioStreamIndex
          // ignore: cast_nullable_to_non_nullable
          : audioStreamIndex as int?,
      mediaSourceId: mediaSourceId == const $CopyWithPlaceholder()
          ? _value.mediaSourceId
          // ignore: cast_nullable_to_non_nullable
          : mediaSourceId as String?,
      startIndex: startIndex == const $CopyWithPlaceholder()
          ? _value.startIndex
          // ignore: cast_nullable_to_non_nullable
          : startIndex as int?,
    );
  }
}

extension $PlayRequestCopyWith on PlayRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPlayRequest.copyWith(...)` or like so:`instanceOfPlayRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlayRequestCWProxy get copyWith => _$PlayRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayRequest _$PlayRequestFromJson(Map<String, dynamic> json) => $checkedCreate(
  'PlayRequest',
  json,
  ($checkedConvert) {
    final val = PlayRequest(
      itemIds: $checkedConvert(
        'ItemIds',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      startPositionTicks: $checkedConvert(
        'StartPositionTicks',
        (v) => (v as num?)?.toInt(),
      ),
      playCommand: $checkedConvert(
        'PlayCommand',
        (v) => $enumDecodeNullable(_$PlayCommandEnumMap, v),
      ),
      controllingUserId: $checkedConvert(
        'ControllingUserId',
        (v) => v as String?,
      ),
      subtitleStreamIndex: $checkedConvert(
        'SubtitleStreamIndex',
        (v) => (v as num?)?.toInt(),
      ),
      audioStreamIndex: $checkedConvert(
        'AudioStreamIndex',
        (v) => (v as num?)?.toInt(),
      ),
      mediaSourceId: $checkedConvert('MediaSourceId', (v) => v as String?),
      startIndex: $checkedConvert('StartIndex', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'itemIds': 'ItemIds',
    'startPositionTicks': 'StartPositionTicks',
    'playCommand': 'PlayCommand',
    'controllingUserId': 'ControllingUserId',
    'subtitleStreamIndex': 'SubtitleStreamIndex',
    'audioStreamIndex': 'AudioStreamIndex',
    'mediaSourceId': 'MediaSourceId',
    'startIndex': 'StartIndex',
  },
);

Map<String, dynamic> _$PlayRequestToJson(PlayRequest instance) =>
    <String, dynamic>{
      'ItemIds': ?instance.itemIds,
      'StartPositionTicks': ?instance.startPositionTicks,
      'PlayCommand': ?_$PlayCommandEnumMap[instance.playCommand],
      'ControllingUserId': ?instance.controllingUserId,
      'SubtitleStreamIndex': ?instance.subtitleStreamIndex,
      'AudioStreamIndex': ?instance.audioStreamIndex,
      'MediaSourceId': ?instance.mediaSourceId,
      'StartIndex': ?instance.startIndex,
    };

const _$PlayCommandEnumMap = {
  PlayCommand.playNow: 'PlayNow',
  PlayCommand.playNext: 'PlayNext',
  PlayCommand.playLast: 'PlayLast',
  PlayCommand.playInstantMix: 'PlayInstantMix',
  PlayCommand.playShuffle: 'PlayShuffle',
};
