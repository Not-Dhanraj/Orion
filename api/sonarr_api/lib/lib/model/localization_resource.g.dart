// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LocalizationResourceCWProxy {
  LocalizationResource id(int? id);

  LocalizationResource strings(Map<String, String>? strings);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LocalizationResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LocalizationResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LocalizationResource call({int? id, Map<String, String>? strings});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLocalizationResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLocalizationResource.copyWith.fieldName(...)`
class _$LocalizationResourceCWProxyImpl
    implements _$LocalizationResourceCWProxy {
  const _$LocalizationResourceCWProxyImpl(this._value);

  final LocalizationResource _value;

  @override
  LocalizationResource id(int? id) => this(id: id);

  @override
  LocalizationResource strings(Map<String, String>? strings) =>
      this(strings: strings);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LocalizationResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LocalizationResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LocalizationResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? strings = const $CopyWithPlaceholder(),
  }) {
    return LocalizationResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      strings: strings == const $CopyWithPlaceholder()
          ? _value.strings
          // ignore: cast_nullable_to_non_nullable
          : strings as Map<String, String>?,
    );
  }
}

extension $LocalizationResourceCopyWith on LocalizationResource {
  /// Returns a callable class that can be used as follows: `instanceOfLocalizationResource.copyWith(...)` or like so:`instanceOfLocalizationResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LocalizationResourceCWProxy get copyWith =>
      _$LocalizationResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizationResource _$LocalizationResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LocalizationResource', json, ($checkedConvert) {
  final val = LocalizationResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    strings: $checkedConvert(
      'strings',
      (v) =>
          (v as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String)),
    ),
  );
  return val;
});

Map<String, dynamic> _$LocalizationResourceToJson(
  LocalizationResource instance,
) => <String, dynamic>{'id': ?instance.id, 'strings': ?instance.strings};
