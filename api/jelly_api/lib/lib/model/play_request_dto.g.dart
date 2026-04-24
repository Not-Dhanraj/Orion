// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlayRequestDtoCWProxy {
  PlayRequestDto playingQueue(List<String>? playingQueue);

  PlayRequestDto playingItemPosition(int? playingItemPosition);

  PlayRequestDto startPositionTicks(int? startPositionTicks);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlayRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlayRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  PlayRequestDto call({
    List<String>? playingQueue,
    int? playingItemPosition,
    int? startPositionTicks,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlayRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlayRequestDto.copyWith.fieldName(...)`
class _$PlayRequestDtoCWProxyImpl implements _$PlayRequestDtoCWProxy {
  const _$PlayRequestDtoCWProxyImpl(this._value);

  final PlayRequestDto _value;

  @override
  PlayRequestDto playingQueue(List<String>? playingQueue) =>
      this(playingQueue: playingQueue);

  @override
  PlayRequestDto playingItemPosition(int? playingItemPosition) =>
      this(playingItemPosition: playingItemPosition);

  @override
  PlayRequestDto startPositionTicks(int? startPositionTicks) =>
      this(startPositionTicks: startPositionTicks);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlayRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlayRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  PlayRequestDto call({
    Object? playingQueue = const $CopyWithPlaceholder(),
    Object? playingItemPosition = const $CopyWithPlaceholder(),
    Object? startPositionTicks = const $CopyWithPlaceholder(),
  }) {
    return PlayRequestDto(
      playingQueue: playingQueue == const $CopyWithPlaceholder()
          ? _value.playingQueue
          // ignore: cast_nullable_to_non_nullable
          : playingQueue as List<String>?,
      playingItemPosition: playingItemPosition == const $CopyWithPlaceholder()
          ? _value.playingItemPosition
          // ignore: cast_nullable_to_non_nullable
          : playingItemPosition as int?,
      startPositionTicks: startPositionTicks == const $CopyWithPlaceholder()
          ? _value.startPositionTicks
          // ignore: cast_nullable_to_non_nullable
          : startPositionTicks as int?,
    );
  }
}

extension $PlayRequestDtoCopyWith on PlayRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfPlayRequestDto.copyWith(...)` or like so:`instanceOfPlayRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlayRequestDtoCWProxy get copyWith => _$PlayRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayRequestDto _$PlayRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PlayRequestDto',
      json,
      ($checkedConvert) {
        final val = PlayRequestDto(
          playingQueue: $checkedConvert(
            'PlayingQueue',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          playingItemPosition: $checkedConvert(
            'PlayingItemPosition',
            (v) => (v as num?)?.toInt(),
          ),
          startPositionTicks: $checkedConvert(
            'StartPositionTicks',
            (v) => (v as num?)?.toInt(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'playingQueue': 'PlayingQueue',
        'playingItemPosition': 'PlayingItemPosition',
        'startPositionTicks': 'StartPositionTicks',
      },
    );

Map<String, dynamic> _$PlayRequestDtoToJson(PlayRequestDto instance) =>
    <String, dynamic>{
      'PlayingQueue': ?instance.playingQueue,
      'PlayingItemPosition': ?instance.playingItemPosition,
      'StartPositionTicks': ?instance.startPositionTicks,
    };
