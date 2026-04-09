// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_config_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MetadataConfigResourceCWProxy {
  MetadataConfigResource id(int? id);

  MetadataConfigResource certificationCountry(
    TMDbCountryCode? certificationCountry,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MetadataConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MetadataConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MetadataConfigResource call({int? id, TMDbCountryCode? certificationCountry});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMetadataConfigResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMetadataConfigResource.copyWith.fieldName(...)`
class _$MetadataConfigResourceCWProxyImpl
    implements _$MetadataConfigResourceCWProxy {
  const _$MetadataConfigResourceCWProxyImpl(this._value);

  final MetadataConfigResource _value;

  @override
  MetadataConfigResource id(int? id) => this(id: id);

  @override
  MetadataConfigResource certificationCountry(
    TMDbCountryCode? certificationCountry,
  ) => this(certificationCountry: certificationCountry);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MetadataConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MetadataConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MetadataConfigResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? certificationCountry = const $CopyWithPlaceholder(),
  }) {
    return MetadataConfigResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      certificationCountry: certificationCountry == const $CopyWithPlaceholder()
          ? _value.certificationCountry
          // ignore: cast_nullable_to_non_nullable
          : certificationCountry as TMDbCountryCode?,
    );
  }
}

extension $MetadataConfigResourceCopyWith on MetadataConfigResource {
  /// Returns a callable class that can be used as follows: `instanceOfMetadataConfigResource.copyWith(...)` or like so:`instanceOfMetadataConfigResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MetadataConfigResourceCWProxy get copyWith =>
      _$MetadataConfigResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetadataConfigResource _$MetadataConfigResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MetadataConfigResource', json, ($checkedConvert) {
  final val = MetadataConfigResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    certificationCountry: $checkedConvert(
      'certificationCountry',
      (v) => $enumDecodeNullable(_$TMDbCountryCodeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$MetadataConfigResourceToJson(
  MetadataConfigResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'certificationCountry':
      ?_$TMDbCountryCodeEnumMap[instance.certificationCountry],
};

const _$TMDbCountryCodeEnumMap = {
  TMDbCountryCode.au: 'au',
  TMDbCountryCode.br: 'br',
  TMDbCountryCode.ca: 'ca',
  TMDbCountryCode.fr: 'fr',
  TMDbCountryCode.de: 'de',
  TMDbCountryCode.gb: 'gb',
  TMDbCountryCode.in_: 'in',
  TMDbCountryCode.ie: 'ie',
  TMDbCountryCode.it: 'it',
  TMDbCountryCode.nz: 'nz',
  TMDbCountryCode.ro: 'ro',
  TMDbCountryCode.es: 'es',
  TMDbCountryCode.us: 'us',
};
