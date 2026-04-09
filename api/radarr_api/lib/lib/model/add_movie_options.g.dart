// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_movie_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddMovieOptionsCWProxy {
  AddMovieOptions ignoreEpisodesWithFiles(bool? ignoreEpisodesWithFiles);

  AddMovieOptions ignoreEpisodesWithoutFiles(bool? ignoreEpisodesWithoutFiles);

  AddMovieOptions monitor(MonitorTypes? monitor);

  AddMovieOptions searchForMovie(bool? searchForMovie);

  AddMovieOptions addMethod(AddMovieMethod? addMethod);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddMovieOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddMovieOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  AddMovieOptions call({
    bool? ignoreEpisodesWithFiles,
    bool? ignoreEpisodesWithoutFiles,
    MonitorTypes? monitor,
    bool? searchForMovie,
    AddMovieMethod? addMethod,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddMovieOptions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAddMovieOptions.copyWith.fieldName(...)`
class _$AddMovieOptionsCWProxyImpl implements _$AddMovieOptionsCWProxy {
  const _$AddMovieOptionsCWProxyImpl(this._value);

  final AddMovieOptions _value;

  @override
  AddMovieOptions ignoreEpisodesWithFiles(bool? ignoreEpisodesWithFiles) =>
      this(ignoreEpisodesWithFiles: ignoreEpisodesWithFiles);

  @override
  AddMovieOptions ignoreEpisodesWithoutFiles(
    bool? ignoreEpisodesWithoutFiles,
  ) => this(ignoreEpisodesWithoutFiles: ignoreEpisodesWithoutFiles);

  @override
  AddMovieOptions monitor(MonitorTypes? monitor) => this(monitor: monitor);

  @override
  AddMovieOptions searchForMovie(bool? searchForMovie) =>
      this(searchForMovie: searchForMovie);

  @override
  AddMovieOptions addMethod(AddMovieMethod? addMethod) =>
      this(addMethod: addMethod);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddMovieOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddMovieOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  AddMovieOptions call({
    Object? ignoreEpisodesWithFiles = const $CopyWithPlaceholder(),
    Object? ignoreEpisodesWithoutFiles = const $CopyWithPlaceholder(),
    Object? monitor = const $CopyWithPlaceholder(),
    Object? searchForMovie = const $CopyWithPlaceholder(),
    Object? addMethod = const $CopyWithPlaceholder(),
  }) {
    return AddMovieOptions(
      ignoreEpisodesWithFiles:
          ignoreEpisodesWithFiles == const $CopyWithPlaceholder()
          ? _value.ignoreEpisodesWithFiles
          // ignore: cast_nullable_to_non_nullable
          : ignoreEpisodesWithFiles as bool?,
      ignoreEpisodesWithoutFiles:
          ignoreEpisodesWithoutFiles == const $CopyWithPlaceholder()
          ? _value.ignoreEpisodesWithoutFiles
          // ignore: cast_nullable_to_non_nullable
          : ignoreEpisodesWithoutFiles as bool?,
      monitor: monitor == const $CopyWithPlaceholder()
          ? _value.monitor
          // ignore: cast_nullable_to_non_nullable
          : monitor as MonitorTypes?,
      searchForMovie: searchForMovie == const $CopyWithPlaceholder()
          ? _value.searchForMovie
          // ignore: cast_nullable_to_non_nullable
          : searchForMovie as bool?,
      addMethod: addMethod == const $CopyWithPlaceholder()
          ? _value.addMethod
          // ignore: cast_nullable_to_non_nullable
          : addMethod as AddMovieMethod?,
    );
  }
}

extension $AddMovieOptionsCopyWith on AddMovieOptions {
  /// Returns a callable class that can be used as follows: `instanceOfAddMovieOptions.copyWith(...)` or like so:`instanceOfAddMovieOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddMovieOptionsCWProxy get copyWith => _$AddMovieOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddMovieOptions _$AddMovieOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AddMovieOptions', json, ($checkedConvert) {
      final val = AddMovieOptions(
        ignoreEpisodesWithFiles: $checkedConvert(
          'ignoreEpisodesWithFiles',
          (v) => v as bool?,
        ),
        ignoreEpisodesWithoutFiles: $checkedConvert(
          'ignoreEpisodesWithoutFiles',
          (v) => v as bool?,
        ),
        monitor: $checkedConvert(
          'monitor',
          (v) => $enumDecodeNullable(_$MonitorTypesEnumMap, v),
        ),
        searchForMovie: $checkedConvert('searchForMovie', (v) => v as bool?),
        addMethod: $checkedConvert(
          'addMethod',
          (v) => $enumDecodeNullable(_$AddMovieMethodEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AddMovieOptionsToJson(AddMovieOptions instance) =>
    <String, dynamic>{
      'ignoreEpisodesWithFiles': ?instance.ignoreEpisodesWithFiles,
      'ignoreEpisodesWithoutFiles': ?instance.ignoreEpisodesWithoutFiles,
      'monitor': ?_$MonitorTypesEnumMap[instance.monitor],
      'searchForMovie': ?instance.searchForMovie,
      'addMethod': ?_$AddMovieMethodEnumMap[instance.addMethod],
    };

const _$MonitorTypesEnumMap = {
  MonitorTypes.movieOnly: 'movieOnly',
  MonitorTypes.movieAndCollection: 'movieAndCollection',
  MonitorTypes.none: 'none',
};

const _$AddMovieMethodEnumMap = {
  AddMovieMethod.manual: 'manual',
  AddMovieMethod.list: 'list',
  AddMovieMethod.collection: 'collection',
};
