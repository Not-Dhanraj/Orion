// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_item_person.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseItemPersonCWProxy {
  BaseItemPerson name(String? name);

  BaseItemPerson id(String? id);

  BaseItemPerson role(String? role);

  BaseItemPerson type(PersonKind? type);

  BaseItemPerson primaryImageTag(String? primaryImageTag);

  BaseItemPerson imageBlurHashes(
    BaseItemPersonImageBlurHashes? imageBlurHashes,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseItemPerson(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseItemPerson(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseItemPerson call({
    String? name,
    String? id,
    String? role,
    PersonKind? type,
    String? primaryImageTag,
    BaseItemPersonImageBlurHashes? imageBlurHashes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseItemPerson.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseItemPerson.copyWith.fieldName(...)`
class _$BaseItemPersonCWProxyImpl implements _$BaseItemPersonCWProxy {
  const _$BaseItemPersonCWProxyImpl(this._value);

  final BaseItemPerson _value;

  @override
  BaseItemPerson name(String? name) => this(name: name);

  @override
  BaseItemPerson id(String? id) => this(id: id);

  @override
  BaseItemPerson role(String? role) => this(role: role);

  @override
  BaseItemPerson type(PersonKind? type) => this(type: type);

  @override
  BaseItemPerson primaryImageTag(String? primaryImageTag) =>
      this(primaryImageTag: primaryImageTag);

  @override
  BaseItemPerson imageBlurHashes(
    BaseItemPersonImageBlurHashes? imageBlurHashes,
  ) => this(imageBlurHashes: imageBlurHashes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseItemPerson(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseItemPerson(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseItemPerson call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? primaryImageTag = const $CopyWithPlaceholder(),
    Object? imageBlurHashes = const $CopyWithPlaceholder(),
  }) {
    return BaseItemPerson(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      role: role == const $CopyWithPlaceholder()
          ? _value.role
          // ignore: cast_nullable_to_non_nullable
          : role as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as PersonKind?,
      primaryImageTag: primaryImageTag == const $CopyWithPlaceholder()
          ? _value.primaryImageTag
          // ignore: cast_nullable_to_non_nullable
          : primaryImageTag as String?,
      imageBlurHashes: imageBlurHashes == const $CopyWithPlaceholder()
          ? _value.imageBlurHashes
          // ignore: cast_nullable_to_non_nullable
          : imageBlurHashes as BaseItemPersonImageBlurHashes?,
    );
  }
}

extension $BaseItemPersonCopyWith on BaseItemPerson {
  /// Returns a callable class that can be used as follows: `instanceOfBaseItemPerson.copyWith(...)` or like so:`instanceOfBaseItemPerson.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseItemPersonCWProxy get copyWith => _$BaseItemPersonCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseItemPerson _$BaseItemPersonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseItemPerson',
  json,
  ($checkedConvert) {
    final val = BaseItemPerson(
      name: $checkedConvert('Name', (v) => v as String?),
      id: $checkedConvert('Id', (v) => v as String?),
      role: $checkedConvert('Role', (v) => v as String?),
      type: $checkedConvert(
        'Type',
        (v) =>
            $enumDecodeNullable(_$PersonKindEnumMap, v) ?? PersonKind.unknown,
      ),
      primaryImageTag: $checkedConvert('PrimaryImageTag', (v) => v as String?),
      imageBlurHashes: $checkedConvert(
        'ImageBlurHashes',
        (v) => v == null
            ? null
            : BaseItemPersonImageBlurHashes.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'id': 'Id',
    'role': 'Role',
    'type': 'Type',
    'primaryImageTag': 'PrimaryImageTag',
    'imageBlurHashes': 'ImageBlurHashes',
  },
);

Map<String, dynamic> _$BaseItemPersonToJson(BaseItemPerson instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'Id': ?instance.id,
      'Role': ?instance.role,
      'Type': ?_$PersonKindEnumMap[instance.type],
      'PrimaryImageTag': ?instance.primaryImageTag,
      'ImageBlurHashes': ?instance.imageBlurHashes?.toJson(),
    };

const _$PersonKindEnumMap = {
  PersonKind.unknown: 'Unknown',
  PersonKind.actor: 'Actor',
  PersonKind.director: 'Director',
  PersonKind.composer: 'Composer',
  PersonKind.writer: 'Writer',
  PersonKind.guestStar: 'GuestStar',
  PersonKind.producer: 'Producer',
  PersonKind.conductor: 'Conductor',
  PersonKind.lyricist: 'Lyricist',
  PersonKind.arranger: 'Arranger',
  PersonKind.engineer: 'Engineer',
  PersonKind.mixer: 'Mixer',
  PersonKind.remixer: 'Remixer',
  PersonKind.creator: 'Creator',
  PersonKind.artist: 'Artist',
  PersonKind.albumArtist: 'AlbumArtist',
  PersonKind.author: 'Author',
  PersonKind.illustrator: 'Illustrator',
  PersonKind.penciller: 'Penciller',
  PersonKind.inker: 'Inker',
  PersonKind.colorist: 'Colorist',
  PersonKind.letterer: 'Letterer',
  PersonKind.coverArtist: 'CoverArtist',
  PersonKind.editor: 'Editor',
  PersonKind.translator: 'Translator',
};
