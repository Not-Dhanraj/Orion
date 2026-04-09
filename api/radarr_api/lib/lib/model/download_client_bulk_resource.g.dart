// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_client_bulk_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DownloadClientBulkResourceCWProxy {
  DownloadClientBulkResource ids(List<int>? ids);

  DownloadClientBulkResource tags(List<int>? tags);

  DownloadClientBulkResource applyTags(ApplyTags? applyTags);

  DownloadClientBulkResource enable(bool? enable);

  DownloadClientBulkResource priority(int? priority);

  DownloadClientBulkResource removeCompletedDownloads(
    bool? removeCompletedDownloads,
  );

  DownloadClientBulkResource removeFailedDownloads(bool? removeFailedDownloads);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DownloadClientBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DownloadClientBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  DownloadClientBulkResource call({
    List<int>? ids,
    List<int>? tags,
    ApplyTags? applyTags,
    bool? enable,
    int? priority,
    bool? removeCompletedDownloads,
    bool? removeFailedDownloads,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDownloadClientBulkResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDownloadClientBulkResource.copyWith.fieldName(...)`
class _$DownloadClientBulkResourceCWProxyImpl
    implements _$DownloadClientBulkResourceCWProxy {
  const _$DownloadClientBulkResourceCWProxyImpl(this._value);

  final DownloadClientBulkResource _value;

  @override
  DownloadClientBulkResource ids(List<int>? ids) => this(ids: ids);

  @override
  DownloadClientBulkResource tags(List<int>? tags) => this(tags: tags);

  @override
  DownloadClientBulkResource applyTags(ApplyTags? applyTags) =>
      this(applyTags: applyTags);

  @override
  DownloadClientBulkResource enable(bool? enable) => this(enable: enable);

  @override
  DownloadClientBulkResource priority(int? priority) =>
      this(priority: priority);

  @override
  DownloadClientBulkResource removeCompletedDownloads(
    bool? removeCompletedDownloads,
  ) => this(removeCompletedDownloads: removeCompletedDownloads);

  @override
  DownloadClientBulkResource removeFailedDownloads(
    bool? removeFailedDownloads,
  ) => this(removeFailedDownloads: removeFailedDownloads);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DownloadClientBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DownloadClientBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  DownloadClientBulkResource call({
    Object? ids = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? applyTags = const $CopyWithPlaceholder(),
    Object? enable = const $CopyWithPlaceholder(),
    Object? priority = const $CopyWithPlaceholder(),
    Object? removeCompletedDownloads = const $CopyWithPlaceholder(),
    Object? removeFailedDownloads = const $CopyWithPlaceholder(),
  }) {
    return DownloadClientBulkResource(
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
      enable: enable == const $CopyWithPlaceholder()
          ? _value.enable
          // ignore: cast_nullable_to_non_nullable
          : enable as bool?,
      priority: priority == const $CopyWithPlaceholder()
          ? _value.priority
          // ignore: cast_nullable_to_non_nullable
          : priority as int?,
      removeCompletedDownloads:
          removeCompletedDownloads == const $CopyWithPlaceholder()
          ? _value.removeCompletedDownloads
          // ignore: cast_nullable_to_non_nullable
          : removeCompletedDownloads as bool?,
      removeFailedDownloads:
          removeFailedDownloads == const $CopyWithPlaceholder()
          ? _value.removeFailedDownloads
          // ignore: cast_nullable_to_non_nullable
          : removeFailedDownloads as bool?,
    );
  }
}

extension $DownloadClientBulkResourceCopyWith on DownloadClientBulkResource {
  /// Returns a callable class that can be used as follows: `instanceOfDownloadClientBulkResource.copyWith(...)` or like so:`instanceOfDownloadClientBulkResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DownloadClientBulkResourceCWProxy get copyWith =>
      _$DownloadClientBulkResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadClientBulkResource _$DownloadClientBulkResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DownloadClientBulkResource', json, ($checkedConvert) {
  final val = DownloadClientBulkResource(
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
    enable: $checkedConvert('enable', (v) => v as bool?),
    priority: $checkedConvert('priority', (v) => (v as num?)?.toInt()),
    removeCompletedDownloads: $checkedConvert(
      'removeCompletedDownloads',
      (v) => v as bool?,
    ),
    removeFailedDownloads: $checkedConvert(
      'removeFailedDownloads',
      (v) => v as bool?,
    ),
  );
  return val;
});

Map<String, dynamic> _$DownloadClientBulkResourceToJson(
  DownloadClientBulkResource instance,
) => <String, dynamic>{
  'ids': ?instance.ids,
  'tags': ?instance.tags,
  'applyTags': ?_$ApplyTagsEnumMap[instance.applyTags],
  'enable': ?instance.enable,
  'priority': ?instance.priority,
  'removeCompletedDownloads': ?instance.removeCompletedDownloads,
  'removeFailedDownloads': ?instance.removeFailedDownloads,
};

const _$ApplyTagsEnumMap = {
  ApplyTags.add: 'add',
  ApplyTags.remove: 'remove',
  ApplyTags.replace: 'replace',
};
