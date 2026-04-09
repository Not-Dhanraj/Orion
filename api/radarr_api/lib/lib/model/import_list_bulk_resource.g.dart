// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_bulk_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportListBulkResourceCWProxy {
  ImportListBulkResource ids(List<int>? ids);

  ImportListBulkResource tags(List<int>? tags);

  ImportListBulkResource applyTags(ApplyTags? applyTags);

  ImportListBulkResource enabled(bool? enabled);

  ImportListBulkResource enableAuto(bool? enableAuto);

  ImportListBulkResource rootFolderPath(String? rootFolderPath);

  ImportListBulkResource qualityProfileId(int? qualityProfileId);

  ImportListBulkResource minimumAvailability(
    MovieStatusType? minimumAvailability,
  );

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
    bool? enabled,
    bool? enableAuto,
    String? rootFolderPath,
    int? qualityProfileId,
    MovieStatusType? minimumAvailability,
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
  ImportListBulkResource enabled(bool? enabled) => this(enabled: enabled);

  @override
  ImportListBulkResource enableAuto(bool? enableAuto) =>
      this(enableAuto: enableAuto);

  @override
  ImportListBulkResource rootFolderPath(String? rootFolderPath) =>
      this(rootFolderPath: rootFolderPath);

  @override
  ImportListBulkResource qualityProfileId(int? qualityProfileId) =>
      this(qualityProfileId: qualityProfileId);

  @override
  ImportListBulkResource minimumAvailability(
    MovieStatusType? minimumAvailability,
  ) => this(minimumAvailability: minimumAvailability);

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
    Object? enabled = const $CopyWithPlaceholder(),
    Object? enableAuto = const $CopyWithPlaceholder(),
    Object? rootFolderPath = const $CopyWithPlaceholder(),
    Object? qualityProfileId = const $CopyWithPlaceholder(),
    Object? minimumAvailability = const $CopyWithPlaceholder(),
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
      enabled: enabled == const $CopyWithPlaceholder()
          ? _value.enabled
          // ignore: cast_nullable_to_non_nullable
          : enabled as bool?,
      enableAuto: enableAuto == const $CopyWithPlaceholder()
          ? _value.enableAuto
          // ignore: cast_nullable_to_non_nullable
          : enableAuto as bool?,
      rootFolderPath: rootFolderPath == const $CopyWithPlaceholder()
          ? _value.rootFolderPath
          // ignore: cast_nullable_to_non_nullable
          : rootFolderPath as String?,
      qualityProfileId: qualityProfileId == const $CopyWithPlaceholder()
          ? _value.qualityProfileId
          // ignore: cast_nullable_to_non_nullable
          : qualityProfileId as int?,
      minimumAvailability: minimumAvailability == const $CopyWithPlaceholder()
          ? _value.minimumAvailability
          // ignore: cast_nullable_to_non_nullable
          : minimumAvailability as MovieStatusType?,
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
    enabled: $checkedConvert('enabled', (v) => v as bool?),
    enableAuto: $checkedConvert('enableAuto', (v) => v as bool?),
    rootFolderPath: $checkedConvert('rootFolderPath', (v) => v as String?),
    qualityProfileId: $checkedConvert(
      'qualityProfileId',
      (v) => (v as num?)?.toInt(),
    ),
    minimumAvailability: $checkedConvert(
      'minimumAvailability',
      (v) => $enumDecodeNullable(_$MovieStatusTypeEnumMap, v),
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
  'enabled': ?instance.enabled,
  'enableAuto': ?instance.enableAuto,
  'rootFolderPath': ?instance.rootFolderPath,
  'qualityProfileId': ?instance.qualityProfileId,
  'minimumAvailability':
      ?_$MovieStatusTypeEnumMap[instance.minimumAvailability],
};

const _$ApplyTagsEnumMap = {
  ApplyTags.add: 'add',
  ApplyTags.remove: 'remove',
  ApplyTags.replace: 'replace',
};

const _$MovieStatusTypeEnumMap = {
  MovieStatusType.tba: 'tba',
  MovieStatusType.announced: 'announced',
  MovieStatusType.inCinemas: 'inCinemas',
  MovieStatusType.released: 'released',
  MovieStatusType.deleted: 'deleted',
};
