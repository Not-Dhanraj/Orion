// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateResourceCWProxy {
  UpdateResource id(int? id);

  UpdateResource version(String? version);

  UpdateResource branch(String? branch);

  UpdateResource releaseDate(DateTime? releaseDate);

  UpdateResource fileName(String? fileName);

  UpdateResource url(String? url);

  UpdateResource installed(bool? installed);

  UpdateResource installedOn(DateTime? installedOn);

  UpdateResource installable(bool? installable);

  UpdateResource latest(bool? latest);

  UpdateResource changes(UpdateChanges? changes);

  UpdateResource hash(String? hash);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateResource(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateResource call({
    int? id,
    String? version,
    String? branch,
    DateTime? releaseDate,
    String? fileName,
    String? url,
    bool? installed,
    DateTime? installedOn,
    bool? installable,
    bool? latest,
    UpdateChanges? changes,
    String? hash,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateResource.copyWith.fieldName(...)`
class _$UpdateResourceCWProxyImpl implements _$UpdateResourceCWProxy {
  const _$UpdateResourceCWProxyImpl(this._value);

  final UpdateResource _value;

  @override
  UpdateResource id(int? id) => this(id: id);

  @override
  UpdateResource version(String? version) => this(version: version);

  @override
  UpdateResource branch(String? branch) => this(branch: branch);

  @override
  UpdateResource releaseDate(DateTime? releaseDate) =>
      this(releaseDate: releaseDate);

  @override
  UpdateResource fileName(String? fileName) => this(fileName: fileName);

  @override
  UpdateResource url(String? url) => this(url: url);

  @override
  UpdateResource installed(bool? installed) => this(installed: installed);

  @override
  UpdateResource installedOn(DateTime? installedOn) =>
      this(installedOn: installedOn);

  @override
  UpdateResource installable(bool? installable) =>
      this(installable: installable);

  @override
  UpdateResource latest(bool? latest) => this(latest: latest);

  @override
  UpdateResource changes(UpdateChanges? changes) => this(changes: changes);

  @override
  UpdateResource hash(String? hash) => this(hash: hash);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateResource(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? releaseDate = const $CopyWithPlaceholder(),
    Object? fileName = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? installed = const $CopyWithPlaceholder(),
    Object? installedOn = const $CopyWithPlaceholder(),
    Object? installable = const $CopyWithPlaceholder(),
    Object? latest = const $CopyWithPlaceholder(),
    Object? changes = const $CopyWithPlaceholder(),
    Object? hash = const $CopyWithPlaceholder(),
  }) {
    return UpdateResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String?,
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as String?,
      releaseDate: releaseDate == const $CopyWithPlaceholder()
          ? _value.releaseDate
          // ignore: cast_nullable_to_non_nullable
          : releaseDate as DateTime?,
      fileName: fileName == const $CopyWithPlaceholder()
          ? _value.fileName
          // ignore: cast_nullable_to_non_nullable
          : fileName as String?,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String?,
      installed: installed == const $CopyWithPlaceholder()
          ? _value.installed
          // ignore: cast_nullable_to_non_nullable
          : installed as bool?,
      installedOn: installedOn == const $CopyWithPlaceholder()
          ? _value.installedOn
          // ignore: cast_nullable_to_non_nullable
          : installedOn as DateTime?,
      installable: installable == const $CopyWithPlaceholder()
          ? _value.installable
          // ignore: cast_nullable_to_non_nullable
          : installable as bool?,
      latest: latest == const $CopyWithPlaceholder()
          ? _value.latest
          // ignore: cast_nullable_to_non_nullable
          : latest as bool?,
      changes: changes == const $CopyWithPlaceholder()
          ? _value.changes
          // ignore: cast_nullable_to_non_nullable
          : changes as UpdateChanges?,
      hash: hash == const $CopyWithPlaceholder()
          ? _value.hash
          // ignore: cast_nullable_to_non_nullable
          : hash as String?,
    );
  }
}

extension $UpdateResourceCopyWith on UpdateResource {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateResource.copyWith(...)` or like so:`instanceOfUpdateResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateResourceCWProxy get copyWith => _$UpdateResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateResource _$UpdateResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateResource', json, ($checkedConvert) {
      final val = UpdateResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        version: $checkedConvert('version', (v) => v as String?),
        branch: $checkedConvert('branch', (v) => v as String?),
        releaseDate: $checkedConvert(
          'releaseDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        fileName: $checkedConvert('fileName', (v) => v as String?),
        url: $checkedConvert('url', (v) => v as String?),
        installed: $checkedConvert('installed', (v) => v as bool?),
        installedOn: $checkedConvert(
          'installedOn',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        installable: $checkedConvert('installable', (v) => v as bool?),
        latest: $checkedConvert('latest', (v) => v as bool?),
        changes: $checkedConvert(
          'changes',
          (v) => v == null
              ? null
              : UpdateChanges.fromJson(v as Map<String, dynamic>),
        ),
        hash: $checkedConvert('hash', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$UpdateResourceToJson(UpdateResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'version': ?instance.version,
      'branch': ?instance.branch,
      'releaseDate': ?instance.releaseDate?.toIso8601String(),
      'fileName': ?instance.fileName,
      'url': ?instance.url,
      'installed': ?instance.installed,
      'installedOn': ?instance.installedOn?.toIso8601String(),
      'installable': ?instance.installable,
      'latest': ?instance.latest,
      'changes': ?instance.changes?.toJson(),
      'hash': ?instance.hash,
    };
