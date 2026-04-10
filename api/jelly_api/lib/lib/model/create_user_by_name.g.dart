// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_by_name.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateUserByNameCWProxy {
  CreateUserByName name(String name);

  CreateUserByName password(String? password);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateUserByName(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateUserByName(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateUserByName call({String name, String? password});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateUserByName.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateUserByName.copyWith.fieldName(...)`
class _$CreateUserByNameCWProxyImpl implements _$CreateUserByNameCWProxy {
  const _$CreateUserByNameCWProxyImpl(this._value);

  final CreateUserByName _value;

  @override
  CreateUserByName name(String name) => this(name: name);

  @override
  CreateUserByName password(String? password) => this(password: password);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateUserByName(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateUserByName(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateUserByName call({
    Object? name = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
  }) {
    return CreateUserByName(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String?,
    );
  }
}

extension $CreateUserByNameCopyWith on CreateUserByName {
  /// Returns a callable class that can be used as follows: `instanceOfCreateUserByName.copyWith(...)` or like so:`instanceOfCreateUserByName.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateUserByNameCWProxy get copyWith => _$CreateUserByNameCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserByName _$CreateUserByNameFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateUserByName', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['Name']);
      final val = CreateUserByName(
        name: $checkedConvert('Name', (v) => v as String),
        password: $checkedConvert('Password', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'name': 'Name', 'password': 'Password'});

Map<String, dynamic> _$CreateUserByNameToJson(CreateUserByName instance) =>
    <String, dynamic>{'Name': instance.name, 'Password': ?instance.password};
