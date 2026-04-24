// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_filters.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueryFiltersCWProxy {
  QueryFilters genres(List<NameGuidPair>? genres);

  QueryFilters tags(List<String>? tags);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueryFilters(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueryFilters(...).copyWith(id: 12, name: "My name")
  /// ````
  QueryFilters call({List<NameGuidPair>? genres, List<String>? tags});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueryFilters.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQueryFilters.copyWith.fieldName(...)`
class _$QueryFiltersCWProxyImpl implements _$QueryFiltersCWProxy {
  const _$QueryFiltersCWProxyImpl(this._value);

  final QueryFilters _value;

  @override
  QueryFilters genres(List<NameGuidPair>? genres) => this(genres: genres);

  @override
  QueryFilters tags(List<String>? tags) => this(tags: tags);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueryFilters(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueryFilters(...).copyWith(id: 12, name: "My name")
  /// ````
  QueryFilters call({
    Object? genres = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
  }) {
    return QueryFilters(
      genres: genres == const $CopyWithPlaceholder()
          ? _value.genres
          // ignore: cast_nullable_to_non_nullable
          : genres as List<NameGuidPair>?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as List<String>?,
    );
  }
}

extension $QueryFiltersCopyWith on QueryFilters {
  /// Returns a callable class that can be used as follows: `instanceOfQueryFilters.copyWith(...)` or like so:`instanceOfQueryFilters.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueryFiltersCWProxy get copyWith => _$QueryFiltersCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFilters _$QueryFiltersFromJson(Map<String, dynamic> json) =>
    $checkedCreate('QueryFilters', json, ($checkedConvert) {
      final val = QueryFilters(
        genres: $checkedConvert(
          'Genres',
          (v) => (v as List<dynamic>?)
              ?.map((e) => NameGuidPair.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        tags: $checkedConvert(
          'Tags',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'genres': 'Genres', 'tags': 'Tags'});

Map<String, dynamic> _$QueryFiltersToJson(QueryFilters instance) =>
    <String, dynamic>{
      'Genres': ?instance.genres?.map((e) => e.toJson()).toList(),
      'Tags': ?instance.tags,
    };
