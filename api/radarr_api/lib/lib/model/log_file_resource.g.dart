// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_file_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogFileResourceCWProxy {
  LogFileResource id(int? id);

  LogFileResource filename(String? filename);

  LogFileResource lastWriteTime(DateTime? lastWriteTime);

  LogFileResource contentsUrl(String? contentsUrl);

  LogFileResource downloadUrl(String? downloadUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LogFileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LogFileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LogFileResource call({
    int? id,
    String? filename,
    DateTime? lastWriteTime,
    String? contentsUrl,
    String? downloadUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLogFileResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLogFileResource.copyWith.fieldName(...)`
class _$LogFileResourceCWProxyImpl implements _$LogFileResourceCWProxy {
  const _$LogFileResourceCWProxyImpl(this._value);

  final LogFileResource _value;

  @override
  LogFileResource id(int? id) => this(id: id);

  @override
  LogFileResource filename(String? filename) => this(filename: filename);

  @override
  LogFileResource lastWriteTime(DateTime? lastWriteTime) =>
      this(lastWriteTime: lastWriteTime);

  @override
  LogFileResource contentsUrl(String? contentsUrl) =>
      this(contentsUrl: contentsUrl);

  @override
  LogFileResource downloadUrl(String? downloadUrl) =>
      this(downloadUrl: downloadUrl);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LogFileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LogFileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LogFileResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? filename = const $CopyWithPlaceholder(),
    Object? lastWriteTime = const $CopyWithPlaceholder(),
    Object? contentsUrl = const $CopyWithPlaceholder(),
    Object? downloadUrl = const $CopyWithPlaceholder(),
  }) {
    return LogFileResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      filename: filename == const $CopyWithPlaceholder()
          ? _value.filename
          // ignore: cast_nullable_to_non_nullable
          : filename as String?,
      lastWriteTime: lastWriteTime == const $CopyWithPlaceholder()
          ? _value.lastWriteTime
          // ignore: cast_nullable_to_non_nullable
          : lastWriteTime as DateTime?,
      contentsUrl: contentsUrl == const $CopyWithPlaceholder()
          ? _value.contentsUrl
          // ignore: cast_nullable_to_non_nullable
          : contentsUrl as String?,
      downloadUrl: downloadUrl == const $CopyWithPlaceholder()
          ? _value.downloadUrl
          // ignore: cast_nullable_to_non_nullable
          : downloadUrl as String?,
    );
  }
}

extension $LogFileResourceCopyWith on LogFileResource {
  /// Returns a callable class that can be used as follows: `instanceOfLogFileResource.copyWith(...)` or like so:`instanceOfLogFileResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogFileResourceCWProxy get copyWith => _$LogFileResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogFileResource _$LogFileResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LogFileResource', json, ($checkedConvert) {
      final val = LogFileResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        filename: $checkedConvert('filename', (v) => v as String?),
        lastWriteTime: $checkedConvert(
          'lastWriteTime',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        contentsUrl: $checkedConvert('contentsUrl', (v) => v as String?),
        downloadUrl: $checkedConvert('downloadUrl', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$LogFileResourceToJson(LogFileResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'filename': ?instance.filename,
      'lastWriteTime': ?instance.lastWriteTime?.toIso8601String(),
      'contentsUrl': ?instance.contentsUrl,
      'downloadUrl': ?instance.downloadUrl,
    };
