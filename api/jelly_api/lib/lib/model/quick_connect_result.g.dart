// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_connect_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QuickConnectResultCWProxy {
  QuickConnectResult authenticated(bool? authenticated);

  QuickConnectResult secret(String? secret);

  QuickConnectResult code(String? code);

  QuickConnectResult deviceId(String? deviceId);

  QuickConnectResult deviceName(String? deviceName);

  QuickConnectResult appName(String? appName);

  QuickConnectResult appVersion(String? appVersion);

  QuickConnectResult dateAdded(DateTime? dateAdded);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QuickConnectResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QuickConnectResult(...).copyWith(id: 12, name: "My name")
  /// ````
  QuickConnectResult call({
    bool? authenticated,
    String? secret,
    String? code,
    String? deviceId,
    String? deviceName,
    String? appName,
    String? appVersion,
    DateTime? dateAdded,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQuickConnectResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQuickConnectResult.copyWith.fieldName(...)`
class _$QuickConnectResultCWProxyImpl implements _$QuickConnectResultCWProxy {
  const _$QuickConnectResultCWProxyImpl(this._value);

  final QuickConnectResult _value;

  @override
  QuickConnectResult authenticated(bool? authenticated) =>
      this(authenticated: authenticated);

  @override
  QuickConnectResult secret(String? secret) => this(secret: secret);

  @override
  QuickConnectResult code(String? code) => this(code: code);

  @override
  QuickConnectResult deviceId(String? deviceId) => this(deviceId: deviceId);

  @override
  QuickConnectResult deviceName(String? deviceName) =>
      this(deviceName: deviceName);

  @override
  QuickConnectResult appName(String? appName) => this(appName: appName);

  @override
  QuickConnectResult appVersion(String? appVersion) =>
      this(appVersion: appVersion);

  @override
  QuickConnectResult dateAdded(DateTime? dateAdded) =>
      this(dateAdded: dateAdded);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QuickConnectResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QuickConnectResult(...).copyWith(id: 12, name: "My name")
  /// ````
  QuickConnectResult call({
    Object? authenticated = const $CopyWithPlaceholder(),
    Object? secret = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? deviceId = const $CopyWithPlaceholder(),
    Object? deviceName = const $CopyWithPlaceholder(),
    Object? appName = const $CopyWithPlaceholder(),
    Object? appVersion = const $CopyWithPlaceholder(),
    Object? dateAdded = const $CopyWithPlaceholder(),
  }) {
    return QuickConnectResult(
      authenticated: authenticated == const $CopyWithPlaceholder()
          ? _value.authenticated
          // ignore: cast_nullable_to_non_nullable
          : authenticated as bool?,
      secret: secret == const $CopyWithPlaceholder()
          ? _value.secret
          // ignore: cast_nullable_to_non_nullable
          : secret as String?,
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String?,
      deviceId: deviceId == const $CopyWithPlaceholder()
          ? _value.deviceId
          // ignore: cast_nullable_to_non_nullable
          : deviceId as String?,
      deviceName: deviceName == const $CopyWithPlaceholder()
          ? _value.deviceName
          // ignore: cast_nullable_to_non_nullable
          : deviceName as String?,
      appName: appName == const $CopyWithPlaceholder()
          ? _value.appName
          // ignore: cast_nullable_to_non_nullable
          : appName as String?,
      appVersion: appVersion == const $CopyWithPlaceholder()
          ? _value.appVersion
          // ignore: cast_nullable_to_non_nullable
          : appVersion as String?,
      dateAdded: dateAdded == const $CopyWithPlaceholder()
          ? _value.dateAdded
          // ignore: cast_nullable_to_non_nullable
          : dateAdded as DateTime?,
    );
  }
}

extension $QuickConnectResultCopyWith on QuickConnectResult {
  /// Returns a callable class that can be used as follows: `instanceOfQuickConnectResult.copyWith(...)` or like so:`instanceOfQuickConnectResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QuickConnectResultCWProxy get copyWith =>
      _$QuickConnectResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickConnectResult _$QuickConnectResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'QuickConnectResult',
      json,
      ($checkedConvert) {
        final val = QuickConnectResult(
          authenticated: $checkedConvert('Authenticated', (v) => v as bool?),
          secret: $checkedConvert('Secret', (v) => v as String?),
          code: $checkedConvert('Code', (v) => v as String?),
          deviceId: $checkedConvert('DeviceId', (v) => v as String?),
          deviceName: $checkedConvert('DeviceName', (v) => v as String?),
          appName: $checkedConvert('AppName', (v) => v as String?),
          appVersion: $checkedConvert('AppVersion', (v) => v as String?),
          dateAdded: $checkedConvert(
            'DateAdded',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'authenticated': 'Authenticated',
        'secret': 'Secret',
        'code': 'Code',
        'deviceId': 'DeviceId',
        'deviceName': 'DeviceName',
        'appName': 'AppName',
        'appVersion': 'AppVersion',
        'dateAdded': 'DateAdded',
      },
    );

Map<String, dynamic> _$QuickConnectResultToJson(QuickConnectResult instance) =>
    <String, dynamic>{
      'Authenticated': ?instance.authenticated,
      'Secret': ?instance.secret,
      'Code': ?instance.code,
      'DeviceId': ?instance.deviceId,
      'DeviceName': ?instance.deviceName,
      'AppName': ?instance.appName,
      'AppVersion': ?instance.appVersion,
      'DateAdded': ?instance.dateAdded?.toIso8601String(),
    };
