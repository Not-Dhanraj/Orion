// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_details_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TagDetailsResourceCWProxy {
  TagDetailsResource id(int? id);

  TagDetailsResource label(String? label);

  TagDetailsResource delayProfileIds(List<int>? delayProfileIds);

  TagDetailsResource importListIds(List<int>? importListIds);

  TagDetailsResource notificationIds(List<int>? notificationIds);

  TagDetailsResource restrictionIds(List<int>? restrictionIds);

  TagDetailsResource indexerIds(List<int>? indexerIds);

  TagDetailsResource downloadClientIds(List<int>? downloadClientIds);

  TagDetailsResource autoTagIds(List<int>? autoTagIds);

  TagDetailsResource seriesIds(List<int>? seriesIds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TagDetailsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TagDetailsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  TagDetailsResource call({
    int? id,
    String? label,
    List<int>? delayProfileIds,
    List<int>? importListIds,
    List<int>? notificationIds,
    List<int>? restrictionIds,
    List<int>? indexerIds,
    List<int>? downloadClientIds,
    List<int>? autoTagIds,
    List<int>? seriesIds,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTagDetailsResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTagDetailsResource.copyWith.fieldName(...)`
class _$TagDetailsResourceCWProxyImpl implements _$TagDetailsResourceCWProxy {
  const _$TagDetailsResourceCWProxyImpl(this._value);

  final TagDetailsResource _value;

  @override
  TagDetailsResource id(int? id) => this(id: id);

  @override
  TagDetailsResource label(String? label) => this(label: label);

  @override
  TagDetailsResource delayProfileIds(List<int>? delayProfileIds) =>
      this(delayProfileIds: delayProfileIds);

  @override
  TagDetailsResource importListIds(List<int>? importListIds) =>
      this(importListIds: importListIds);

  @override
  TagDetailsResource notificationIds(List<int>? notificationIds) =>
      this(notificationIds: notificationIds);

  @override
  TagDetailsResource restrictionIds(List<int>? restrictionIds) =>
      this(restrictionIds: restrictionIds);

  @override
  TagDetailsResource indexerIds(List<int>? indexerIds) =>
      this(indexerIds: indexerIds);

  @override
  TagDetailsResource downloadClientIds(List<int>? downloadClientIds) =>
      this(downloadClientIds: downloadClientIds);

  @override
  TagDetailsResource autoTagIds(List<int>? autoTagIds) =>
      this(autoTagIds: autoTagIds);

  @override
  TagDetailsResource seriesIds(List<int>? seriesIds) =>
      this(seriesIds: seriesIds);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TagDetailsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TagDetailsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  TagDetailsResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
    Object? delayProfileIds = const $CopyWithPlaceholder(),
    Object? importListIds = const $CopyWithPlaceholder(),
    Object? notificationIds = const $CopyWithPlaceholder(),
    Object? restrictionIds = const $CopyWithPlaceholder(),
    Object? indexerIds = const $CopyWithPlaceholder(),
    Object? downloadClientIds = const $CopyWithPlaceholder(),
    Object? autoTagIds = const $CopyWithPlaceholder(),
    Object? seriesIds = const $CopyWithPlaceholder(),
  }) {
    return TagDetailsResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      label: label == const $CopyWithPlaceholder()
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String?,
      delayProfileIds: delayProfileIds == const $CopyWithPlaceholder()
          ? _value.delayProfileIds
          // ignore: cast_nullable_to_non_nullable
          : delayProfileIds as List<int>?,
      importListIds: importListIds == const $CopyWithPlaceholder()
          ? _value.importListIds
          // ignore: cast_nullable_to_non_nullable
          : importListIds as List<int>?,
      notificationIds: notificationIds == const $CopyWithPlaceholder()
          ? _value.notificationIds
          // ignore: cast_nullable_to_non_nullable
          : notificationIds as List<int>?,
      restrictionIds: restrictionIds == const $CopyWithPlaceholder()
          ? _value.restrictionIds
          // ignore: cast_nullable_to_non_nullable
          : restrictionIds as List<int>?,
      indexerIds: indexerIds == const $CopyWithPlaceholder()
          ? _value.indexerIds
          // ignore: cast_nullable_to_non_nullable
          : indexerIds as List<int>?,
      downloadClientIds: downloadClientIds == const $CopyWithPlaceholder()
          ? _value.downloadClientIds
          // ignore: cast_nullable_to_non_nullable
          : downloadClientIds as List<int>?,
      autoTagIds: autoTagIds == const $CopyWithPlaceholder()
          ? _value.autoTagIds
          // ignore: cast_nullable_to_non_nullable
          : autoTagIds as List<int>?,
      seriesIds: seriesIds == const $CopyWithPlaceholder()
          ? _value.seriesIds
          // ignore: cast_nullable_to_non_nullable
          : seriesIds as List<int>?,
    );
  }
}

extension $TagDetailsResourceCopyWith on TagDetailsResource {
  /// Returns a callable class that can be used as follows: `instanceOfTagDetailsResource.copyWith(...)` or like so:`instanceOfTagDetailsResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TagDetailsResourceCWProxy get copyWith =>
      _$TagDetailsResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagDetailsResource _$TagDetailsResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TagDetailsResource', json, ($checkedConvert) {
      final val = TagDetailsResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        label: $checkedConvert('label', (v) => v as String?),
        delayProfileIds: $checkedConvert(
          'delayProfileIds',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
        importListIds: $checkedConvert(
          'importListIds',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
        notificationIds: $checkedConvert(
          'notificationIds',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
        restrictionIds: $checkedConvert(
          'restrictionIds',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
        indexerIds: $checkedConvert(
          'indexerIds',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
        downloadClientIds: $checkedConvert(
          'downloadClientIds',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
        autoTagIds: $checkedConvert(
          'autoTagIds',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
        seriesIds: $checkedConvert(
          'seriesIds',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$TagDetailsResourceToJson(TagDetailsResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'label': ?instance.label,
      'delayProfileIds': ?instance.delayProfileIds,
      'importListIds': ?instance.importListIds,
      'notificationIds': ?instance.notificationIds,
      'restrictionIds': ?instance.restrictionIds,
      'indexerIds': ?instance.indexerIds,
      'downloadClientIds': ?instance.downloadClientIds,
      'autoTagIds': ?instance.autoTagIds,
      'seriesIds': ?instance.seriesIds,
    };
