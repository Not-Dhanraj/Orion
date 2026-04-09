// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_profile_item_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LanguageProfileItemResourceCWProxy {
  LanguageProfileItemResource id(int? id);

  LanguageProfileItemResource language(Language? language);

  LanguageProfileItemResource allowed(bool? allowed);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LanguageProfileItemResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LanguageProfileItemResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LanguageProfileItemResource call({
    int? id,
    Language? language,
    bool? allowed,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLanguageProfileItemResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLanguageProfileItemResource.copyWith.fieldName(...)`
class _$LanguageProfileItemResourceCWProxyImpl
    implements _$LanguageProfileItemResourceCWProxy {
  const _$LanguageProfileItemResourceCWProxyImpl(this._value);

  final LanguageProfileItemResource _value;

  @override
  LanguageProfileItemResource id(int? id) => this(id: id);

  @override
  LanguageProfileItemResource language(Language? language) =>
      this(language: language);

  @override
  LanguageProfileItemResource allowed(bool? allowed) => this(allowed: allowed);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LanguageProfileItemResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LanguageProfileItemResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LanguageProfileItemResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? language = const $CopyWithPlaceholder(),
    Object? allowed = const $CopyWithPlaceholder(),
  }) {
    return LanguageProfileItemResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      language: language == const $CopyWithPlaceholder()
          ? _value.language
          // ignore: cast_nullable_to_non_nullable
          : language as Language?,
      allowed: allowed == const $CopyWithPlaceholder()
          ? _value.allowed
          // ignore: cast_nullable_to_non_nullable
          : allowed as bool?,
    );
  }
}

extension $LanguageProfileItemResourceCopyWith on LanguageProfileItemResource {
  /// Returns a callable class that can be used as follows: `instanceOfLanguageProfileItemResource.copyWith(...)` or like so:`instanceOfLanguageProfileItemResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LanguageProfileItemResourceCWProxy get copyWith =>
      _$LanguageProfileItemResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageProfileItemResource _$LanguageProfileItemResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LanguageProfileItemResource', json, ($checkedConvert) {
  final val = LanguageProfileItemResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    language: $checkedConvert(
      'language',
      (v) => v == null ? null : Language.fromJson(v as Map<String, dynamic>),
    ),
    allowed: $checkedConvert('allowed', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$LanguageProfileItemResourceToJson(
  LanguageProfileItemResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'language': ?instance.language?.toJson(),
  'allowed': ?instance.allowed,
};
