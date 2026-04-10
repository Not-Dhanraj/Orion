// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_user_by_name.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthenticateUserByNameCWProxy {
  AuthenticateUserByName username(String? username);

  AuthenticateUserByName pw(String? pw);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticateUserByName(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticateUserByName(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticateUserByName call({String? username, String? pw});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthenticateUserByName.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthenticateUserByName.copyWith.fieldName(...)`
class _$AuthenticateUserByNameCWProxyImpl
    implements _$AuthenticateUserByNameCWProxy {
  const _$AuthenticateUserByNameCWProxyImpl(this._value);

  final AuthenticateUserByName _value;

  @override
  AuthenticateUserByName username(String? username) => this(username: username);

  @override
  AuthenticateUserByName pw(String? pw) => this(pw: pw);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticateUserByName(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticateUserByName(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticateUserByName call({
    Object? username = const $CopyWithPlaceholder(),
    Object? pw = const $CopyWithPlaceholder(),
  }) {
    return AuthenticateUserByName(
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String?,
      pw: pw == const $CopyWithPlaceholder()
          ? _value.pw
          // ignore: cast_nullable_to_non_nullable
          : pw as String?,
    );
  }
}

extension $AuthenticateUserByNameCopyWith on AuthenticateUserByName {
  /// Returns a callable class that can be used as follows: `instanceOfAuthenticateUserByName.copyWith(...)` or like so:`instanceOfAuthenticateUserByName.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthenticateUserByNameCWProxy get copyWith =>
      _$AuthenticateUserByNameCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticateUserByName _$AuthenticateUserByNameFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AuthenticateUserByName',
  json,
  ($checkedConvert) {
    final val = AuthenticateUserByName(
      username: $checkedConvert('Username', (v) => v as String?),
      pw: $checkedConvert('Pw', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'username': 'Username', 'pw': 'Pw'},
);

Map<String, dynamic> _$AuthenticateUserByNameToJson(
  AuthenticateUserByName instance,
) => <String, dynamic>{'Username': ?instance.username, 'Pw': ?instance.pw};
