// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seek_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SeekRequestDtoCWProxy {
  SeekRequestDto positionTicks(int? positionTicks);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeekRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeekRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SeekRequestDto call({int? positionTicks});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSeekRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSeekRequestDto.copyWith.fieldName(...)`
class _$SeekRequestDtoCWProxyImpl implements _$SeekRequestDtoCWProxy {
  const _$SeekRequestDtoCWProxyImpl(this._value);

  final SeekRequestDto _value;

  @override
  SeekRequestDto positionTicks(int? positionTicks) =>
      this(positionTicks: positionTicks);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeekRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeekRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SeekRequestDto call({Object? positionTicks = const $CopyWithPlaceholder()}) {
    return SeekRequestDto(
      positionTicks: positionTicks == const $CopyWithPlaceholder()
          ? _value.positionTicks
          // ignore: cast_nullable_to_non_nullable
          : positionTicks as int?,
    );
  }
}

extension $SeekRequestDtoCopyWith on SeekRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfSeekRequestDto.copyWith(...)` or like so:`instanceOfSeekRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SeekRequestDtoCWProxy get copyWith => _$SeekRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeekRequestDto _$SeekRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SeekRequestDto', json, ($checkedConvert) {
      final val = SeekRequestDto(
        positionTicks: $checkedConvert(
          'PositionTicks',
          (v) => (v as num?)?.toInt(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'positionTicks': 'PositionTicks'});

Map<String, dynamic> _$SeekRequestDtoToJson(SeekRequestDto instance) =>
    <String, dynamic>{'PositionTicks': ?instance.positionTicks};
