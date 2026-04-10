// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'startup_user_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StartupUserDtoCWProxy {
  StartupUserDto name(String? name);

  StartupUserDto password(String? password);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StartupUserDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StartupUserDto(...).copyWith(id: 12, name: "My name")
  /// ````
  StartupUserDto call({String? name, String? password});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStartupUserDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStartupUserDto.copyWith.fieldName(...)`
class _$StartupUserDtoCWProxyImpl implements _$StartupUserDtoCWProxy {
  const _$StartupUserDtoCWProxyImpl(this._value);

  final StartupUserDto _value;

  @override
  StartupUserDto name(String? name) => this(name: name);

  @override
  StartupUserDto password(String? password) => this(password: password);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StartupUserDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StartupUserDto(...).copyWith(id: 12, name: "My name")
  /// ````
  StartupUserDto call({
    Object? name = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
  }) {
    return StartupUserDto(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String?,
    );
  }
}

extension $StartupUserDtoCopyWith on StartupUserDto {
  /// Returns a callable class that can be used as follows: `instanceOfStartupUserDto.copyWith(...)` or like so:`instanceOfStartupUserDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StartupUserDtoCWProxy get copyWith => _$StartupUserDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartupUserDto _$StartupUserDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StartupUserDto', json, ($checkedConvert) {
      final val = StartupUserDto(
        name: $checkedConvert('Name', (v) => v as String?),
        password: $checkedConvert('Password', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'name': 'Name', 'password': 'Password'});

Map<String, dynamic> _$StartupUserDtoToJson(StartupUserDto instance) =>
    <String, dynamic>{'Name': ?instance.name, 'Password': ?instance.password};
