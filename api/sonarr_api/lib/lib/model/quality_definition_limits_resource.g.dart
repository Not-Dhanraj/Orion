// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_definition_limits_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QualityDefinitionLimitsResourceCWProxy {
  QualityDefinitionLimitsResource min(int? min);

  QualityDefinitionLimitsResource max(int? max);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityDefinitionLimitsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityDefinitionLimitsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityDefinitionLimitsResource call({int? min, int? max});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQualityDefinitionLimitsResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQualityDefinitionLimitsResource.copyWith.fieldName(...)`
class _$QualityDefinitionLimitsResourceCWProxyImpl
    implements _$QualityDefinitionLimitsResourceCWProxy {
  const _$QualityDefinitionLimitsResourceCWProxyImpl(this._value);

  final QualityDefinitionLimitsResource _value;

  @override
  QualityDefinitionLimitsResource min(int? min) => this(min: min);

  @override
  QualityDefinitionLimitsResource max(int? max) => this(max: max);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityDefinitionLimitsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityDefinitionLimitsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityDefinitionLimitsResource call({
    Object? min = const $CopyWithPlaceholder(),
    Object? max = const $CopyWithPlaceholder(),
  }) {
    return QualityDefinitionLimitsResource(
      min: min == const $CopyWithPlaceholder()
          ? _value.min
          // ignore: cast_nullable_to_non_nullable
          : min as int?,
      max: max == const $CopyWithPlaceholder()
          ? _value.max
          // ignore: cast_nullable_to_non_nullable
          : max as int?,
    );
  }
}

extension $QualityDefinitionLimitsResourceCopyWith
    on QualityDefinitionLimitsResource {
  /// Returns a callable class that can be used as follows: `instanceOfQualityDefinitionLimitsResource.copyWith(...)` or like so:`instanceOfQualityDefinitionLimitsResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QualityDefinitionLimitsResourceCWProxy get copyWith =>
      _$QualityDefinitionLimitsResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QualityDefinitionLimitsResource _$QualityDefinitionLimitsResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('QualityDefinitionLimitsResource', json, ($checkedConvert) {
  final val = QualityDefinitionLimitsResource(
    min: $checkedConvert('min', (v) => (v as num?)?.toInt()),
    max: $checkedConvert('max', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$QualityDefinitionLimitsResourceToJson(
  QualityDefinitionLimitsResource instance,
) => <String, dynamic>{'min': ?instance.min, 'max': ?instance.max};
