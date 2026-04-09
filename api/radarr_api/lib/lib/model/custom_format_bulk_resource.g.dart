// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_format_bulk_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomFormatBulkResourceCWProxy {
  CustomFormatBulkResource ids(Set<int>? ids);

  CustomFormatBulkResource includeCustomFormatWhenRenaming(
    bool? includeCustomFormatWhenRenaming,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomFormatBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomFormatBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomFormatBulkResource call({
    Set<int>? ids,
    bool? includeCustomFormatWhenRenaming,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomFormatBulkResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomFormatBulkResource.copyWith.fieldName(...)`
class _$CustomFormatBulkResourceCWProxyImpl
    implements _$CustomFormatBulkResourceCWProxy {
  const _$CustomFormatBulkResourceCWProxyImpl(this._value);

  final CustomFormatBulkResource _value;

  @override
  CustomFormatBulkResource ids(Set<int>? ids) => this(ids: ids);

  @override
  CustomFormatBulkResource includeCustomFormatWhenRenaming(
    bool? includeCustomFormatWhenRenaming,
  ) => this(includeCustomFormatWhenRenaming: includeCustomFormatWhenRenaming);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomFormatBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomFormatBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomFormatBulkResource call({
    Object? ids = const $CopyWithPlaceholder(),
    Object? includeCustomFormatWhenRenaming = const $CopyWithPlaceholder(),
  }) {
    return CustomFormatBulkResource(
      ids: ids == const $CopyWithPlaceholder()
          ? _value.ids
          // ignore: cast_nullable_to_non_nullable
          : ids as Set<int>?,
      includeCustomFormatWhenRenaming:
          includeCustomFormatWhenRenaming == const $CopyWithPlaceholder()
          ? _value.includeCustomFormatWhenRenaming
          // ignore: cast_nullable_to_non_nullable
          : includeCustomFormatWhenRenaming as bool?,
    );
  }
}

extension $CustomFormatBulkResourceCopyWith on CustomFormatBulkResource {
  /// Returns a callable class that can be used as follows: `instanceOfCustomFormatBulkResource.copyWith(...)` or like so:`instanceOfCustomFormatBulkResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomFormatBulkResourceCWProxy get copyWith =>
      _$CustomFormatBulkResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomFormatBulkResource _$CustomFormatBulkResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CustomFormatBulkResource', json, ($checkedConvert) {
  final val = CustomFormatBulkResource(
    ids: $checkedConvert(
      'ids',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toSet(),
    ),
    includeCustomFormatWhenRenaming: $checkedConvert(
      'includeCustomFormatWhenRenaming',
      (v) => v as bool?,
    ),
  );
  return val;
});

Map<String, dynamic> _$CustomFormatBulkResourceToJson(
  CustomFormatBulkResource instance,
) => <String, dynamic>{
  'ids': ?instance.ids?.toList(),
  'includeCustomFormatWhenRenaming': ?instance.includeCustomFormatWhenRenaming,
};
