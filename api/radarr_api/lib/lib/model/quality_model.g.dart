// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QualityModelCWProxy {
  QualityModel quality(Quality? quality);

  QualityModel revision(Revision? revision);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityModel(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityModel call({Quality? quality, Revision? revision});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQualityModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQualityModel.copyWith.fieldName(...)`
class _$QualityModelCWProxyImpl implements _$QualityModelCWProxy {
  const _$QualityModelCWProxyImpl(this._value);

  final QualityModel _value;

  @override
  QualityModel quality(Quality? quality) => this(quality: quality);

  @override
  QualityModel revision(Revision? revision) => this(revision: revision);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityModel(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityModel call({
    Object? quality = const $CopyWithPlaceholder(),
    Object? revision = const $CopyWithPlaceholder(),
  }) {
    return QualityModel(
      quality: quality == const $CopyWithPlaceholder()
          ? _value.quality
          // ignore: cast_nullable_to_non_nullable
          : quality as Quality?,
      revision: revision == const $CopyWithPlaceholder()
          ? _value.revision
          // ignore: cast_nullable_to_non_nullable
          : revision as Revision?,
    );
  }
}

extension $QualityModelCopyWith on QualityModel {
  /// Returns a callable class that can be used as follows: `instanceOfQualityModel.copyWith(...)` or like so:`instanceOfQualityModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QualityModelCWProxy get copyWith => _$QualityModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QualityModel _$QualityModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('QualityModel', json, ($checkedConvert) {
      final val = QualityModel(
        quality: $checkedConvert(
          'quality',
          (v) => v == null ? null : Quality.fromJson(v as Map<String, dynamic>),
        ),
        revision: $checkedConvert(
          'revision',
          (v) =>
              v == null ? null : Revision.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$QualityModelToJson(QualityModel instance) =>
    <String, dynamic>{
      'quality': ?instance.quality?.toJson(),
      'revision': ?instance.revision?.toJson(),
    };
