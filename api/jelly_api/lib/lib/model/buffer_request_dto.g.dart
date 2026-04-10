// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buffer_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BufferRequestDtoCWProxy {
  BufferRequestDto when_(DateTime? when_);

  BufferRequestDto positionTicks(int? positionTicks);

  BufferRequestDto isPlaying(bool? isPlaying);

  BufferRequestDto playlistItemId(String? playlistItemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BufferRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BufferRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  BufferRequestDto call({
    DateTime? when_,
    int? positionTicks,
    bool? isPlaying,
    String? playlistItemId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBufferRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBufferRequestDto.copyWith.fieldName(...)`
class _$BufferRequestDtoCWProxyImpl implements _$BufferRequestDtoCWProxy {
  const _$BufferRequestDtoCWProxyImpl(this._value);

  final BufferRequestDto _value;

  @override
  BufferRequestDto when_(DateTime? when_) => this(when_: when_);

  @override
  BufferRequestDto positionTicks(int? positionTicks) =>
      this(positionTicks: positionTicks);

  @override
  BufferRequestDto isPlaying(bool? isPlaying) => this(isPlaying: isPlaying);

  @override
  BufferRequestDto playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BufferRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BufferRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  BufferRequestDto call({
    Object? when_ = const $CopyWithPlaceholder(),
    Object? positionTicks = const $CopyWithPlaceholder(),
    Object? isPlaying = const $CopyWithPlaceholder(),
    Object? playlistItemId = const $CopyWithPlaceholder(),
  }) {
    return BufferRequestDto(
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

extension $BufferRequestDtoCopyWith on BufferRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfBufferRequestDto.copyWith(...)` or like so:`instanceOfBufferRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BufferRequestDtoCWProxy get copyWith => _$BufferRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BufferRequestDto _$BufferRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BufferRequestDto',
      json,
      ($checkedConvert) {
        final val = BufferRequestDto(
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

Map<String, dynamic> _$BufferRequestDtoToJson(BufferRequestDto instance) =>
    <String, dynamic>{
      'When': ?instance.when_?.toIso8601String(),
      'PositionTicks': ?instance.positionTicks,
      'IsPlaying': ?instance.isPlaying,
      'PlaylistItemId': ?instance.playlistItemId,
    };
