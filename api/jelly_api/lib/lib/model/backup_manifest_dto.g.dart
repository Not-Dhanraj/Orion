// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_manifest_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BackupManifestDtoCWProxy {
  BackupManifestDto serverVersion(String? serverVersion);

  BackupManifestDto backupEngineVersion(String? backupEngineVersion);

  BackupManifestDto dateCreated(DateTime? dateCreated);

  BackupManifestDto path(String? path);

  BackupManifestDto options(BackupOptionsDto? options);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BackupManifestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BackupManifestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  BackupManifestDto call({
    String? serverVersion,
    String? backupEngineVersion,
    DateTime? dateCreated,
    String? path,
    BackupOptionsDto? options,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBackupManifestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBackupManifestDto.copyWith.fieldName(...)`
class _$BackupManifestDtoCWProxyImpl implements _$BackupManifestDtoCWProxy {
  const _$BackupManifestDtoCWProxyImpl(this._value);

  final BackupManifestDto _value;

  @override
  BackupManifestDto serverVersion(String? serverVersion) =>
      this(serverVersion: serverVersion);

  @override
  BackupManifestDto backupEngineVersion(String? backupEngineVersion) =>
      this(backupEngineVersion: backupEngineVersion);

  @override
  BackupManifestDto dateCreated(DateTime? dateCreated) =>
      this(dateCreated: dateCreated);

  @override
  BackupManifestDto path(String? path) => this(path: path);

  @override
  BackupManifestDto options(BackupOptionsDto? options) =>
      this(options: options);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BackupManifestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BackupManifestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  BackupManifestDto call({
    Object? serverVersion = const $CopyWithPlaceholder(),
    Object? backupEngineVersion = const $CopyWithPlaceholder(),
    Object? dateCreated = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? options = const $CopyWithPlaceholder(),
  }) {
    return BackupManifestDto(
      serverVersion: serverVersion == const $CopyWithPlaceholder()
          ? _value.serverVersion
          // ignore: cast_nullable_to_non_nullable
          : serverVersion as String?,
      backupEngineVersion: backupEngineVersion == const $CopyWithPlaceholder()
          ? _value.backupEngineVersion
          // ignore: cast_nullable_to_non_nullable
          : backupEngineVersion as String?,
      dateCreated: dateCreated == const $CopyWithPlaceholder()
          ? _value.dateCreated
          // ignore: cast_nullable_to_non_nullable
          : dateCreated as DateTime?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      options: options == const $CopyWithPlaceholder()
          ? _value.options
          // ignore: cast_nullable_to_non_nullable
          : options as BackupOptionsDto?,
    );
  }
}

extension $BackupManifestDtoCopyWith on BackupManifestDto {
  /// Returns a callable class that can be used as follows: `instanceOfBackupManifestDto.copyWith(...)` or like so:`instanceOfBackupManifestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BackupManifestDtoCWProxy get copyWith =>
      _$BackupManifestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackupManifestDto _$BackupManifestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BackupManifestDto',
      json,
      ($checkedConvert) {
        final val = BackupManifestDto(
          serverVersion: $checkedConvert('ServerVersion', (v) => v as String?),
          backupEngineVersion: $checkedConvert(
            'BackupEngineVersion',
            (v) => v as String?,
          ),
          dateCreated: $checkedConvert(
            'DateCreated',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          path: $checkedConvert('Path', (v) => v as String?),
          options: $checkedConvert(
            'Options',
            (v) => v == null
                ? null
                : BackupOptionsDto.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'serverVersion': 'ServerVersion',
        'backupEngineVersion': 'BackupEngineVersion',
        'dateCreated': 'DateCreated',
        'path': 'Path',
        'options': 'Options',
      },
    );

Map<String, dynamic> _$BackupManifestDtoToJson(BackupManifestDto instance) =>
    <String, dynamic>{
      'ServerVersion': ?instance.serverVersion,
      'BackupEngineVersion': ?instance.backupEngineVersion,
      'DateCreated': ?instance.dateCreated?.toIso8601String(),
      'Path': ?instance.path,
      'Options': ?instance.options?.toJson(),
    };
