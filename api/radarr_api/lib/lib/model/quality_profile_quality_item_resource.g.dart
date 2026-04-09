// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_profile_quality_item_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QualityProfileQualityItemResourceCWProxy {
  QualityProfileQualityItemResource id(int? id);

  QualityProfileQualityItemResource name(String? name);

  QualityProfileQualityItemResource quality(Quality? quality);

  QualityProfileQualityItemResource items(
    List<QualityProfileQualityItemResource>? items,
  );

  QualityProfileQualityItemResource allowed(bool? allowed);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityProfileQualityItemResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityProfileQualityItemResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityProfileQualityItemResource call({
    int? id,
    String? name,
    Quality? quality,
    List<QualityProfileQualityItemResource>? items,
    bool? allowed,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQualityProfileQualityItemResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQualityProfileQualityItemResource.copyWith.fieldName(...)`
class _$QualityProfileQualityItemResourceCWProxyImpl
    implements _$QualityProfileQualityItemResourceCWProxy {
  const _$QualityProfileQualityItemResourceCWProxyImpl(this._value);

  final QualityProfileQualityItemResource _value;

  @override
  QualityProfileQualityItemResource id(int? id) => this(id: id);

  @override
  QualityProfileQualityItemResource name(String? name) => this(name: name);

  @override
  QualityProfileQualityItemResource quality(Quality? quality) =>
      this(quality: quality);

  @override
  QualityProfileQualityItemResource items(
    List<QualityProfileQualityItemResource>? items,
  ) => this(items: items);

  @override
  QualityProfileQualityItemResource allowed(bool? allowed) =>
      this(allowed: allowed);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityProfileQualityItemResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityProfileQualityItemResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityProfileQualityItemResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? quality = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? allowed = const $CopyWithPlaceholder(),
  }) {
    return QualityProfileQualityItemResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      quality: quality == const $CopyWithPlaceholder()
          ? _value.quality
          // ignore: cast_nullable_to_non_nullable
          : quality as Quality?,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<QualityProfileQualityItemResource>?,
      allowed: allowed == const $CopyWithPlaceholder()
          ? _value.allowed
          // ignore: cast_nullable_to_non_nullable
          : allowed as bool?,
    );
  }
}

extension $QualityProfileQualityItemResourceCopyWith
    on QualityProfileQualityItemResource {
  /// Returns a callable class that can be used as follows: `instanceOfQualityProfileQualityItemResource.copyWith(...)` or like so:`instanceOfQualityProfileQualityItemResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QualityProfileQualityItemResourceCWProxy get copyWith =>
      _$QualityProfileQualityItemResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QualityProfileQualityItemResource _$QualityProfileQualityItemResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('QualityProfileQualityItemResource', json, (
  $checkedConvert,
) {
  final val = QualityProfileQualityItemResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
    quality: $checkedConvert(
      'quality',
      (v) => v == null ? null : Quality.fromJson(v as Map<String, dynamic>),
    ),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => QualityProfileQualityItemResource.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    allowed: $checkedConvert('allowed', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$QualityProfileQualityItemResourceToJson(
  QualityProfileQualityItemResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'quality': ?instance.quality?.toJson(),
  'items': ?instance.items?.map((e) => e.toJson()).toList(),
  'allowed': ?instance.allowed,
};
