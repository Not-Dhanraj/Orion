// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_user_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SessionUserInfoCWProxy {
  SessionUserInfo userId(String? userId);

  SessionUserInfo userName(String? userName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SessionUserInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SessionUserInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  SessionUserInfo call({String? userId, String? userName});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSessionUserInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSessionUserInfo.copyWith.fieldName(...)`
class _$SessionUserInfoCWProxyImpl implements _$SessionUserInfoCWProxy {
  const _$SessionUserInfoCWProxyImpl(this._value);

  final SessionUserInfo _value;

  @override
  SessionUserInfo userId(String? userId) => this(userId: userId);

  @override
  SessionUserInfo userName(String? userName) => this(userName: userName);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SessionUserInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SessionUserInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  SessionUserInfo call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? userName = const $CopyWithPlaceholder(),
  }) {
    return SessionUserInfo(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      userName: userName == const $CopyWithPlaceholder()
          ? _value.userName
          // ignore: cast_nullable_to_non_nullable
          : userName as String?,
    );
  }
}

extension $SessionUserInfoCopyWith on SessionUserInfo {
  /// Returns a callable class that can be used as follows: `instanceOfSessionUserInfo.copyWith(...)` or like so:`instanceOfSessionUserInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SessionUserInfoCWProxy get copyWith => _$SessionUserInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUserInfo _$SessionUserInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SessionUserInfo',
      json,
      ($checkedConvert) {
        final val = SessionUserInfo(
          userId: $checkedConvert('UserId', (v) => v as String?),
          userName: $checkedConvert('UserName', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'userId': 'UserId', 'userName': 'UserName'},
    );

Map<String, dynamic> _$SessionUserInfoToJson(SessionUserInfo instance) =>
    <String, dynamic>{
      'UserId': ?instance.userId,
      'UserName': ?instance.userName,
    };
