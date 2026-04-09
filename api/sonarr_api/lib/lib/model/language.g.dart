// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LanguageCWProxy {
  Language id(int? id);

  Language name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Language(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Language(...).copyWith(id: 12, name: "My name")
  /// ````
  Language call({int? id, String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLanguage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLanguage.copyWith.fieldName(...)`
class _$LanguageCWProxyImpl implements _$LanguageCWProxy {
  const _$LanguageCWProxyImpl(this._value);

  final Language _value;

  @override
  Language id(int? id) => this(id: id);

  @override
  Language name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Language(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Language(...).copyWith(id: 12, name: "My name")
  /// ````
  Language call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return Language(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $LanguageCopyWith on Language {
  /// Returns a callable class that can be used as follows: `instanceOfLanguage.copyWith(...)` or like so:`instanceOfLanguage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LanguageCWProxy get copyWith => _$LanguageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Language', json, ($checkedConvert) {
      final val = Language(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
};
