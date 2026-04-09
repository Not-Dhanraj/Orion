// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexer_bulk_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IndexerBulkResourceCWProxy {
  IndexerBulkResource ids(List<int>? ids);

  IndexerBulkResource tags(List<int>? tags);

  IndexerBulkResource applyTags(ApplyTags? applyTags);

  IndexerBulkResource enableRss(bool? enableRss);

  IndexerBulkResource enableAutomaticSearch(bool? enableAutomaticSearch);

  IndexerBulkResource enableInteractiveSearch(bool? enableInteractiveSearch);

  IndexerBulkResource priority(int? priority);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IndexerBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IndexerBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  IndexerBulkResource call({
    List<int>? ids,
    List<int>? tags,
    ApplyTags? applyTags,
    bool? enableRss,
    bool? enableAutomaticSearch,
    bool? enableInteractiveSearch,
    int? priority,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIndexerBulkResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIndexerBulkResource.copyWith.fieldName(...)`
class _$IndexerBulkResourceCWProxyImpl implements _$IndexerBulkResourceCWProxy {
  const _$IndexerBulkResourceCWProxyImpl(this._value);

  final IndexerBulkResource _value;

  @override
  IndexerBulkResource ids(List<int>? ids) => this(ids: ids);

  @override
  IndexerBulkResource tags(List<int>? tags) => this(tags: tags);

  @override
  IndexerBulkResource applyTags(ApplyTags? applyTags) =>
      this(applyTags: applyTags);

  @override
  IndexerBulkResource enableRss(bool? enableRss) => this(enableRss: enableRss);

  @override
  IndexerBulkResource enableAutomaticSearch(bool? enableAutomaticSearch) =>
      this(enableAutomaticSearch: enableAutomaticSearch);

  @override
  IndexerBulkResource enableInteractiveSearch(bool? enableInteractiveSearch) =>
      this(enableInteractiveSearch: enableInteractiveSearch);

  @override
  IndexerBulkResource priority(int? priority) => this(priority: priority);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IndexerBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IndexerBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  IndexerBulkResource call({
    Object? ids = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? applyTags = const $CopyWithPlaceholder(),
    Object? enableRss = const $CopyWithPlaceholder(),
    Object? enableAutomaticSearch = const $CopyWithPlaceholder(),
    Object? enableInteractiveSearch = const $CopyWithPlaceholder(),
    Object? priority = const $CopyWithPlaceholder(),
  }) {
    return IndexerBulkResource(
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
      enableRss: enableRss == const $CopyWithPlaceholder()
          ? _value.enableRss
          // ignore: cast_nullable_to_non_nullable
          : enableRss as bool?,
      enableAutomaticSearch:
          enableAutomaticSearch == const $CopyWithPlaceholder()
          ? _value.enableAutomaticSearch
          // ignore: cast_nullable_to_non_nullable
          : enableAutomaticSearch as bool?,
      enableInteractiveSearch:
          enableInteractiveSearch == const $CopyWithPlaceholder()
          ? _value.enableInteractiveSearch
          // ignore: cast_nullable_to_non_nullable
          : enableInteractiveSearch as bool?,
      priority: priority == const $CopyWithPlaceholder()
          ? _value.priority
          // ignore: cast_nullable_to_non_nullable
          : priority as int?,
    );
  }
}

extension $IndexerBulkResourceCopyWith on IndexerBulkResource {
  /// Returns a callable class that can be used as follows: `instanceOfIndexerBulkResource.copyWith(...)` or like so:`instanceOfIndexerBulkResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IndexerBulkResourceCWProxy get copyWith =>
      _$IndexerBulkResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexerBulkResource _$IndexerBulkResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('IndexerBulkResource', json, ($checkedConvert) {
      final val = IndexerBulkResource(
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
        enableRss: $checkedConvert('enableRss', (v) => v as bool?),
        enableAutomaticSearch: $checkedConvert(
          'enableAutomaticSearch',
          (v) => v as bool?,
        ),
        enableInteractiveSearch: $checkedConvert(
          'enableInteractiveSearch',
          (v) => v as bool?,
        ),
        priority: $checkedConvert('priority', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$IndexerBulkResourceToJson(
  IndexerBulkResource instance,
) => <String, dynamic>{
  'ids': ?instance.ids,
  'tags': ?instance.tags,
  'applyTags': ?_$ApplyTagsEnumMap[instance.applyTags],
  'enableRss': ?instance.enableRss,
  'enableAutomaticSearch': ?instance.enableAutomaticSearch,
  'enableInteractiveSearch': ?instance.enableInteractiveSearch,
  'priority': ?instance.priority,
};

const _$ApplyTagsEnumMap = {
  ApplyTags.add: 'add',
  ApplyTags.remove: 'remove',
  ApplyTags.replace: 'replace',
};
