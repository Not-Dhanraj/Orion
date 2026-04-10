// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ignore_wait_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IgnoreWaitRequestDtoCWProxy {
  IgnoreWaitRequestDto ignoreWait(bool? ignoreWait);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IgnoreWaitRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IgnoreWaitRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  IgnoreWaitRequestDto call({bool? ignoreWait});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIgnoreWaitRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIgnoreWaitRequestDto.copyWith.fieldName(...)`
class _$IgnoreWaitRequestDtoCWProxyImpl
    implements _$IgnoreWaitRequestDtoCWProxy {
  const _$IgnoreWaitRequestDtoCWProxyImpl(this._value);

  final IgnoreWaitRequestDto _value;

  @override
  IgnoreWaitRequestDto ignoreWait(bool? ignoreWait) =>
      this(ignoreWait: ignoreWait);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IgnoreWaitRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IgnoreWaitRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  IgnoreWaitRequestDto call({
    Object? ignoreWait = const $CopyWithPlaceholder(),
  }) {
    return IgnoreWaitRequestDto(
      ignoreWait: ignoreWait == const $CopyWithPlaceholder()
          ? _value.ignoreWait
          // ignore: cast_nullable_to_non_nullable
          : ignoreWait as bool?,
    );
  }
}

extension $IgnoreWaitRequestDtoCopyWith on IgnoreWaitRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfIgnoreWaitRequestDto.copyWith(...)` or like so:`instanceOfIgnoreWaitRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IgnoreWaitRequestDtoCWProxy get copyWith =>
      _$IgnoreWaitRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IgnoreWaitRequestDto _$IgnoreWaitRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('IgnoreWaitRequestDto', json, ($checkedConvert) {
  final val = IgnoreWaitRequestDto(
    ignoreWait: $checkedConvert('IgnoreWait', (v) => v as bool?),
  );
  return val;
}, fieldKeyMap: const {'ignoreWait': 'IgnoreWait'});

Map<String, dynamic> _$IgnoreWaitRequestDtoToJson(
  IgnoreWaitRequestDto instance,
) => <String, dynamic>{'IgnoreWait': ?instance.ignoreWait};
