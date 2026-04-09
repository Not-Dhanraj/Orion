// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_language_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LocalizationLanguageResourceCWProxy {
  LocalizationLanguageResource identifier(String? identifier);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LocalizationLanguageResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LocalizationLanguageResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LocalizationLanguageResource call({String? identifier});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLocalizationLanguageResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLocalizationLanguageResource.copyWith.fieldName(...)`
class _$LocalizationLanguageResourceCWProxyImpl
    implements _$LocalizationLanguageResourceCWProxy {
  const _$LocalizationLanguageResourceCWProxyImpl(this._value);

  final LocalizationLanguageResource _value;

  @override
  LocalizationLanguageResource identifier(String? identifier) =>
      this(identifier: identifier);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LocalizationLanguageResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LocalizationLanguageResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LocalizationLanguageResource call({
    Object? identifier = const $CopyWithPlaceholder(),
  }) {
    return LocalizationLanguageResource(
      identifier: identifier == const $CopyWithPlaceholder()
          ? _value.identifier
          // ignore: cast_nullable_to_non_nullable
          : identifier as String?,
    );
  }
}

extension $LocalizationLanguageResourceCopyWith
    on LocalizationLanguageResource {
  /// Returns a callable class that can be used as follows: `instanceOfLocalizationLanguageResource.copyWith(...)` or like so:`instanceOfLocalizationLanguageResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LocalizationLanguageResourceCWProxy get copyWith =>
      _$LocalizationLanguageResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizationLanguageResource _$LocalizationLanguageResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LocalizationLanguageResource', json, ($checkedConvert) {
  final val = LocalizationLanguageResource(
    identifier: $checkedConvert('identifier', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$LocalizationLanguageResourceToJson(
  LocalizationLanguageResource instance,
) => <String, dynamic>{'identifier': ?instance.identifier};
