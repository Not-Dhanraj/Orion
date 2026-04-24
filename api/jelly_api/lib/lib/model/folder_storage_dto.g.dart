// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_storage_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FolderStorageDtoCWProxy {
  FolderStorageDto path(String? path);

  FolderStorageDto freeSpace(int? freeSpace);

  FolderStorageDto usedSpace(int? usedSpace);

  FolderStorageDto storageType(String? storageType);

  FolderStorageDto deviceId(String? deviceId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FolderStorageDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FolderStorageDto(...).copyWith(id: 12, name: "My name")
  /// ````
  FolderStorageDto call({
    String? path,
    int? freeSpace,
    int? usedSpace,
    String? storageType,
    String? deviceId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFolderStorageDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFolderStorageDto.copyWith.fieldName(...)`
class _$FolderStorageDtoCWProxyImpl implements _$FolderStorageDtoCWProxy {
  const _$FolderStorageDtoCWProxyImpl(this._value);

  final FolderStorageDto _value;

  @override
  FolderStorageDto path(String? path) => this(path: path);

  @override
  FolderStorageDto freeSpace(int? freeSpace) => this(freeSpace: freeSpace);

  @override
  FolderStorageDto usedSpace(int? usedSpace) => this(usedSpace: usedSpace);

  @override
  FolderStorageDto storageType(String? storageType) =>
      this(storageType: storageType);

  @override
  FolderStorageDto deviceId(String? deviceId) => this(deviceId: deviceId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FolderStorageDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FolderStorageDto(...).copyWith(id: 12, name: "My name")
  /// ````
  FolderStorageDto call({
    Object? path = const $CopyWithPlaceholder(),
    Object? freeSpace = const $CopyWithPlaceholder(),
    Object? usedSpace = const $CopyWithPlaceholder(),
    Object? storageType = const $CopyWithPlaceholder(),
    Object? deviceId = const $CopyWithPlaceholder(),
  }) {
    return FolderStorageDto(
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      freeSpace: freeSpace == const $CopyWithPlaceholder()
          ? _value.freeSpace
          // ignore: cast_nullable_to_non_nullable
          : freeSpace as int?,
      usedSpace: usedSpace == const $CopyWithPlaceholder()
          ? _value.usedSpace
          // ignore: cast_nullable_to_non_nullable
          : usedSpace as int?,
      storageType: storageType == const $CopyWithPlaceholder()
          ? _value.storageType
          // ignore: cast_nullable_to_non_nullable
          : storageType as String?,
      deviceId: deviceId == const $CopyWithPlaceholder()
          ? _value.deviceId
          // ignore: cast_nullable_to_non_nullable
          : deviceId as String?,
    );
  }
}

extension $FolderStorageDtoCopyWith on FolderStorageDto {
  /// Returns a callable class that can be used as follows: `instanceOfFolderStorageDto.copyWith(...)` or like so:`instanceOfFolderStorageDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FolderStorageDtoCWProxy get copyWith => _$FolderStorageDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FolderStorageDto _$FolderStorageDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'FolderStorageDto',
      json,
      ($checkedConvert) {
        final val = FolderStorageDto(
          path: $checkedConvert('Path', (v) => v as String?),
          freeSpace: $checkedConvert('FreeSpace', (v) => (v as num?)?.toInt()),
          usedSpace: $checkedConvert('UsedSpace', (v) => (v as num?)?.toInt()),
          storageType: $checkedConvert('StorageType', (v) => v as String?),
          deviceId: $checkedConvert('DeviceId', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'path': 'Path',
        'freeSpace': 'FreeSpace',
        'usedSpace': 'UsedSpace',
        'storageType': 'StorageType',
        'deviceId': 'DeviceId',
      },
    );

Map<String, dynamic> _$FolderStorageDtoToJson(FolderStorageDto instance) =>
    <String, dynamic>{
      'Path': ?instance.path,
      'FreeSpace': ?instance.freeSpace,
      'UsedSpace': ?instance.usedSpace,
      'StorageType': ?instance.storageType,
      'DeviceId': ?instance.deviceId,
    };
