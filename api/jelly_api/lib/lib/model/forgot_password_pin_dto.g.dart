// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_pin_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ForgotPasswordPinDtoCWProxy {
  ForgotPasswordPinDto pin(String pin);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPasswordPinDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPasswordPinDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPasswordPinDto call({String pin});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfForgotPasswordPinDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfForgotPasswordPinDto.copyWith.fieldName(...)`
class _$ForgotPasswordPinDtoCWProxyImpl
    implements _$ForgotPasswordPinDtoCWProxy {
  const _$ForgotPasswordPinDtoCWProxyImpl(this._value);

  final ForgotPasswordPinDto _value;

  @override
  ForgotPasswordPinDto pin(String pin) => this(pin: pin);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPasswordPinDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPasswordPinDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPasswordPinDto call({Object? pin = const $CopyWithPlaceholder()}) {
    return ForgotPasswordPinDto(
      pin: pin == const $CopyWithPlaceholder()
          ? _value.pin
          // ignore: cast_nullable_to_non_nullable
          : pin as String,
    );
  }
}

extension $ForgotPasswordPinDtoCopyWith on ForgotPasswordPinDto {
  /// Returns a callable class that can be used as follows: `instanceOfForgotPasswordPinDto.copyWith(...)` or like so:`instanceOfForgotPasswordPinDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ForgotPasswordPinDtoCWProxy get copyWith =>
      _$ForgotPasswordPinDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPasswordPinDto _$ForgotPasswordPinDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ForgotPasswordPinDto', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['Pin']);
  final val = ForgotPasswordPinDto(
    pin: $checkedConvert('Pin', (v) => v as String),
  );
  return val;
}, fieldKeyMap: const {'pin': 'Pin'});

Map<String, dynamic> _$ForgotPasswordPinDtoToJson(
  ForgotPasswordPinDto instance,
) => <String, dynamic>{'Pin': instance.pin};
