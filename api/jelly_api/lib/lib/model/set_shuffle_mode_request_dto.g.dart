// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_shuffle_mode_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SetShuffleModeRequestDtoCWProxy {
  SetShuffleModeRequestDto mode(GroupShuffleMode? mode);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetShuffleModeRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetShuffleModeRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SetShuffleModeRequestDto call({GroupShuffleMode? mode});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSetShuffleModeRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSetShuffleModeRequestDto.copyWith.fieldName(...)`
class _$SetShuffleModeRequestDtoCWProxyImpl
    implements _$SetShuffleModeRequestDtoCWProxy {
  const _$SetShuffleModeRequestDtoCWProxyImpl(this._value);

  final SetShuffleModeRequestDto _value;

  @override
  SetShuffleModeRequestDto mode(GroupShuffleMode? mode) => this(mode: mode);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetShuffleModeRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetShuffleModeRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SetShuffleModeRequestDto call({Object? mode = const $CopyWithPlaceholder()}) {
    return SetShuffleModeRequestDto(
      mode: mode == const $CopyWithPlaceholder()
          ? _value.mode
          // ignore: cast_nullable_to_non_nullable
          : mode as GroupShuffleMode?,
    );
  }
}

extension $SetShuffleModeRequestDtoCopyWith on SetShuffleModeRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfSetShuffleModeRequestDto.copyWith(...)` or like so:`instanceOfSetShuffleModeRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SetShuffleModeRequestDtoCWProxy get copyWith =>
      _$SetShuffleModeRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetShuffleModeRequestDto _$SetShuffleModeRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SetShuffleModeRequestDto', json, ($checkedConvert) {
  final val = SetShuffleModeRequestDto(
    mode: $checkedConvert(
      'Mode',
      (v) => $enumDecodeNullable(_$GroupShuffleModeEnumMap, v),
    ),
  );
  return val;
}, fieldKeyMap: const {'mode': 'Mode'});

Map<String, dynamic> _$SetShuffleModeRequestDtoToJson(
  SetShuffleModeRequestDto instance,
) => <String, dynamic>{'Mode': ?_$GroupShuffleModeEnumMap[instance.mode]};

const _$GroupShuffleModeEnumMap = {
  GroupShuffleMode.sorted: 'Sorted',
  GroupShuffleMode.shuffle: 'Shuffle',
};
