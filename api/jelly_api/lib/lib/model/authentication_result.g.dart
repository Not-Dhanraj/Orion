// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthenticationResultCWProxy {
  AuthenticationResult user(UserDto? user);

  AuthenticationResult sessionInfo(SessionInfoDto? sessionInfo);

  AuthenticationResult accessToken(String? accessToken);

  AuthenticationResult serverId(String? serverId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticationResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticationResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticationResult call({
    UserDto? user,
    SessionInfoDto? sessionInfo,
    String? accessToken,
    String? serverId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthenticationResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthenticationResult.copyWith.fieldName(...)`
class _$AuthenticationResultCWProxyImpl
    implements _$AuthenticationResultCWProxy {
  const _$AuthenticationResultCWProxyImpl(this._value);

  final AuthenticationResult _value;

  @override
  AuthenticationResult user(UserDto? user) => this(user: user);

  @override
  AuthenticationResult sessionInfo(SessionInfoDto? sessionInfo) =>
      this(sessionInfo: sessionInfo);

  @override
  AuthenticationResult accessToken(String? accessToken) =>
      this(accessToken: accessToken);

  @override
  AuthenticationResult serverId(String? serverId) => this(serverId: serverId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticationResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticationResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticationResult call({
    Object? user = const $CopyWithPlaceholder(),
    Object? sessionInfo = const $CopyWithPlaceholder(),
    Object? accessToken = const $CopyWithPlaceholder(),
    Object? serverId = const $CopyWithPlaceholder(),
  }) {
    return AuthenticationResult(
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as UserDto?,
      sessionInfo: sessionInfo == const $CopyWithPlaceholder()
          ? _value.sessionInfo
          // ignore: cast_nullable_to_non_nullable
          : sessionInfo as SessionInfoDto?,
      accessToken: accessToken == const $CopyWithPlaceholder()
          ? _value.accessToken
          // ignore: cast_nullable_to_non_nullable
          : accessToken as String?,
      serverId: serverId == const $CopyWithPlaceholder()
          ? _value.serverId
          // ignore: cast_nullable_to_non_nullable
          : serverId as String?,
    );
  }
}

extension $AuthenticationResultCopyWith on AuthenticationResult {
  /// Returns a callable class that can be used as follows: `instanceOfAuthenticationResult.copyWith(...)` or like so:`instanceOfAuthenticationResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthenticationResultCWProxy get copyWith =>
      _$AuthenticationResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationResult _$AuthenticationResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AuthenticationResult',
  json,
  ($checkedConvert) {
    final val = AuthenticationResult(
      user: $checkedConvert(
        'User',
        (v) => v == null ? null : UserDto.fromJson(v as Map<String, dynamic>),
      ),
      sessionInfo: $checkedConvert(
        'SessionInfo',
        (v) => v == null
            ? null
            : SessionInfoDto.fromJson(v as Map<String, dynamic>),
      ),
      accessToken: $checkedConvert('AccessToken', (v) => v as String?),
      serverId: $checkedConvert('ServerId', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'user': 'User',
    'sessionInfo': 'SessionInfo',
    'accessToken': 'AccessToken',
    'serverId': 'ServerId',
  },
);

Map<String, dynamic> _$AuthenticationResultToJson(
  AuthenticationResult instance,
) => <String, dynamic>{
  'User': ?instance.user?.toJson(),
  'SessionInfo': ?instance.sessionInfo?.toJson(),
  'AccessToken': ?instance.accessToken,
  'ServerId': ?instance.serverId,
};
