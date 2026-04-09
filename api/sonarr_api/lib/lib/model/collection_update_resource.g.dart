// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_update_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CollectionUpdateResourceCWProxy {
  CollectionUpdateResource collectionIds(List<int>? collectionIds);

  CollectionUpdateResource monitored(bool? monitored);

  CollectionUpdateResource monitorMovies(bool? monitorMovies);

  CollectionUpdateResource searchOnAdd(bool? searchOnAdd);

  CollectionUpdateResource qualityProfileId(int? qualityProfileId);

  CollectionUpdateResource rootFolderPath(String? rootFolderPath);

  CollectionUpdateResource minimumAvailability(
    MovieStatusType? minimumAvailability,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectionUpdateResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectionUpdateResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectionUpdateResource call({
    List<int>? collectionIds,
    bool? monitored,
    bool? monitorMovies,
    bool? searchOnAdd,
    int? qualityProfileId,
    String? rootFolderPath,
    MovieStatusType? minimumAvailability,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCollectionUpdateResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCollectionUpdateResource.copyWith.fieldName(...)`
class _$CollectionUpdateResourceCWProxyImpl
    implements _$CollectionUpdateResourceCWProxy {
  const _$CollectionUpdateResourceCWProxyImpl(this._value);

  final CollectionUpdateResource _value;

  @override
  CollectionUpdateResource collectionIds(List<int>? collectionIds) =>
      this(collectionIds: collectionIds);

  @override
  CollectionUpdateResource monitored(bool? monitored) =>
      this(monitored: monitored);

  @override
  CollectionUpdateResource monitorMovies(bool? monitorMovies) =>
      this(monitorMovies: monitorMovies);

  @override
  CollectionUpdateResource searchOnAdd(bool? searchOnAdd) =>
      this(searchOnAdd: searchOnAdd);

  @override
  CollectionUpdateResource qualityProfileId(int? qualityProfileId) =>
      this(qualityProfileId: qualityProfileId);

  @override
  CollectionUpdateResource rootFolderPath(String? rootFolderPath) =>
      this(rootFolderPath: rootFolderPath);

  @override
  CollectionUpdateResource minimumAvailability(
    MovieStatusType? minimumAvailability,
  ) => this(minimumAvailability: minimumAvailability);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectionUpdateResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectionUpdateResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectionUpdateResource call({
    Object? collectionIds = const $CopyWithPlaceholder(),
    Object? monitored = const $CopyWithPlaceholder(),
    Object? monitorMovies = const $CopyWithPlaceholder(),
    Object? searchOnAdd = const $CopyWithPlaceholder(),
    Object? qualityProfileId = const $CopyWithPlaceholder(),
    Object? rootFolderPath = const $CopyWithPlaceholder(),
    Object? minimumAvailability = const $CopyWithPlaceholder(),
  }) {
    return CollectionUpdateResource(
      collectionIds: collectionIds == const $CopyWithPlaceholder()
          ? _value.collectionIds
          // ignore: cast_nullable_to_non_nullable
          : collectionIds as List<int>?,
      monitored: monitored == const $CopyWithPlaceholder()
          ? _value.monitored
          // ignore: cast_nullable_to_non_nullable
          : monitored as bool?,
      monitorMovies: monitorMovies == const $CopyWithPlaceholder()
          ? _value.monitorMovies
          // ignore: cast_nullable_to_non_nullable
          : monitorMovies as bool?,
      searchOnAdd: searchOnAdd == const $CopyWithPlaceholder()
          ? _value.searchOnAdd
          // ignore: cast_nullable_to_non_nullable
          : searchOnAdd as bool?,
      qualityProfileId: qualityProfileId == const $CopyWithPlaceholder()
          ? _value.qualityProfileId
          // ignore: cast_nullable_to_non_nullable
          : qualityProfileId as int?,
      rootFolderPath: rootFolderPath == const $CopyWithPlaceholder()
          ? _value.rootFolderPath
          // ignore: cast_nullable_to_non_nullable
          : rootFolderPath as String?,
      minimumAvailability: minimumAvailability == const $CopyWithPlaceholder()
          ? _value.minimumAvailability
          // ignore: cast_nullable_to_non_nullable
          : minimumAvailability as MovieStatusType?,
    );
  }
}

extension $CollectionUpdateResourceCopyWith on CollectionUpdateResource {
  /// Returns a callable class that can be used as follows: `instanceOfCollectionUpdateResource.copyWith(...)` or like so:`instanceOfCollectionUpdateResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CollectionUpdateResourceCWProxy get copyWith =>
      _$CollectionUpdateResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionUpdateResource _$CollectionUpdateResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CollectionUpdateResource', json, ($checkedConvert) {
  final val = CollectionUpdateResource(
    collectionIds: $checkedConvert(
      'collectionIds',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
    monitored: $checkedConvert('monitored', (v) => v as bool?),
    monitorMovies: $checkedConvert('monitorMovies', (v) => v as bool?),
    searchOnAdd: $checkedConvert('searchOnAdd', (v) => v as bool?),
    qualityProfileId: $checkedConvert(
      'qualityProfileId',
      (v) => (v as num?)?.toInt(),
    ),
    rootFolderPath: $checkedConvert('rootFolderPath', (v) => v as String?),
    minimumAvailability: $checkedConvert(
      'minimumAvailability',
      (v) => $enumDecodeNullable(_$MovieStatusTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$CollectionUpdateResourceToJson(
  CollectionUpdateResource instance,
) => <String, dynamic>{
  'collectionIds': ?instance.collectionIds,
  'monitored': ?instance.monitored,
  'monitorMovies': ?instance.monitorMovies,
  'searchOnAdd': ?instance.searchOnAdd,
  'qualityProfileId': ?instance.qualityProfileId,
  'rootFolderPath': ?instance.rootFolderPath,
  'minimumAvailability':
      ?_$MovieStatusTypeEnumMap[instance.minimumAvailability],
};

const _$MovieStatusTypeEnumMap = {
  MovieStatusType.tba: 'tba',
  MovieStatusType.announced: 'announced',
  MovieStatusType.inCinemas: 'inCinemas',
  MovieStatusType.released: 'released',
  MovieStatusType.deleted: 'deleted',
};
