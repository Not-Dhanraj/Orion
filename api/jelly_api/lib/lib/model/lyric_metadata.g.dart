// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyric_metadata.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LyricMetadataCWProxy {
  LyricMetadata artist(String? artist);

  LyricMetadata album(String? album);

  LyricMetadata title(String? title);

  LyricMetadata author(String? author);

  LyricMetadata length(int? length);

  LyricMetadata by(String? by);

  LyricMetadata offset(int? offset);

  LyricMetadata creator(String? creator);

  LyricMetadata version(String? version);

  LyricMetadata isSynced(bool? isSynced);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LyricMetadata(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LyricMetadata(...).copyWith(id: 12, name: "My name")
  /// ````
  LyricMetadata call({
    String? artist,
    String? album,
    String? title,
    String? author,
    int? length,
    String? by,
    int? offset,
    String? creator,
    String? version,
    bool? isSynced,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLyricMetadata.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLyricMetadata.copyWith.fieldName(...)`
class _$LyricMetadataCWProxyImpl implements _$LyricMetadataCWProxy {
  const _$LyricMetadataCWProxyImpl(this._value);

  final LyricMetadata _value;

  @override
  LyricMetadata artist(String? artist) => this(artist: artist);

  @override
  LyricMetadata album(String? album) => this(album: album);

  @override
  LyricMetadata title(String? title) => this(title: title);

  @override
  LyricMetadata author(String? author) => this(author: author);

  @override
  LyricMetadata length(int? length) => this(length: length);

  @override
  LyricMetadata by(String? by) => this(by: by);

  @override
  LyricMetadata offset(int? offset) => this(offset: offset);

  @override
  LyricMetadata creator(String? creator) => this(creator: creator);

  @override
  LyricMetadata version(String? version) => this(version: version);

  @override
  LyricMetadata isSynced(bool? isSynced) => this(isSynced: isSynced);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LyricMetadata(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LyricMetadata(...).copyWith(id: 12, name: "My name")
  /// ````
  LyricMetadata call({
    Object? artist = const $CopyWithPlaceholder(),
    Object? album = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? author = const $CopyWithPlaceholder(),
    Object? length = const $CopyWithPlaceholder(),
    Object? by = const $CopyWithPlaceholder(),
    Object? offset = const $CopyWithPlaceholder(),
    Object? creator = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? isSynced = const $CopyWithPlaceholder(),
  }) {
    return LyricMetadata(
      artist: artist == const $CopyWithPlaceholder()
          ? _value.artist
          // ignore: cast_nullable_to_non_nullable
          : artist as String?,
      album: album == const $CopyWithPlaceholder()
          ? _value.album
          // ignore: cast_nullable_to_non_nullable
          : album as String?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      author: author == const $CopyWithPlaceholder()
          ? _value.author
          // ignore: cast_nullable_to_non_nullable
          : author as String?,
      length: length == const $CopyWithPlaceholder()
          ? _value.length
          // ignore: cast_nullable_to_non_nullable
          : length as int?,
      by: by == const $CopyWithPlaceholder()
          ? _value.by
          // ignore: cast_nullable_to_non_nullable
          : by as String?,
      offset: offset == const $CopyWithPlaceholder()
          ? _value.offset
          // ignore: cast_nullable_to_non_nullable
          : offset as int?,
      creator: creator == const $CopyWithPlaceholder()
          ? _value.creator
          // ignore: cast_nullable_to_non_nullable
          : creator as String?,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String?,
      isSynced: isSynced == const $CopyWithPlaceholder()
          ? _value.isSynced
          // ignore: cast_nullable_to_non_nullable
          : isSynced as bool?,
    );
  }
}

extension $LyricMetadataCopyWith on LyricMetadata {
  /// Returns a callable class that can be used as follows: `instanceOfLyricMetadata.copyWith(...)` or like so:`instanceOfLyricMetadata.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LyricMetadataCWProxy get copyWith => _$LyricMetadataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LyricMetadata _$LyricMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LyricMetadata',
      json,
      ($checkedConvert) {
        final val = LyricMetadata(
          artist: $checkedConvert('Artist', (v) => v as String?),
          album: $checkedConvert('Album', (v) => v as String?),
          title: $checkedConvert('Title', (v) => v as String?),
          author: $checkedConvert('Author', (v) => v as String?),
          length: $checkedConvert('Length', (v) => (v as num?)?.toInt()),
          by: $checkedConvert('By', (v) => v as String?),
          offset: $checkedConvert('Offset', (v) => (v as num?)?.toInt()),
          creator: $checkedConvert('Creator', (v) => v as String?),
          version: $checkedConvert('Version', (v) => v as String?),
          isSynced: $checkedConvert('IsSynced', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'artist': 'Artist',
        'album': 'Album',
        'title': 'Title',
        'author': 'Author',
        'length': 'Length',
        'by': 'By',
        'offset': 'Offset',
        'creator': 'Creator',
        'version': 'Version',
        'isSynced': 'IsSynced',
      },
    );

Map<String, dynamic> _$LyricMetadataToJson(LyricMetadata instance) =>
    <String, dynamic>{
      'Artist': ?instance.artist,
      'Album': ?instance.album,
      'Title': ?instance.title,
      'Author': ?instance.author,
      'Length': ?instance.length,
      'By': ?instance.by,
      'Offset': ?instance.offset,
      'Creator': ?instance.creator,
      'Version': ?instance.version,
      'IsSynced': ?instance.isSynced,
    };
