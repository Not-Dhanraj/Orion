// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TagResourceCWProxy {
  TagResource id(int? id);

  TagResource label(String? label);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TagResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TagResource(...).copyWith(id: 12, name: "My name")
  /// ````
  TagResource call({int? id, String? label});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTagResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTagResource.copyWith.fieldName(...)`
class _$TagResourceCWProxyImpl implements _$TagResourceCWProxy {
  const _$TagResourceCWProxyImpl(this._value);

  final TagResource _value;

  @override
  TagResource id(int? id) => this(id: id);

  @override
  TagResource label(String? label) => this(label: label);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TagResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TagResource(...).copyWith(id: 12, name: "My name")
  /// ````
  TagResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
  }) {
    return TagResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      label: label == const $CopyWithPlaceholder()
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String?,
    );
  }
}

extension $TagResourceCopyWith on TagResource {
  /// Returns a callable class that can be used as follows: `instanceOfTagResource.copyWith(...)` or like so:`instanceOfTagResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TagResourceCWProxy get copyWith => _$TagResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagResource _$TagResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TagResource', json, ($checkedConvert) {
      final val = TagResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        label: $checkedConvert('label', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$TagResourceToJson(TagResource instance) =>
    <String, dynamic>{'id': ?instance.id, 'label': ?instance.label};
