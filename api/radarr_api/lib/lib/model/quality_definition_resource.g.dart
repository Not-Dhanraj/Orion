// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_definition_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QualityDefinitionResourceCWProxy {
  QualityDefinitionResource id(int? id);

  QualityDefinitionResource quality(Quality? quality);

  QualityDefinitionResource title(String? title);

  QualityDefinitionResource weight(int? weight);

  QualityDefinitionResource minSize(double? minSize);

  QualityDefinitionResource maxSize(double? maxSize);

  QualityDefinitionResource preferredSize(double? preferredSize);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityDefinitionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityDefinitionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityDefinitionResource call({
    int? id,
    Quality? quality,
    String? title,
    int? weight,
    double? minSize,
    double? maxSize,
    double? preferredSize,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQualityDefinitionResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQualityDefinitionResource.copyWith.fieldName(...)`
class _$QualityDefinitionResourceCWProxyImpl
    implements _$QualityDefinitionResourceCWProxy {
  const _$QualityDefinitionResourceCWProxyImpl(this._value);

  final QualityDefinitionResource _value;

  @override
  QualityDefinitionResource id(int? id) => this(id: id);

  @override
  QualityDefinitionResource quality(Quality? quality) => this(quality: quality);

  @override
  QualityDefinitionResource title(String? title) => this(title: title);

  @override
  QualityDefinitionResource weight(int? weight) => this(weight: weight);

  @override
  QualityDefinitionResource minSize(double? minSize) => this(minSize: minSize);

  @override
  QualityDefinitionResource maxSize(double? maxSize) => this(maxSize: maxSize);

  @override
  QualityDefinitionResource preferredSize(double? preferredSize) =>
      this(preferredSize: preferredSize);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityDefinitionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityDefinitionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityDefinitionResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? quality = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? weight = const $CopyWithPlaceholder(),
    Object? minSize = const $CopyWithPlaceholder(),
    Object? maxSize = const $CopyWithPlaceholder(),
    Object? preferredSize = const $CopyWithPlaceholder(),
  }) {
    return QualityDefinitionResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      quality: quality == const $CopyWithPlaceholder()
          ? _value.quality
          // ignore: cast_nullable_to_non_nullable
          : quality as Quality?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      weight: weight == const $CopyWithPlaceholder()
          ? _value.weight
          // ignore: cast_nullable_to_non_nullable
          : weight as int?,
      minSize: minSize == const $CopyWithPlaceholder()
          ? _value.minSize
          // ignore: cast_nullable_to_non_nullable
          : minSize as double?,
      maxSize: maxSize == const $CopyWithPlaceholder()
          ? _value.maxSize
          // ignore: cast_nullable_to_non_nullable
          : maxSize as double?,
      preferredSize: preferredSize == const $CopyWithPlaceholder()
          ? _value.preferredSize
          // ignore: cast_nullable_to_non_nullable
          : preferredSize as double?,
    );
  }
}

extension $QualityDefinitionResourceCopyWith on QualityDefinitionResource {
  /// Returns a callable class that can be used as follows: `instanceOfQualityDefinitionResource.copyWith(...)` or like so:`instanceOfQualityDefinitionResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QualityDefinitionResourceCWProxy get copyWith =>
      _$QualityDefinitionResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QualityDefinitionResource _$QualityDefinitionResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('QualityDefinitionResource', json, ($checkedConvert) {
  final val = QualityDefinitionResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    quality: $checkedConvert(
      'quality',
      (v) => v == null ? null : Quality.fromJson(v as Map<String, dynamic>),
    ),
    title: $checkedConvert('title', (v) => v as String?),
    weight: $checkedConvert('weight', (v) => (v as num?)?.toInt()),
    minSize: $checkedConvert('minSize', (v) => (v as num?)?.toDouble()),
    maxSize: $checkedConvert('maxSize', (v) => (v as num?)?.toDouble()),
    preferredSize: $checkedConvert(
      'preferredSize',
      (v) => (v as num?)?.toDouble(),
    ),
  );
  return val;
});

Map<String, dynamic> _$QualityDefinitionResourceToJson(
  QualityDefinitionResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'quality': ?instance.quality?.toJson(),
  'title': ?instance.title,
  'weight': ?instance.weight,
  'minSize': ?instance.minSize,
  'maxSize': ?instance.maxSize,
  'preferredSize': ?instance.preferredSize,
};
