// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naming_config_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NamingConfigResourceCWProxy {
  NamingConfigResource id(int? id);

  NamingConfigResource renameMovies(bool? renameMovies);

  NamingConfigResource replaceIllegalCharacters(bool? replaceIllegalCharacters);

  NamingConfigResource colonReplacementFormat(
    ColonReplacementFormat? colonReplacementFormat,
  );

  NamingConfigResource standardMovieFormat(String? standardMovieFormat);

  NamingConfigResource movieFolderFormat(String? movieFolderFormat);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NamingConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NamingConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  NamingConfigResource call({
    int? id,
    bool? renameMovies,
    bool? replaceIllegalCharacters,
    ColonReplacementFormat? colonReplacementFormat,
    String? standardMovieFormat,
    String? movieFolderFormat,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNamingConfigResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNamingConfigResource.copyWith.fieldName(...)`
class _$NamingConfigResourceCWProxyImpl
    implements _$NamingConfigResourceCWProxy {
  const _$NamingConfigResourceCWProxyImpl(this._value);

  final NamingConfigResource _value;

  @override
  NamingConfigResource id(int? id) => this(id: id);

  @override
  NamingConfigResource renameMovies(bool? renameMovies) =>
      this(renameMovies: renameMovies);

  @override
  NamingConfigResource replaceIllegalCharacters(
    bool? replaceIllegalCharacters,
  ) => this(replaceIllegalCharacters: replaceIllegalCharacters);

  @override
  NamingConfigResource colonReplacementFormat(
    ColonReplacementFormat? colonReplacementFormat,
  ) => this(colonReplacementFormat: colonReplacementFormat);

  @override
  NamingConfigResource standardMovieFormat(String? standardMovieFormat) =>
      this(standardMovieFormat: standardMovieFormat);

  @override
  NamingConfigResource movieFolderFormat(String? movieFolderFormat) =>
      this(movieFolderFormat: movieFolderFormat);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NamingConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NamingConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  NamingConfigResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? renameMovies = const $CopyWithPlaceholder(),
    Object? replaceIllegalCharacters = const $CopyWithPlaceholder(),
    Object? colonReplacementFormat = const $CopyWithPlaceholder(),
    Object? standardMovieFormat = const $CopyWithPlaceholder(),
    Object? movieFolderFormat = const $CopyWithPlaceholder(),
  }) {
    return NamingConfigResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      renameMovies: renameMovies == const $CopyWithPlaceholder()
          ? _value.renameMovies
          // ignore: cast_nullable_to_non_nullable
          : renameMovies as bool?,
      replaceIllegalCharacters:
          replaceIllegalCharacters == const $CopyWithPlaceholder()
          ? _value.replaceIllegalCharacters
          // ignore: cast_nullable_to_non_nullable
          : replaceIllegalCharacters as bool?,
      colonReplacementFormat:
          colonReplacementFormat == const $CopyWithPlaceholder()
          ? _value.colonReplacementFormat
          // ignore: cast_nullable_to_non_nullable
          : colonReplacementFormat as ColonReplacementFormat?,
      standardMovieFormat: standardMovieFormat == const $CopyWithPlaceholder()
          ? _value.standardMovieFormat
          // ignore: cast_nullable_to_non_nullable
          : standardMovieFormat as String?,
      movieFolderFormat: movieFolderFormat == const $CopyWithPlaceholder()
          ? _value.movieFolderFormat
          // ignore: cast_nullable_to_non_nullable
          : movieFolderFormat as String?,
    );
  }
}

extension $NamingConfigResourceCopyWith on NamingConfigResource {
  /// Returns a callable class that can be used as follows: `instanceOfNamingConfigResource.copyWith(...)` or like so:`instanceOfNamingConfigResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NamingConfigResourceCWProxy get copyWith =>
      _$NamingConfigResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NamingConfigResource _$NamingConfigResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('NamingConfigResource', json, ($checkedConvert) {
  final val = NamingConfigResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    renameMovies: $checkedConvert('renameMovies', (v) => v as bool?),
    replaceIllegalCharacters: $checkedConvert(
      'replaceIllegalCharacters',
      (v) => v as bool?,
    ),
    colonReplacementFormat: $checkedConvert(
      'colonReplacementFormat',
      (v) => $enumDecodeNullable(_$ColonReplacementFormatEnumMap, v),
    ),
    standardMovieFormat: $checkedConvert(
      'standardMovieFormat',
      (v) => v as String?,
    ),
    movieFolderFormat: $checkedConvert(
      'movieFolderFormat',
      (v) => v as String?,
    ),
  );
  return val;
});

Map<String, dynamic> _$NamingConfigResourceToJson(
  NamingConfigResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'renameMovies': ?instance.renameMovies,
  'replaceIllegalCharacters': ?instance.replaceIllegalCharacters,
  'colonReplacementFormat':
      ?_$ColonReplacementFormatEnumMap[instance.colonReplacementFormat],
  'standardMovieFormat': ?instance.standardMovieFormat,
  'movieFolderFormat': ?instance.movieFolderFormat,
};

const _$ColonReplacementFormatEnumMap = {
  ColonReplacementFormat.delete: 'delete',
  ColonReplacementFormat.dash: 'dash',
  ColonReplacementFormat.spaceDash: 'spaceDash',
  ColonReplacementFormat.spaceDashSpace: 'spaceDashSpace',
  ColonReplacementFormat.smart: 'smart',
};
