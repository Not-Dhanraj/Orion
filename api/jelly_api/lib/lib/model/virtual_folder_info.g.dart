// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_folder_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VirtualFolderInfoCWProxy {
  VirtualFolderInfo name(String? name);

  VirtualFolderInfo locations(List<String>? locations);

  VirtualFolderInfo collectionType(CollectionTypeOptions? collectionType);

  VirtualFolderInfo libraryOptions(LibraryOptions? libraryOptions);

  VirtualFolderInfo itemId(String? itemId);

  VirtualFolderInfo primaryImageItemId(String? primaryImageItemId);

  VirtualFolderInfo refreshProgress(double? refreshProgress);

  VirtualFolderInfo refreshStatus(String? refreshStatus);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VirtualFolderInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VirtualFolderInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  VirtualFolderInfo call({
    String? name,
    List<String>? locations,
    CollectionTypeOptions? collectionType,
    LibraryOptions? libraryOptions,
    String? itemId,
    String? primaryImageItemId,
    double? refreshProgress,
    String? refreshStatus,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVirtualFolderInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVirtualFolderInfo.copyWith.fieldName(...)`
class _$VirtualFolderInfoCWProxyImpl implements _$VirtualFolderInfoCWProxy {
  const _$VirtualFolderInfoCWProxyImpl(this._value);

  final VirtualFolderInfo _value;

  @override
  VirtualFolderInfo name(String? name) => this(name: name);

  @override
  VirtualFolderInfo locations(List<String>? locations) =>
      this(locations: locations);

  @override
  VirtualFolderInfo collectionType(CollectionTypeOptions? collectionType) =>
      this(collectionType: collectionType);

  @override
  VirtualFolderInfo libraryOptions(LibraryOptions? libraryOptions) =>
      this(libraryOptions: libraryOptions);

  @override
  VirtualFolderInfo itemId(String? itemId) => this(itemId: itemId);

  @override
  VirtualFolderInfo primaryImageItemId(String? primaryImageItemId) =>
      this(primaryImageItemId: primaryImageItemId);

  @override
  VirtualFolderInfo refreshProgress(double? refreshProgress) =>
      this(refreshProgress: refreshProgress);

  @override
  VirtualFolderInfo refreshStatus(String? refreshStatus) =>
      this(refreshStatus: refreshStatus);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VirtualFolderInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VirtualFolderInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  VirtualFolderInfo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? locations = const $CopyWithPlaceholder(),
    Object? collectionType = const $CopyWithPlaceholder(),
    Object? libraryOptions = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? primaryImageItemId = const $CopyWithPlaceholder(),
    Object? refreshProgress = const $CopyWithPlaceholder(),
    Object? refreshStatus = const $CopyWithPlaceholder(),
  }) {
    return VirtualFolderInfo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      locations: locations == const $CopyWithPlaceholder()
          ? _value.locations
          // ignore: cast_nullable_to_non_nullable
          : locations as List<String>?,
      collectionType: collectionType == const $CopyWithPlaceholder()
          ? _value.collectionType
          // ignore: cast_nullable_to_non_nullable
          : collectionType as CollectionTypeOptions?,
      libraryOptions: libraryOptions == const $CopyWithPlaceholder()
          ? _value.libraryOptions
          // ignore: cast_nullable_to_non_nullable
          : libraryOptions as LibraryOptions?,
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      primaryImageItemId: primaryImageItemId == const $CopyWithPlaceholder()
          ? _value.primaryImageItemId
          // ignore: cast_nullable_to_non_nullable
          : primaryImageItemId as String?,
      refreshProgress: refreshProgress == const $CopyWithPlaceholder()
          ? _value.refreshProgress
          // ignore: cast_nullable_to_non_nullable
          : refreshProgress as double?,
      refreshStatus: refreshStatus == const $CopyWithPlaceholder()
          ? _value.refreshStatus
          // ignore: cast_nullable_to_non_nullable
          : refreshStatus as String?,
    );
  }
}

extension $VirtualFolderInfoCopyWith on VirtualFolderInfo {
  /// Returns a callable class that can be used as follows: `instanceOfVirtualFolderInfo.copyWith(...)` or like so:`instanceOfVirtualFolderInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VirtualFolderInfoCWProxy get copyWith =>
      _$VirtualFolderInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VirtualFolderInfo _$VirtualFolderInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'VirtualFolderInfo',
      json,
      ($checkedConvert) {
        final val = VirtualFolderInfo(
          name: $checkedConvert('Name', (v) => v as String?),
          locations: $checkedConvert(
            'Locations',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          collectionType: $checkedConvert(
            'CollectionType',
            (v) => $enumDecodeNullable(_$CollectionTypeOptionsEnumMap, v),
          ),
          libraryOptions: $checkedConvert(
            'LibraryOptions',
            (v) => v == null
                ? null
                : LibraryOptions.fromJson(v as Map<String, dynamic>),
          ),
          itemId: $checkedConvert('ItemId', (v) => v as String?),
          primaryImageItemId: $checkedConvert(
            'PrimaryImageItemId',
            (v) => v as String?,
          ),
          refreshProgress: $checkedConvert(
            'RefreshProgress',
            (v) => (v as num?)?.toDouble(),
          ),
          refreshStatus: $checkedConvert('RefreshStatus', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'name': 'Name',
        'locations': 'Locations',
        'collectionType': 'CollectionType',
        'libraryOptions': 'LibraryOptions',
        'itemId': 'ItemId',
        'primaryImageItemId': 'PrimaryImageItemId',
        'refreshProgress': 'RefreshProgress',
        'refreshStatus': 'RefreshStatus',
      },
    );

Map<String, dynamic> _$VirtualFolderInfoToJson(
  VirtualFolderInfo instance,
) => <String, dynamic>{
  'Name': ?instance.name,
  'Locations': ?instance.locations,
  'CollectionType': ?_$CollectionTypeOptionsEnumMap[instance.collectionType],
  'LibraryOptions': ?instance.libraryOptions?.toJson(),
  'ItemId': ?instance.itemId,
  'PrimaryImageItemId': ?instance.primaryImageItemId,
  'RefreshProgress': ?instance.refreshProgress,
  'RefreshStatus': ?instance.refreshStatus,
};

const _$CollectionTypeOptionsEnumMap = {
  CollectionTypeOptions.movies: 'movies',
  CollectionTypeOptions.tvshows: 'tvshows',
  CollectionTypeOptions.music: 'music',
  CollectionTypeOptions.musicvideos: 'musicvideos',
  CollectionTypeOptions.homevideos: 'homevideos',
  CollectionTypeOptions.boxsets: 'boxsets',
  CollectionTypeOptions.books: 'books',
  CollectionTypeOptions.mixed: 'mixed',
};
