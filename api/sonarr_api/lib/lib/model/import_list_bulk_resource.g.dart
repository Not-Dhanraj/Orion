// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_bulk_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportListBulkResourceCWProxy {
  ImportListBulkResource ids(List<int>? ids);

  ImportListBulkResource tags(List<int>? tags);

  ImportListBulkResource applyTags(ApplyTags? applyTags);

  ImportListBulkResource enableAutomaticAdd(bool? enableAutomaticAdd);

  ImportListBulkResource rootFolderPath(String? rootFolderPath);

  ImportListBulkResource qualityProfileId(int? qualityProfileId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListBulkResource call({
    List<int>? ids,
    List<int>? tags,
    ApplyTags? applyTags,
    bool? enableAutomaticAdd,
    String? rootFolderPath,
    int? qualityProfileId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfImportListBulkResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfImportListBulkResource.copyWith.fieldName(...)`
class _$ImportListBulkResourceCWProxyImpl
    implements _$ImportListBulkResourceCWProxy {
  const _$ImportListBulkResourceCWProxyImpl(this._value);

  final ImportListBulkResource _value;

  @override
  ImportListBulkResource ids(List<int>? ids) => this(ids: ids);

  @override
  ImportListBulkResource tags(List<int>? tags) => this(tags: tags);

  @override
  ImportListBulkResource applyTags(ApplyTags? applyTags) =>
      this(applyTags: applyTags);

  @override
  ImportListBulkResource enableAutomaticAdd(bool? enableAutomaticAdd) =>
      this(enableAutomaticAdd: enableAutomaticAdd);

  @override
  ImportListBulkResource rootFolderPath(String? rootFolderPath) =>
      this(rootFolderPath: rootFolderPath);

  @override
  ImportListBulkResource qualityProfileId(int? qualityProfileId) =>
      this(qualityProfileId: qualityProfileId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListBulkResource call({
    Object? ids = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? applyTags = const $CopyWithPlaceholder(),
    Object? enableAutomaticAdd = const $CopyWithPlaceholder(),
    Object? rootFolderPath = const $CopyWithPlaceholder(),
    Object? qualityProfileId = const $CopyWithPlaceholder(),
  }) {
    return ImportListBulkResource(
      ids: ids == const $CopyWithPlaceholder()
          ? _value.ids
          // ignore: cast_nullable_to_non_nullable
          : ids as List<int>?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as List<int>?,
      applyTags: applyTags == const $CopyWithPlaceholder()
          ? _value.applyTags
          // ignore: cast_nullable_to_non_nullable
          : applyTags as ApplyTags?,
      enableAutomaticAdd: enableAutomaticAdd == const $CopyWithPlaceholder()
          ? _value.enableAutomaticAdd
          // ignore: cast_nullable_to_non_nullable
          : enableAutomaticAdd as bool?,
      rootFolderPath: rootFolderPath == const $CopyWithPlaceholder()
          ? _value.rootFolderPath
          // ignore: cast_nullable_to_non_nullable
          : rootFolderPath as String?,
      qualityProfileId: qualityProfileId == const $CopyWithPlaceholder()
          ? _value.qualityProfileId
          // ignore: cast_nullable_to_non_nullable
          : qualityProfileId as int?,
    );
  }
}

extension $ImportListBulkResourceCopyWith on ImportListBulkResource {
  /// Returns a callable class that can be used as follows: `instanceOfImportListBulkResource.copyWith(...)` or like so:`instanceOfImportListBulkResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImportListBulkResourceCWProxy get copyWith =>
      _$ImportListBulkResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportListBulkResource _$ImportListBulkResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportListBulkResource', json, ($checkedConvert) {
  final val = ImportListBulkResource(
    ids: $checkedConvert(
      'ids',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
    tags: $checkedConvert(
      'tags',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
    applyTags: $checkedConvert(
      'applyTags',
      (v) => $enumDecodeNullable(_$ApplyTagsEnumMap, v),
    ),
    enableAutomaticAdd: $checkedConvert(
      'enableAutomaticAdd',
      (v) => v as bool?,
    ),
    rootFolderPath: $checkedConvert('rootFolderPath', (v) => v as String?),
    qualityProfileId: $checkedConvert(
      'qualityProfileId',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ImportListBulkResourceToJson(
  ImportListBulkResource instance,
) => <String, dynamic>{
  'ids': ?instance.ids,
  'tags': ?instance.tags,
  'applyTags': ?_$ApplyTagsEnumMap[instance.applyTags],
  'enableAutomaticAdd': ?instance.enableAutomaticAdd,
  'rootFolderPath': ?instance.rootFolderPath,
  'qualityProfileId': ?instance.qualityProfileId,
};

const _$ApplyTagsEnumMap = {
  ApplyTags.add: 'add',
  ApplyTags.remove: 'remove',
  ApplyTags.replace: 'replace',
};
