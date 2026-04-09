// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_config_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportListConfigResourceCWProxy {
  ImportListConfigResource id(int? id);

  ImportListConfigResource listSyncLevel(ListSyncLevelType? listSyncLevel);

  ImportListConfigResource listSyncTag(int? listSyncTag);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListConfigResource call({
    int? id,
    ListSyncLevelType? listSyncLevel,
    int? listSyncTag,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfImportListConfigResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfImportListConfigResource.copyWith.fieldName(...)`
class _$ImportListConfigResourceCWProxyImpl
    implements _$ImportListConfigResourceCWProxy {
  const _$ImportListConfigResourceCWProxyImpl(this._value);

  final ImportListConfigResource _value;

  @override
  ImportListConfigResource id(int? id) => this(id: id);

  @override
  ImportListConfigResource listSyncLevel(ListSyncLevelType? listSyncLevel) =>
      this(listSyncLevel: listSyncLevel);

  @override
  ImportListConfigResource listSyncTag(int? listSyncTag) =>
      this(listSyncTag: listSyncTag);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListConfigResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? listSyncLevel = const $CopyWithPlaceholder(),
    Object? listSyncTag = const $CopyWithPlaceholder(),
  }) {
    return ImportListConfigResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      listSyncLevel: listSyncLevel == const $CopyWithPlaceholder()
          ? _value.listSyncLevel
          // ignore: cast_nullable_to_non_nullable
          : listSyncLevel as ListSyncLevelType?,
      listSyncTag: listSyncTag == const $CopyWithPlaceholder()
          ? _value.listSyncTag
          // ignore: cast_nullable_to_non_nullable
          : listSyncTag as int?,
    );
  }
}

extension $ImportListConfigResourceCopyWith on ImportListConfigResource {
  /// Returns a callable class that can be used as follows: `instanceOfImportListConfigResource.copyWith(...)` or like so:`instanceOfImportListConfigResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImportListConfigResourceCWProxy get copyWith =>
      _$ImportListConfigResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportListConfigResource _$ImportListConfigResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportListConfigResource', json, ($checkedConvert) {
  final val = ImportListConfigResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    listSyncLevel: $checkedConvert(
      'listSyncLevel',
      (v) => $enumDecodeNullable(_$ListSyncLevelTypeEnumMap, v),
    ),
    listSyncTag: $checkedConvert('listSyncTag', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ImportListConfigResourceToJson(
  ImportListConfigResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'listSyncLevel': ?_$ListSyncLevelTypeEnumMap[instance.listSyncLevel],
  'listSyncTag': ?instance.listSyncTag,
};

const _$ListSyncLevelTypeEnumMap = {
  ListSyncLevelType.disabled: 'disabled',
  ListSyncLevelType.logOnly: 'logOnly',
  ListSyncLevelType.keepAndUnmonitor: 'keepAndUnmonitor',
  ListSyncLevelType.keepAndTag: 'keepAndTag',
};
