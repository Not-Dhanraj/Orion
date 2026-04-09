// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_profile_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LanguageProfileResourceCWProxy {
  LanguageProfileResource id(int? id);

  LanguageProfileResource name(String? name);

  LanguageProfileResource upgradeAllowed(bool? upgradeAllowed);

  LanguageProfileResource cutoff(Language? cutoff);

  LanguageProfileResource languages(
    List<LanguageProfileItemResource>? languages,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LanguageProfileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LanguageProfileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LanguageProfileResource call({
    int? id,
    String? name,
    bool? upgradeAllowed,
    Language? cutoff,
    List<LanguageProfileItemResource>? languages,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLanguageProfileResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLanguageProfileResource.copyWith.fieldName(...)`
class _$LanguageProfileResourceCWProxyImpl
    implements _$LanguageProfileResourceCWProxy {
  const _$LanguageProfileResourceCWProxyImpl(this._value);

  final LanguageProfileResource _value;

  @override
  LanguageProfileResource id(int? id) => this(id: id);

  @override
  LanguageProfileResource name(String? name) => this(name: name);

  @override
  LanguageProfileResource upgradeAllowed(bool? upgradeAllowed) =>
      this(upgradeAllowed: upgradeAllowed);

  @override
  LanguageProfileResource cutoff(Language? cutoff) => this(cutoff: cutoff);

  @override
  LanguageProfileResource languages(
    List<LanguageProfileItemResource>? languages,
  ) => this(languages: languages);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LanguageProfileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LanguageProfileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LanguageProfileResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? upgradeAllowed = const $CopyWithPlaceholder(),
    Object? cutoff = const $CopyWithPlaceholder(),
    Object? languages = const $CopyWithPlaceholder(),
  }) {
    return LanguageProfileResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      upgradeAllowed: upgradeAllowed == const $CopyWithPlaceholder()
          ? _value.upgradeAllowed
          // ignore: cast_nullable_to_non_nullable
          : upgradeAllowed as bool?,
      cutoff: cutoff == const $CopyWithPlaceholder()
          ? _value.cutoff
          // ignore: cast_nullable_to_non_nullable
          : cutoff as Language?,
      languages: languages == const $CopyWithPlaceholder()
          ? _value.languages
          // ignore: cast_nullable_to_non_nullable
          : languages as List<LanguageProfileItemResource>?,
    );
  }
}

extension $LanguageProfileResourceCopyWith on LanguageProfileResource {
  /// Returns a callable class that can be used as follows: `instanceOfLanguageProfileResource.copyWith(...)` or like so:`instanceOfLanguageProfileResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LanguageProfileResourceCWProxy get copyWith =>
      _$LanguageProfileResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageProfileResource _$LanguageProfileResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LanguageProfileResource', json, ($checkedConvert) {
  final val = LanguageProfileResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
    upgradeAllowed: $checkedConvert('upgradeAllowed', (v) => v as bool?),
    cutoff: $checkedConvert(
      'cutoff',
      (v) => v == null ? null : Language.fromJson(v as Map<String, dynamic>),
    ),
    languages: $checkedConvert(
      'languages',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                LanguageProfileItemResource.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$LanguageProfileResourceToJson(
  LanguageProfileResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'upgradeAllowed': ?instance.upgradeAllowed,
  'cutoff': ?instance.cutoff?.toJson(),
  'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
};
