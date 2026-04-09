// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexer_flag_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IndexerFlagResourceCWProxy {
  IndexerFlagResource id(int? id);

  IndexerFlagResource name(String? name);

  IndexerFlagResource nameLower(String? nameLower);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IndexerFlagResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IndexerFlagResource(...).copyWith(id: 12, name: "My name")
  /// ````
  IndexerFlagResource call({int? id, String? name, String? nameLower});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIndexerFlagResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIndexerFlagResource.copyWith.fieldName(...)`
class _$IndexerFlagResourceCWProxyImpl implements _$IndexerFlagResourceCWProxy {
  const _$IndexerFlagResourceCWProxyImpl(this._value);

  final IndexerFlagResource _value;

  @override
  IndexerFlagResource id(int? id) => this(id: id);

  @override
  IndexerFlagResource name(String? name) => this(name: name);

  @override
  IndexerFlagResource nameLower(String? nameLower) =>
      this(nameLower: nameLower);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IndexerFlagResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IndexerFlagResource(...).copyWith(id: 12, name: "My name")
  /// ````
  IndexerFlagResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? nameLower = const $CopyWithPlaceholder(),
  }) {
    return IndexerFlagResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      nameLower: nameLower == const $CopyWithPlaceholder()
          ? _value.nameLower
          // ignore: cast_nullable_to_non_nullable
          : nameLower as String?,
    );
  }
}

extension $IndexerFlagResourceCopyWith on IndexerFlagResource {
  /// Returns a callable class that can be used as follows: `instanceOfIndexerFlagResource.copyWith(...)` or like so:`instanceOfIndexerFlagResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IndexerFlagResourceCWProxy get copyWith =>
      _$IndexerFlagResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexerFlagResource _$IndexerFlagResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('IndexerFlagResource', json, ($checkedConvert) {
      final val = IndexerFlagResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        nameLower: $checkedConvert('nameLower', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$IndexerFlagResourceToJson(
  IndexerFlagResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'nameLower': ?instance.nameLower,
};
