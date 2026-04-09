// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_collection_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovieCollectionResourceCWProxy {
  MovieCollectionResource title(String? title);

  MovieCollectionResource tmdbId(int? tmdbId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieCollectionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieCollectionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieCollectionResource call({String? title, int? tmdbId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovieCollectionResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovieCollectionResource.copyWith.fieldName(...)`
class _$MovieCollectionResourceCWProxyImpl
    implements _$MovieCollectionResourceCWProxy {
  const _$MovieCollectionResourceCWProxyImpl(this._value);

  final MovieCollectionResource _value;

  @override
  MovieCollectionResource title(String? title) => this(title: title);

  @override
  MovieCollectionResource tmdbId(int? tmdbId) => this(tmdbId: tmdbId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieCollectionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieCollectionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieCollectionResource call({
    Object? title = const $CopyWithPlaceholder(),
    Object? tmdbId = const $CopyWithPlaceholder(),
  }) {
    return MovieCollectionResource(
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      tmdbId: tmdbId == const $CopyWithPlaceholder()
          ? _value.tmdbId
          // ignore: cast_nullable_to_non_nullable
          : tmdbId as int?,
    );
  }
}

extension $MovieCollectionResourceCopyWith on MovieCollectionResource {
  /// Returns a callable class that can be used as follows: `instanceOfMovieCollectionResource.copyWith(...)` or like so:`instanceOfMovieCollectionResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovieCollectionResourceCWProxy get copyWith =>
      _$MovieCollectionResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieCollectionResource _$MovieCollectionResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MovieCollectionResource', json, ($checkedConvert) {
  final val = MovieCollectionResource(
    title: $checkedConvert('title', (v) => v as String?),
    tmdbId: $checkedConvert('tmdbId', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$MovieCollectionResourceToJson(
  MovieCollectionResource instance,
) => <String, dynamic>{'title': ?instance.title, 'tmdbId': ?instance.tmdbId};
