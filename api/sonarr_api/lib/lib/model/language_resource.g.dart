// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LanguageResourceCWProxy {
  LanguageResource id(int? id);

  LanguageResource name(String? name);

  LanguageResource nameLower(String? nameLower);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LanguageResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LanguageResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LanguageResource call({int? id, String? name, String? nameLower});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLanguageResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLanguageResource.copyWith.fieldName(...)`
class _$LanguageResourceCWProxyImpl implements _$LanguageResourceCWProxy {
  const _$LanguageResourceCWProxyImpl(this._value);

  final LanguageResource _value;

  @override
  LanguageResource id(int? id) => this(id: id);

  @override
  LanguageResource name(String? name) => this(name: name);

  @override
  LanguageResource nameLower(String? nameLower) => this(nameLower: nameLower);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LanguageResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LanguageResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LanguageResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? nameLower = const $CopyWithPlaceholder(),
  }) {
    return LanguageResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      nameLower: nameLower == const $CopyWithPlaceholder()
          ? _value.nameLower
          // ignore: cast_nullable_to_non_nullable
          : nameLower as String?,
    );
  }
}

extension $LanguageResourceCopyWith on LanguageResource {
  /// Returns a callable class that can be used as follows: `instanceOfLanguageResource.copyWith(...)` or like so:`instanceOfLanguageResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LanguageResourceCWProxy get copyWith => _$LanguageResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageResource _$LanguageResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LanguageResource', json, ($checkedConvert) {
      final val = LanguageResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        nameLower: $checkedConvert('nameLower', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$LanguageResourceToJson(LanguageResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'nameLower': ?instance.nameLower,
    };
