// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_counts.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ItemCountsCWProxy {
  ItemCounts movieCount(int? movieCount);

  ItemCounts seriesCount(int? seriesCount);

  ItemCounts episodeCount(int? episodeCount);

  ItemCounts artistCount(int? artistCount);

  ItemCounts programCount(int? programCount);

  ItemCounts trailerCount(int? trailerCount);

  ItemCounts songCount(int? songCount);

  ItemCounts albumCount(int? albumCount);

  ItemCounts musicVideoCount(int? musicVideoCount);

  ItemCounts boxSetCount(int? boxSetCount);

  ItemCounts bookCount(int? bookCount);

  ItemCounts itemCount(int? itemCount);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ItemCounts(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ItemCounts(...).copyWith(id: 12, name: "My name")
  /// ````
  ItemCounts call({
    int? movieCount,
    int? seriesCount,
    int? episodeCount,
    int? artistCount,
    int? programCount,
    int? trailerCount,
    int? songCount,
    int? albumCount,
    int? musicVideoCount,
    int? boxSetCount,
    int? bookCount,
    int? itemCount,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfItemCounts.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfItemCounts.copyWith.fieldName(...)`
class _$ItemCountsCWProxyImpl implements _$ItemCountsCWProxy {
  const _$ItemCountsCWProxyImpl(this._value);

  final ItemCounts _value;

  @override
  ItemCounts movieCount(int? movieCount) => this(movieCount: movieCount);

  @override
  ItemCounts seriesCount(int? seriesCount) => this(seriesCount: seriesCount);

  @override
  ItemCounts episodeCount(int? episodeCount) =>
      this(episodeCount: episodeCount);

  @override
  ItemCounts artistCount(int? artistCount) => this(artistCount: artistCount);

  @override
  ItemCounts programCount(int? programCount) =>
      this(programCount: programCount);

  @override
  ItemCounts trailerCount(int? trailerCount) =>
      this(trailerCount: trailerCount);

  @override
  ItemCounts songCount(int? songCount) => this(songCount: songCount);

  @override
  ItemCounts albumCount(int? albumCount) => this(albumCount: albumCount);

  @override
  ItemCounts musicVideoCount(int? musicVideoCount) =>
      this(musicVideoCount: musicVideoCount);

  @override
  ItemCounts boxSetCount(int? boxSetCount) => this(boxSetCount: boxSetCount);

  @override
  ItemCounts bookCount(int? bookCount) => this(bookCount: bookCount);

  @override
  ItemCounts itemCount(int? itemCount) => this(itemCount: itemCount);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ItemCounts(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ItemCounts(...).copyWith(id: 12, name: "My name")
  /// ````
  ItemCounts call({
    Object? movieCount = const $CopyWithPlaceholder(),
    Object? seriesCount = const $CopyWithPlaceholder(),
    Object? episodeCount = const $CopyWithPlaceholder(),
    Object? artistCount = const $CopyWithPlaceholder(),
    Object? programCount = const $CopyWithPlaceholder(),
    Object? trailerCount = const $CopyWithPlaceholder(),
    Object? songCount = const $CopyWithPlaceholder(),
    Object? albumCount = const $CopyWithPlaceholder(),
    Object? musicVideoCount = const $CopyWithPlaceholder(),
    Object? boxSetCount = const $CopyWithPlaceholder(),
    Object? bookCount = const $CopyWithPlaceholder(),
    Object? itemCount = const $CopyWithPlaceholder(),
  }) {
    return ItemCounts(
      movieCount: movieCount == const $CopyWithPlaceholder()
          ? _value.movieCount
          // ignore: cast_nullable_to_non_nullable
          : movieCount as int?,
      seriesCount: seriesCount == const $CopyWithPlaceholder()
          ? _value.seriesCount
          // ignore: cast_nullable_to_non_nullable
          : seriesCount as int?,
      episodeCount: episodeCount == const $CopyWithPlaceholder()
          ? _value.episodeCount
          // ignore: cast_nullable_to_non_nullable
          : episodeCount as int?,
      artistCount: artistCount == const $CopyWithPlaceholder()
          ? _value.artistCount
          // ignore: cast_nullable_to_non_nullable
          : artistCount as int?,
      programCount: programCount == const $CopyWithPlaceholder()
          ? _value.programCount
          // ignore: cast_nullable_to_non_nullable
          : programCount as int?,
      trailerCount: trailerCount == const $CopyWithPlaceholder()
          ? _value.trailerCount
          // ignore: cast_nullable_to_non_nullable
          : trailerCount as int?,
      songCount: songCount == const $CopyWithPlaceholder()
          ? _value.songCount
          // ignore: cast_nullable_to_non_nullable
          : songCount as int?,
      albumCount: albumCount == const $CopyWithPlaceholder()
          ? _value.albumCount
          // ignore: cast_nullable_to_non_nullable
          : albumCount as int?,
      musicVideoCount: musicVideoCount == const $CopyWithPlaceholder()
          ? _value.musicVideoCount
          // ignore: cast_nullable_to_non_nullable
          : musicVideoCount as int?,
      boxSetCount: boxSetCount == const $CopyWithPlaceholder()
          ? _value.boxSetCount
          // ignore: cast_nullable_to_non_nullable
          : boxSetCount as int?,
      bookCount: bookCount == const $CopyWithPlaceholder()
          ? _value.bookCount
          // ignore: cast_nullable_to_non_nullable
          : bookCount as int?,
      itemCount: itemCount == const $CopyWithPlaceholder()
          ? _value.itemCount
          // ignore: cast_nullable_to_non_nullable
          : itemCount as int?,
    );
  }
}

extension $ItemCountsCopyWith on ItemCounts {
  /// Returns a callable class that can be used as follows: `instanceOfItemCounts.copyWith(...)` or like so:`instanceOfItemCounts.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ItemCountsCWProxy get copyWith => _$ItemCountsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemCounts _$ItemCountsFromJson(Map<String, dynamic> json) => $checkedCreate(
  'ItemCounts',
  json,
  ($checkedConvert) {
    final val = ItemCounts(
      movieCount: $checkedConvert('MovieCount', (v) => (v as num?)?.toInt()),
      seriesCount: $checkedConvert('SeriesCount', (v) => (v as num?)?.toInt()),
      episodeCount: $checkedConvert(
        'EpisodeCount',
        (v) => (v as num?)?.toInt(),
      ),
      artistCount: $checkedConvert('ArtistCount', (v) => (v as num?)?.toInt()),
      programCount: $checkedConvert(
        'ProgramCount',
        (v) => (v as num?)?.toInt(),
      ),
      trailerCount: $checkedConvert(
        'TrailerCount',
        (v) => (v as num?)?.toInt(),
      ),
      songCount: $checkedConvert('SongCount', (v) => (v as num?)?.toInt()),
      albumCount: $checkedConvert('AlbumCount', (v) => (v as num?)?.toInt()),
      musicVideoCount: $checkedConvert(
        'MusicVideoCount',
        (v) => (v as num?)?.toInt(),
      ),
      boxSetCount: $checkedConvert('BoxSetCount', (v) => (v as num?)?.toInt()),
      bookCount: $checkedConvert('BookCount', (v) => (v as num?)?.toInt()),
      itemCount: $checkedConvert('ItemCount', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'movieCount': 'MovieCount',
    'seriesCount': 'SeriesCount',
    'episodeCount': 'EpisodeCount',
    'artistCount': 'ArtistCount',
    'programCount': 'ProgramCount',
    'trailerCount': 'TrailerCount',
    'songCount': 'SongCount',
    'albumCount': 'AlbumCount',
    'musicVideoCount': 'MusicVideoCount',
    'boxSetCount': 'BoxSetCount',
    'bookCount': 'BookCount',
    'itemCount': 'ItemCount',
  },
);

Map<String, dynamic> _$ItemCountsToJson(ItemCounts instance) =>
    <String, dynamic>{
      'MovieCount': ?instance.movieCount,
      'SeriesCount': ?instance.seriesCount,
      'EpisodeCount': ?instance.episodeCount,
      'ArtistCount': ?instance.artistCount,
      'ProgramCount': ?instance.programCount,
      'TrailerCount': ?instance.trailerCount,
      'SongCount': ?instance.songCount,
      'AlbumCount': ?instance.albumCount,
      'MusicVideoCount': ?instance.musicVideoCount,
      'BoxSetCount': ?instance.boxSetCount,
      'BookCount': ?instance.bookCount,
      'ItemCount': ?instance.itemCount,
    };
