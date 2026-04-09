// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_status_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueueStatusResourceCWProxy {
  QueueStatusResource id(int? id);

  QueueStatusResource totalCount(int? totalCount);

  QueueStatusResource count(int? count);

  QueueStatusResource unknownCount(int? unknownCount);

  QueueStatusResource errors(bool? errors);

  QueueStatusResource warnings(bool? warnings);

  QueueStatusResource unknownErrors(bool? unknownErrors);

  QueueStatusResource unknownWarnings(bool? unknownWarnings);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueStatusResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueStatusResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueStatusResource call({
    int? id,
    int? totalCount,
    int? count,
    int? unknownCount,
    bool? errors,
    bool? warnings,
    bool? unknownErrors,
    bool? unknownWarnings,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueueStatusResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQueueStatusResource.copyWith.fieldName(...)`
class _$QueueStatusResourceCWProxyImpl implements _$QueueStatusResourceCWProxy {
  const _$QueueStatusResourceCWProxyImpl(this._value);

  final QueueStatusResource _value;

  @override
  QueueStatusResource id(int? id) => this(id: id);

  @override
  QueueStatusResource totalCount(int? totalCount) =>
      this(totalCount: totalCount);

  @override
  QueueStatusResource count(int? count) => this(count: count);

  @override
  QueueStatusResource unknownCount(int? unknownCount) =>
      this(unknownCount: unknownCount);

  @override
  QueueStatusResource errors(bool? errors) => this(errors: errors);

  @override
  QueueStatusResource warnings(bool? warnings) => this(warnings: warnings);

  @override
  QueueStatusResource unknownErrors(bool? unknownErrors) =>
      this(unknownErrors: unknownErrors);

  @override
  QueueStatusResource unknownWarnings(bool? unknownWarnings) =>
      this(unknownWarnings: unknownWarnings);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueStatusResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueStatusResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueStatusResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? count = const $CopyWithPlaceholder(),
    Object? unknownCount = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? warnings = const $CopyWithPlaceholder(),
    Object? unknownErrors = const $CopyWithPlaceholder(),
    Object? unknownWarnings = const $CopyWithPlaceholder(),
  }) {
    return QueueStatusResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      totalCount: totalCount == const $CopyWithPlaceholder()
          ? _value.totalCount
          // ignore: cast_nullable_to_non_nullable
          : totalCount as int?,
      count: count == const $CopyWithPlaceholder()
          ? _value.count
          // ignore: cast_nullable_to_non_nullable
          : count as int?,
      unknownCount: unknownCount == const $CopyWithPlaceholder()
          ? _value.unknownCount
          // ignore: cast_nullable_to_non_nullable
          : unknownCount as int?,
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as bool?,
      warnings: warnings == const $CopyWithPlaceholder()
          ? _value.warnings
          // ignore: cast_nullable_to_non_nullable
          : warnings as bool?,
      unknownErrors: unknownErrors == const $CopyWithPlaceholder()
          ? _value.unknownErrors
          // ignore: cast_nullable_to_non_nullable
          : unknownErrors as bool?,
      unknownWarnings: unknownWarnings == const $CopyWithPlaceholder()
          ? _value.unknownWarnings
          // ignore: cast_nullable_to_non_nullable
          : unknownWarnings as bool?,
    );
  }
}

extension $QueueStatusResourceCopyWith on QueueStatusResource {
  /// Returns a callable class that can be used as follows: `instanceOfQueueStatusResource.copyWith(...)` or like so:`instanceOfQueueStatusResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueueStatusResourceCWProxy get copyWith =>
      _$QueueStatusResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueueStatusResource _$QueueStatusResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('QueueStatusResource', json, ($checkedConvert) {
      final val = QueueStatusResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        totalCount: $checkedConvert('totalCount', (v) => (v as num?)?.toInt()),
        count: $checkedConvert('count', (v) => (v as num?)?.toInt()),
        unknownCount: $checkedConvert(
          'unknownCount',
          (v) => (v as num?)?.toInt(),
        ),
        errors: $checkedConvert('errors', (v) => v as bool?),
        warnings: $checkedConvert('warnings', (v) => v as bool?),
        unknownErrors: $checkedConvert('unknownErrors', (v) => v as bool?),
        unknownWarnings: $checkedConvert('unknownWarnings', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$QueueStatusResourceToJson(
  QueueStatusResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'totalCount': ?instance.totalCount,
  'count': ?instance.count,
  'unknownCount': ?instance.unknownCount,
  'errors': ?instance.errors,
  'warnings': ?instance.warnings,
  'unknownErrors': ?instance.unknownErrors,
  'unknownWarnings': ?instance.unknownWarnings,
};
