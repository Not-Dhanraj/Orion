// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ForgotPasswordDtoCWProxy {
  ForgotPasswordDto enteredUsername(String enteredUsername);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPasswordDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPasswordDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPasswordDto call({String enteredUsername});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfForgotPasswordDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfForgotPasswordDto.copyWith.fieldName(...)`
class _$ForgotPasswordDtoCWProxyImpl implements _$ForgotPasswordDtoCWProxy {
  const _$ForgotPasswordDtoCWProxyImpl(this._value);

  final ForgotPasswordDto _value;

  @override
  ForgotPasswordDto enteredUsername(String enteredUsername) =>
      this(enteredUsername: enteredUsername);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPasswordDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPasswordDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPasswordDto call({
    Object? enteredUsername = const $CopyWithPlaceholder(),
  }) {
    return ForgotPasswordDto(
      enteredUsername: enteredUsername == const $CopyWithPlaceholder()
          ? _value.enteredUsername
          // ignore: cast_nullable_to_non_nullable
          : enteredUsername as String,
    );
  }
}

extension $ForgotPasswordDtoCopyWith on ForgotPasswordDto {
  /// Returns a callable class that can be used as follows: `instanceOfForgotPasswordDto.copyWith(...)` or like so:`instanceOfForgotPasswordDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ForgotPasswordDtoCWProxy get copyWith =>
      _$ForgotPasswordDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPasswordDto _$ForgotPasswordDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ForgotPasswordDto',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['EnteredUsername']);
        final val = ForgotPasswordDto(
          enteredUsername: $checkedConvert(
            'EnteredUsername',
            (v) => v as String,
          ),
        );
        return val;
      },
      fieldKeyMap: const {'enteredUsername': 'EnteredUsername'},
    );

Map<String, dynamic> _$ForgotPasswordDtoToJson(ForgotPasswordDto instance) =>
    <String, dynamic>{'EnteredUsername': instance.enteredUsername};
