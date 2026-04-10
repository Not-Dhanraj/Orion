// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_image_types.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConfigImageTypesCWProxy {
  ConfigImageTypes backdropSizes(List<String>? backdropSizes);

  ConfigImageTypes baseUrl(String? baseUrl);

  ConfigImageTypes logoSizes(List<String>? logoSizes);

  ConfigImageTypes posterSizes(List<String>? posterSizes);

  ConfigImageTypes profileSizes(List<String>? profileSizes);

  ConfigImageTypes secureBaseUrl(String? secureBaseUrl);

  ConfigImageTypes stillSizes(List<String>? stillSizes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ConfigImageTypes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ConfigImageTypes(...).copyWith(id: 12, name: "My name")
  /// ````
  ConfigImageTypes call({
    List<String>? backdropSizes,
    String? baseUrl,
    List<String>? logoSizes,
    List<String>? posterSizes,
    List<String>? profileSizes,
    String? secureBaseUrl,
    List<String>? stillSizes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfConfigImageTypes.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfConfigImageTypes.copyWith.fieldName(...)`
class _$ConfigImageTypesCWProxyImpl implements _$ConfigImageTypesCWProxy {
  const _$ConfigImageTypesCWProxyImpl(this._value);

  final ConfigImageTypes _value;

  @override
  ConfigImageTypes backdropSizes(List<String>? backdropSizes) =>
      this(backdropSizes: backdropSizes);

  @override
  ConfigImageTypes baseUrl(String? baseUrl) => this(baseUrl: baseUrl);

  @override
  ConfigImageTypes logoSizes(List<String>? logoSizes) =>
      this(logoSizes: logoSizes);

  @override
  ConfigImageTypes posterSizes(List<String>? posterSizes) =>
      this(posterSizes: posterSizes);

  @override
  ConfigImageTypes profileSizes(List<String>? profileSizes) =>
      this(profileSizes: profileSizes);

  @override
  ConfigImageTypes secureBaseUrl(String? secureBaseUrl) =>
      this(secureBaseUrl: secureBaseUrl);

  @override
  ConfigImageTypes stillSizes(List<String>? stillSizes) =>
      this(stillSizes: stillSizes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ConfigImageTypes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ConfigImageTypes(...).copyWith(id: 12, name: "My name")
  /// ````
  ConfigImageTypes call({
    Object? backdropSizes = const $CopyWithPlaceholder(),
    Object? baseUrl = const $CopyWithPlaceholder(),
    Object? logoSizes = const $CopyWithPlaceholder(),
    Object? posterSizes = const $CopyWithPlaceholder(),
    Object? profileSizes = const $CopyWithPlaceholder(),
    Object? secureBaseUrl = const $CopyWithPlaceholder(),
    Object? stillSizes = const $CopyWithPlaceholder(),
  }) {
    return ConfigImageTypes(
      backdropSizes: backdropSizes == const $CopyWithPlaceholder()
          ? _value.backdropSizes
          // ignore: cast_nullable_to_non_nullable
          : backdropSizes as List<String>?,
      baseUrl: baseUrl == const $CopyWithPlaceholder()
          ? _value.baseUrl
          // ignore: cast_nullable_to_non_nullable
          : baseUrl as String?,
      logoSizes: logoSizes == const $CopyWithPlaceholder()
          ? _value.logoSizes
          // ignore: cast_nullable_to_non_nullable
          : logoSizes as List<String>?,
      posterSizes: posterSizes == const $CopyWithPlaceholder()
          ? _value.posterSizes
          // ignore: cast_nullable_to_non_nullable
          : posterSizes as List<String>?,
      profileSizes: profileSizes == const $CopyWithPlaceholder()
          ? _value.profileSizes
          // ignore: cast_nullable_to_non_nullable
          : profileSizes as List<String>?,
      secureBaseUrl: secureBaseUrl == const $CopyWithPlaceholder()
          ? _value.secureBaseUrl
          // ignore: cast_nullable_to_non_nullable
          : secureBaseUrl as String?,
      stillSizes: stillSizes == const $CopyWithPlaceholder()
          ? _value.stillSizes
          // ignore: cast_nullable_to_non_nullable
          : stillSizes as List<String>?,
    );
  }
}

extension $ConfigImageTypesCopyWith on ConfigImageTypes {
  /// Returns a callable class that can be used as follows: `instanceOfConfigImageTypes.copyWith(...)` or like so:`instanceOfConfigImageTypes.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConfigImageTypesCWProxy get copyWith => _$ConfigImageTypesCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigImageTypes _$ConfigImageTypesFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ConfigImageTypes',
      json,
      ($checkedConvert) {
        final val = ConfigImageTypes(
          backdropSizes: $checkedConvert(
            'BackdropSizes',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          baseUrl: $checkedConvert('BaseUrl', (v) => v as String?),
          logoSizes: $checkedConvert(
            'LogoSizes',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          posterSizes: $checkedConvert(
            'PosterSizes',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          profileSizes: $checkedConvert(
            'ProfileSizes',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          secureBaseUrl: $checkedConvert('SecureBaseUrl', (v) => v as String?),
          stillSizes: $checkedConvert(
            'StillSizes',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'backdropSizes': 'BackdropSizes',
        'baseUrl': 'BaseUrl',
        'logoSizes': 'LogoSizes',
        'posterSizes': 'PosterSizes',
        'profileSizes': 'ProfileSizes',
        'secureBaseUrl': 'SecureBaseUrl',
        'stillSizes': 'StillSizes',
      },
    );

Map<String, dynamic> _$ConfigImageTypesToJson(ConfigImageTypes instance) =>
    <String, dynamic>{
      'BackdropSizes': ?instance.backdropSizes,
      'BaseUrl': ?instance.baseUrl,
      'LogoSizes': ?instance.logoSizes,
      'PosterSizes': ?instance.posterSizes,
      'ProfileSizes': ?instance.profileSizes,
      'SecureBaseUrl': ?instance.secureBaseUrl,
      'StillSizes': ?instance.stillSizes,
    };
