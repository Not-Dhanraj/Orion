// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_bulk_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueueBulkResourceCWProxy {
  QueueBulkResource ids(List<int>? ids);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueBulkResource call({List<int>? ids});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueueBulkResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQueueBulkResource.copyWith.fieldName(...)`
class _$QueueBulkResourceCWProxyImpl implements _$QueueBulkResourceCWProxy {
  const _$QueueBulkResourceCWProxyImpl(this._value);

  final QueueBulkResource _value;

  @override
  QueueBulkResource ids(List<int>? ids) => this(ids: ids);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueBulkResource call({Object? ids = const $CopyWithPlaceholder()}) {
    return QueueBulkResource(
      ids: ids == const $CopyWithPlaceholder()
          ? _value.ids
          // ignore: cast_nullable_to_non_nullable
          : ids as List<int>?,
    );
  }
}

extension $QueueBulkResourceCopyWith on QueueBulkResource {
  /// Returns a callable class that can be used as follows: `instanceOfQueueBulkResource.copyWith(...)` or like so:`instanceOfQueueBulkResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueueBulkResourceCWProxy get copyWith =>
      _$QueueBulkResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueueBulkResource _$QueueBulkResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('QueueBulkResource', json, ($checkedConvert) {
      final val = QueueBulkResource(
        ids: $checkedConvert(
          'ids',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$QueueBulkResourceToJson(QueueBulkResource instance) =>
    <String, dynamic>{'ids': ?instance.ids};
