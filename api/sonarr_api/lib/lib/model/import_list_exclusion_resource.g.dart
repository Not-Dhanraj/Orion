// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_exclusion_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportListExclusionResourceCWProxy {
  ImportListExclusionResource id(int? id);

  ImportListExclusionResource tvdbId(int? tvdbId);

  ImportListExclusionResource title(String? title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListExclusionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListExclusionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListExclusionResource call({int? id, int? tvdbId, String? title});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfImportListExclusionResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfImportListExclusionResource.copyWith.fieldName(...)`
class _$ImportListExclusionResourceCWProxyImpl
    implements _$ImportListExclusionResourceCWProxy {
  const _$ImportListExclusionResourceCWProxyImpl(this._value);

  final ImportListExclusionResource _value;

  @override
  ImportListExclusionResource id(int? id) => this(id: id);

  @override
  ImportListExclusionResource tvdbId(int? tvdbId) => this(tvdbId: tvdbId);

  @override
  ImportListExclusionResource title(String? title) => this(title: title);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListExclusionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListExclusionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListExclusionResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? tvdbId = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return ImportListExclusionResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      tvdbId: tvdbId == const $CopyWithPlaceholder()
          ? _value.tvdbId
          // ignore: cast_nullable_to_non_nullable
          : tvdbId as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
    );
  }
}

extension $ImportListExclusionResourceCopyWith on ImportListExclusionResource {
  /// Returns a callable class that can be used as follows: `instanceOfImportListExclusionResource.copyWith(...)` or like so:`instanceOfImportListExclusionResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImportListExclusionResourceCWProxy get copyWith =>
      _$ImportListExclusionResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportListExclusionResource _$ImportListExclusionResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportListExclusionResource', json, ($checkedConvert) {
  final val = ImportListExclusionResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    tvdbId: $checkedConvert('tvdbId', (v) => (v as num?)?.toInt()),
    title: $checkedConvert('title', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ImportListExclusionResourceToJson(
  ImportListExclusionResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'tvdbId': ?instance.tvdbId,
  'title': ?instance.title,
};
