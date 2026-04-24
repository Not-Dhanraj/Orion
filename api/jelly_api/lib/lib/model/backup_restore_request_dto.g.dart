// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_restore_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BackupRestoreRequestDtoCWProxy {
  BackupRestoreRequestDto archiveFileName(String? archiveFileName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BackupRestoreRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BackupRestoreRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  BackupRestoreRequestDto call({String? archiveFileName});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBackupRestoreRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBackupRestoreRequestDto.copyWith.fieldName(...)`
class _$BackupRestoreRequestDtoCWProxyImpl
    implements _$BackupRestoreRequestDtoCWProxy {
  const _$BackupRestoreRequestDtoCWProxyImpl(this._value);

  final BackupRestoreRequestDto _value;

  @override
  BackupRestoreRequestDto archiveFileName(String? archiveFileName) =>
      this(archiveFileName: archiveFileName);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BackupRestoreRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BackupRestoreRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  BackupRestoreRequestDto call({
    Object? archiveFileName = const $CopyWithPlaceholder(),
  }) {
    return BackupRestoreRequestDto(
      archiveFileName: archiveFileName == const $CopyWithPlaceholder()
          ? _value.archiveFileName
          // ignore: cast_nullable_to_non_nullable
          : archiveFileName as String?,
    );
  }
}

extension $BackupRestoreRequestDtoCopyWith on BackupRestoreRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfBackupRestoreRequestDto.copyWith(...)` or like so:`instanceOfBackupRestoreRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BackupRestoreRequestDtoCWProxy get copyWith =>
      _$BackupRestoreRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackupRestoreRequestDto _$BackupRestoreRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BackupRestoreRequestDto',
  json,
  ($checkedConvert) {
    final val = BackupRestoreRequestDto(
      archiveFileName: $checkedConvert('ArchiveFileName', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'archiveFileName': 'ArchiveFileName'},
);

Map<String, dynamic> _$BackupRestoreRequestDtoToJson(
  BackupRestoreRequestDto instance,
) => <String, dynamic>{'ArchiveFileName': ?instance.archiveFileName};
