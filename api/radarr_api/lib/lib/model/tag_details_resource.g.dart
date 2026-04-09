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

  TagDetailsResource releaseProfileIds(List<int>? releaseProfileIds);

  TagDetailsResource indexerIds(List<int>? indexerIds);

  TagDetailsResource downloadClientIds(List<int>? downloadClientIds);

  TagDetailsResource autoTagIds(List<int>? autoTagIds);

  TagDetailsResource movieIds(List<int>? movieIds);

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
    List<int>? releaseProfileIds,
    List<int>? indexerIds,
    List<int>? downloadClientIds,
    List<int>? autoTagIds,
    List<int>? movieIds,
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
  TagDetailsResource releaseProfileIds(List<int>? releaseProfileIds) =>
      this(releaseProfileIds: releaseProfileIds);

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
  TagDetailsResource movieIds(List<int>? movieIds) => this(movieIds: movieIds);

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
    Object? releaseProfileIds = const $CopyWithPlaceholder(),
    Object? indexerIds = const $CopyWithPlaceholder(),
    Object? downloadClientIds = const $CopyWithPlaceholder(),
    Object? autoTagIds = const $CopyWithPlaceholder(),
    Object? movieIds = const $CopyWithPlaceholder(),
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
      releaseProfileIds: releaseProfileIds == const $CopyWithPlaceholder()
          ? _value.releaseProfileIds
          // ignore: cast_nullable_to_non_nullable
          : releaseProfileIds as List<int>?,
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
      movieIds: movieIds == const $CopyWithPlaceholder()
          ? _value.movieIds
          // ignore: cast_nullable_to_non_nullable
          : movieIds as List<int>?,
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
        releaseProfileIds: $checkedConvert(
          'releaseProfileIds',
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
        movieIds: $checkedConvert(
          'movieIds',
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
      'releaseProfileIds': ?instance.releaseProfileIds,
      'indexerIds': ?instance.indexerIds,
      'downloadClientIds': ?instance.downloadClientIds,
      'autoTagIds': ?instance.autoTagIds,
      'movieIds': ?instance.movieIds,
    };
