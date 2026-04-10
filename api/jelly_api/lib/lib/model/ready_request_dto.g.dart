// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ready_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReadyRequestDtoCWProxy {
  ReadyRequestDto when_(DateTime? when_);

  ReadyRequestDto positionTicks(int? positionTicks);

  ReadyRequestDto isPlaying(bool? isPlaying);

  ReadyRequestDto playlistItemId(String? playlistItemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReadyRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReadyRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ReadyRequestDto call({
    DateTime? when_,
    int? positionTicks,
    bool? isPlaying,
    String? playlistItemId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReadyRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReadyRequestDto.copyWith.fieldName(...)`
class _$ReadyRequestDtoCWProxyImpl implements _$ReadyRequestDtoCWProxy {
  const _$ReadyRequestDtoCWProxyImpl(this._value);

  final ReadyRequestDto _value;

  @override
  ReadyRequestDto when_(DateTime? when_) => this(when_: when_);

  @override
  ReadyRequestDto positionTicks(int? positionTicks) =>
      this(positionTicks: positionTicks);

  @override
  ReadyRequestDto isPlaying(bool? isPlaying) => this(isPlaying: isPlaying);

  @override
  ReadyRequestDto playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReadyRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReadyRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ReadyRequestDto call({
    Object? when_ = const $CopyWithPlaceholder(),
    Object? positionTicks = const $CopyWithPlaceholder(),
    Object? isPlaying = const $CopyWithPlaceholder(),
    Object? playlistItemId = const $CopyWithPlaceholder(),
  }) {
    return ReadyRequestDto(
      when_: when_ == const $CopyWithPlaceholder()
          ? _value.when_
          // ignore: cast_nullable_to_non_nullable
          : when_ as DateTime?,
      positionTicks: positionTicks == const $CopyWithPlaceholder()
          ? _value.positionTicks
          // ignore: cast_nullable_to_non_nullable
          : positionTicks as int?,
      isPlaying: isPlaying == const $CopyWithPlaceholder()
          ? _value.isPlaying
          // ignore: cast_nullable_to_non_nullable
          : isPlaying as bool?,
      playlistItemId: playlistItemId == const $CopyWithPlaceholder()
          ? _value.playlistItemId
          // ignore: cast_nullable_to_non_nullable
          : playlistItemId as String?,
    );
  }
}

extension $ReadyRequestDtoCopyWith on ReadyRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfReadyRequestDto.copyWith(...)` or like so:`instanceOfReadyRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReadyRequestDtoCWProxy get copyWith => _$ReadyRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReadyRequestDto _$ReadyRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ReadyRequestDto',
      json,
      ($checkedConvert) {
        final val = ReadyRequestDto(
          when_: $checkedConvert(
            'When',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          positionTicks: $checkedConvert(
            'PositionTicks',
            (v) => (v as num?)?.toInt(),
          ),
          isPlaying: $checkedConvert('IsPlaying', (v) => v as bool?),
          playlistItemId: $checkedConvert(
            'PlaylistItemId',
            (v) => v as String?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'when_': 'When',
        'positionTicks': 'PositionTicks',
        'isPlaying': 'IsPlaying',
        'playlistItemId': 'PlaylistItemId',
      },
    );

Map<String, dynamic> _$ReadyRequestDtoToJson(ReadyRequestDto instance) =>
    <String, dynamic>{
      'When': ?instance.when_?.toIso8601String(),
      'PositionTicks': ?instance.positionTicks,
      'IsPlaying': ?instance.isPlaying,
      'PlaylistItemId': ?instance.playlistItemId,
    };
