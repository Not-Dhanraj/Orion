// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_filter_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomFilterResourceCWProxy {
  CustomFilterResource id(int? id);

  CustomFilterResource type(String? type);

  CustomFilterResource label(String? label);

  CustomFilterResource filters(List<Map<String, Object>>? filters);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomFilterResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomFilterResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomFilterResource call({
    int? id,
    String? type,
    String? label,
    List<Map<String, Object>>? filters,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomFilterResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomFilterResource.copyWith.fieldName(...)`
class _$CustomFilterResourceCWProxyImpl
    implements _$CustomFilterResourceCWProxy {
  const _$CustomFilterResourceCWProxyImpl(this._value);

  final CustomFilterResource _value;

  @override
  CustomFilterResource id(int? id) => this(id: id);

  @override
  CustomFilterResource type(String? type) => this(type: type);

  @override
  CustomFilterResource label(String? label) => this(label: label);

  @override
  CustomFilterResource filters(List<Map<String, Object>>? filters) =>
      this(filters: filters);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomFilterResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomFilterResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomFilterResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
    Object? filters = const $CopyWithPlaceholder(),
  }) {
    return CustomFilterResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String?,
      label: label == const $CopyWithPlaceholder()
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String?,
      filters: filters == const $CopyWithPlaceholder()
          ? _value.filters
          // ignore: cast_nullable_to_non_nullable
          : filters as List<Map<String, Object>>?,
    );
  }
}

extension $CustomFilterResourceCopyWith on CustomFilterResource {
  /// Returns a callable class that can be used as follows: `instanceOfCustomFilterResource.copyWith(...)` or like so:`instanceOfCustomFilterResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomFilterResourceCWProxy get copyWith =>
      _$CustomFilterResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomFilterResource _$CustomFilterResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CustomFilterResource', json, ($checkedConvert) {
  final val = CustomFilterResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    type: $checkedConvert('type', (v) => v as String?),
    label: $checkedConvert('label', (v) => v as String?),
    filters: $checkedConvert(
      'filters',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CustomFilterResourceToJson(
  CustomFilterResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'type': ?instance.type,
  'label': ?instance.label,
  'filters': ?instance.filters,
};
