// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthenticationInfoCWProxy {
  AuthenticationInfo id(int? id);

  AuthenticationInfo accessToken(String? accessToken);

  AuthenticationInfo deviceId(String? deviceId);

  AuthenticationInfo appName(String? appName);

  AuthenticationInfo appVersion(String? appVersion);

  AuthenticationInfo deviceName(String? deviceName);

  AuthenticationInfo userId(String? userId);

  AuthenticationInfo isActive(bool? isActive);

  AuthenticationInfo dateCreated(DateTime? dateCreated);

  AuthenticationInfo dateRevoked(DateTime? dateRevoked);

  AuthenticationInfo dateLastActivity(DateTime? dateLastActivity);

  AuthenticationInfo userName(String? userName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticationInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticationInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticationInfo call({
    int? id,
    String? accessToken,
    String? deviceId,
    String? appName,
    String? appVersion,
    String? deviceName,
    String? userId,
    bool? isActive,
    DateTime? dateCreated,
    DateTime? dateRevoked,
    DateTime? dateLastActivity,
    String? userName,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthenticationInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthenticationInfo.copyWith.fieldName(...)`
class _$AuthenticationInfoCWProxyImpl implements _$AuthenticationInfoCWProxy {
  const _$AuthenticationInfoCWProxyImpl(this._value);

  final AuthenticationInfo _value;

  @override
  AuthenticationInfo id(int? id) => this(id: id);

  @override
  AuthenticationInfo accessToken(String? accessToken) =>
      this(accessToken: accessToken);

  @override
  AuthenticationInfo deviceId(String? deviceId) => this(deviceId: deviceId);

  @override
  AuthenticationInfo appName(String? appName) => this(appName: appName);

  @override
  AuthenticationInfo appVersion(String? appVersion) =>
      this(appVersion: appVersion);

  @override
  AuthenticationInfo deviceName(String? deviceName) =>
      this(deviceName: deviceName);

  @override
  AuthenticationInfo userId(String? userId) => this(userId: userId);

  @override
  AuthenticationInfo isActive(bool? isActive) => this(isActive: isActive);

  @override
  AuthenticationInfo dateCreated(DateTime? dateCreated) =>
      this(dateCreated: dateCreated);

  @override
  AuthenticationInfo dateRevoked(DateTime? dateRevoked) =>
      this(dateRevoked: dateRevoked);

  @override
  AuthenticationInfo dateLastActivity(DateTime? dateLastActivity) =>
      this(dateLastActivity: dateLastActivity);

  @override
  AuthenticationInfo userName(String? userName) => this(userName: userName);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticationInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticationInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticationInfo call({
    Object? id = const $CopyWithPlaceholder(),
    Object? accessToken = const $CopyWithPlaceholder(),
    Object? deviceId = const $CopyWithPlaceholder(),
    Object? appName = const $CopyWithPlaceholder(),
    Object? appVersion = const $CopyWithPlaceholder(),
    Object? deviceName = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? dateCreated = const $CopyWithPlaceholder(),
    Object? dateRevoked = const $CopyWithPlaceholder(),
    Object? dateLastActivity = const $CopyWithPlaceholder(),
    Object? userName = const $CopyWithPlaceholder(),
  }) {
    return AuthenticationInfo(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      accessToken: accessToken == const $CopyWithPlaceholder()
          ? _value.accessToken
          // ignore: cast_nullable_to_non_nullable
          : accessToken as String?,
      deviceId: deviceId == const $CopyWithPlaceholder()
          ? _value.deviceId
          // ignore: cast_nullable_to_non_nullable
          : deviceId as String?,
      appName: appName == const $CopyWithPlaceholder()
          ? _value.appName
          // ignore: cast_nullable_to_non_nullable
          : appName as String?,
      appVersion: appVersion == const $CopyWithPlaceholder()
          ? _value.appVersion
          // ignore: cast_nullable_to_non_nullable
          : appVersion as String?,
      deviceName: deviceName == const $CopyWithPlaceholder()
          ? _value.deviceName
          // ignore: cast_nullable_to_non_nullable
          : deviceName as String?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      dateCreated: dateCreated == const $CopyWithPlaceholder()
          ? _value.dateCreated
          // ignore: cast_nullable_to_non_nullable
          : dateCreated as DateTime?,
      dateRevoked: dateRevoked == const $CopyWithPlaceholder()
          ? _value.dateRevoked
          // ignore: cast_nullable_to_non_nullable
          : dateRevoked as DateTime?,
      dateLastActivity: dateLastActivity == const $CopyWithPlaceholder()
          ? _value.dateLastActivity
          // ignore: cast_nullable_to_non_nullable
          : dateLastActivity as DateTime?,
      userName: userName == const $CopyWithPlaceholder()
          ? _value.userName
          // ignore: cast_nullable_to_non_nullable
          : userName as String?,
    );
  }
}

extension $AuthenticationInfoCopyWith on AuthenticationInfo {
  /// Returns a callable class that can be used as follows: `instanceOfAuthenticationInfo.copyWith(...)` or like so:`instanceOfAuthenticationInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthenticationInfoCWProxy get copyWith =>
      _$AuthenticationInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationInfo _$AuthenticationInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthenticationInfo',
      json,
      ($checkedConvert) {
        final val = AuthenticationInfo(
          id: $checkedConvert('Id', (v) => (v as num?)?.toInt()),
          accessToken: $checkedConvert('AccessToken', (v) => v as String?),
          deviceId: $checkedConvert('DeviceId', (v) => v as String?),
          appName: $checkedConvert('AppName', (v) => v as String?),
          appVersion: $checkedConvert('AppVersion', (v) => v as String?),
          deviceName: $checkedConvert('DeviceName', (v) => v as String?),
          userId: $checkedConvert('UserId', (v) => v as String?),
          isActive: $checkedConvert('IsActive', (v) => v as bool?),
          dateCreated: $checkedConvert(
            'DateCreated',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          dateRevoked: $checkedConvert(
            'DateRevoked',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          dateLastActivity: $checkedConvert(
            'DateLastActivity',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          userName: $checkedConvert('UserName', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'accessToken': 'AccessToken',
        'deviceId': 'DeviceId',
        'appName': 'AppName',
        'appVersion': 'AppVersion',
        'deviceName': 'DeviceName',
        'userId': 'UserId',
        'isActive': 'IsActive',
        'dateCreated': 'DateCreated',
        'dateRevoked': 'DateRevoked',
        'dateLastActivity': 'DateLastActivity',
        'userName': 'UserName',
      },
    );

Map<String, dynamic> _$AuthenticationInfoToJson(AuthenticationInfo instance) =>
    <String, dynamic>{
      'Id': ?instance.id,
      'AccessToken': ?instance.accessToken,
      'DeviceId': ?instance.deviceId,
      'AppName': ?instance.appName,
      'AppVersion': ?instance.appVersion,
      'DeviceName': ?instance.deviceName,
      'UserId': ?instance.userId,
      'IsActive': ?instance.isActive,
      'DateCreated': ?instance.dateCreated?.toIso8601String(),
      'DateRevoked': ?instance.dateRevoked?.toIso8601String(),
      'DateLastActivity': ?instance.dateLastActivity?.toIso8601String(),
      'UserName': ?instance.userName,
    };
