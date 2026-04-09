// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BackupResourceCWProxy {
  BackupResource id(int? id);

  BackupResource name(String? name);

  BackupResource path(String? path);

  BackupResource type(BackupType? type);

  BackupResource size(int? size);

  BackupResource time(DateTime? time);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BackupResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BackupResource(...).copyWith(id: 12, name: "My name")
  /// ````
  BackupResource call({
    int? id,
    String? name,
    String? path,
    BackupType? type,
    int? size,
    DateTime? time,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBackupResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBackupResource.copyWith.fieldName(...)`
class _$BackupResourceCWProxyImpl implements _$BackupResourceCWProxy {
  const _$BackupResourceCWProxyImpl(this._value);

  final BackupResource _value;

  @override
  BackupResource id(int? id) => this(id: id);

  @override
  BackupResource name(String? name) => this(name: name);

  @override
  BackupResource path(String? path) => this(path: path);

  @override
  BackupResource type(BackupType? type) => this(type: type);

  @override
  BackupResource size(int? size) => this(size: size);

  @override
  BackupResource time(DateTime? time) => this(time: time);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BackupResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BackupResource(...).copyWith(id: 12, name: "My name")
  /// ````
  BackupResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
    Object? time = const $CopyWithPlaceholder(),
  }) {
    return BackupResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as BackupType?,
      size: size == const $CopyWithPlaceholder()
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as int?,
      time: time == const $CopyWithPlaceholder()
          ? _value.time
          // ignore: cast_nullable_to_non_nullable
          : time as DateTime?,
    );
  }
}

extension $BackupResourceCopyWith on BackupResource {
  /// Returns a callable class that can be used as follows: `instanceOfBackupResource.copyWith(...)` or like so:`instanceOfBackupResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BackupResourceCWProxy get copyWith => _$BackupResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackupResource _$BackupResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BackupResource', json, ($checkedConvert) {
      final val = BackupResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        path: $checkedConvert('path', (v) => v as String?),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$BackupTypeEnumMap, v),
        ),
        size: $checkedConvert('size', (v) => (v as num?)?.toInt()),
        time: $checkedConvert(
          'time',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$BackupResourceToJson(BackupResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'path': ?instance.path,
      'type': ?_$BackupTypeEnumMap[instance.type],
      'size': ?instance.size,
      'time': ?instance.time?.toIso8601String(),
    };

const _$BackupTypeEnumMap = {
  BackupType.scheduled: 'scheduled',
  BackupType.manual: 'manual',
  BackupType.update: 'update',
};
