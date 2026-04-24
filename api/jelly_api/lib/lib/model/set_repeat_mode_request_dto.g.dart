// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_repeat_mode_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SetRepeatModeRequestDtoCWProxy {
  SetRepeatModeRequestDto mode(GroupRepeatMode? mode);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetRepeatModeRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetRepeatModeRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SetRepeatModeRequestDto call({GroupRepeatMode? mode});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSetRepeatModeRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSetRepeatModeRequestDto.copyWith.fieldName(...)`
class _$SetRepeatModeRequestDtoCWProxyImpl
    implements _$SetRepeatModeRequestDtoCWProxy {
  const _$SetRepeatModeRequestDtoCWProxyImpl(this._value);

  final SetRepeatModeRequestDto _value;

  @override
  SetRepeatModeRequestDto mode(GroupRepeatMode? mode) => this(mode: mode);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetRepeatModeRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetRepeatModeRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SetRepeatModeRequestDto call({Object? mode = const $CopyWithPlaceholder()}) {
    return SetRepeatModeRequestDto(
      mode: mode == const $CopyWithPlaceholder()
          ? _value.mode
          // ignore: cast_nullable_to_non_nullable
          : mode as GroupRepeatMode?,
    );
  }
}

extension $SetRepeatModeRequestDtoCopyWith on SetRepeatModeRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfSetRepeatModeRequestDto.copyWith(...)` or like so:`instanceOfSetRepeatModeRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SetRepeatModeRequestDtoCWProxy get copyWith =>
      _$SetRepeatModeRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetRepeatModeRequestDto _$SetRepeatModeRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SetRepeatModeRequestDto', json, ($checkedConvert) {
  final val = SetRepeatModeRequestDto(
    mode: $checkedConvert(
      'Mode',
      (v) => $enumDecodeNullable(_$GroupRepeatModeEnumMap, v),
    ),
  );
  return val;
}, fieldKeyMap: const {'mode': 'Mode'});

Map<String, dynamic> _$SetRepeatModeRequestDtoToJson(
  SetRepeatModeRequestDto instance,
) => <String, dynamic>{'Mode': ?_$GroupRepeatModeEnumMap[instance.mode]};

const _$GroupRepeatModeEnumMap = {
  GroupRepeatMode.repeatOne: 'RepeatOne',
  GroupRepeatMode.repeatAll: 'RepeatAll',
  GroupRepeatMode.repeatNone: 'RepeatNone',
};
