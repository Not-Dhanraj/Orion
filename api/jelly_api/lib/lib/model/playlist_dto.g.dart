// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaylistDtoCWProxy {
  PlaylistDto openAccess(bool? openAccess);

  PlaylistDto shares(List<PlaylistUserPermissions>? shares);

  PlaylistDto itemIds(List<String>? itemIds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistDto(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistDto call({
    bool? openAccess,
    List<PlaylistUserPermissions>? shares,
    List<String>? itemIds,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlaylistDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlaylistDto.copyWith.fieldName(...)`
class _$PlaylistDtoCWProxyImpl implements _$PlaylistDtoCWProxy {
  const _$PlaylistDtoCWProxyImpl(this._value);

  final PlaylistDto _value;

  @override
  PlaylistDto openAccess(bool? openAccess) => this(openAccess: openAccess);

  @override
  PlaylistDto shares(List<PlaylistUserPermissions>? shares) =>
      this(shares: shares);

  @override
  PlaylistDto itemIds(List<String>? itemIds) => this(itemIds: itemIds);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistDto(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistDto call({
    Object? openAccess = const $CopyWithPlaceholder(),
    Object? shares = const $CopyWithPlaceholder(),
    Object? itemIds = const $CopyWithPlaceholder(),
  }) {
    return PlaylistDto(
      openAccess: openAccess == const $CopyWithPlaceholder()
          ? _value.openAccess
          // ignore: cast_nullable_to_non_nullable
          : openAccess as bool?,
      shares: shares == const $CopyWithPlaceholder()
          ? _value.shares
          // ignore: cast_nullable_to_non_nullable
          : shares as List<PlaylistUserPermissions>?,
      itemIds: itemIds == const $CopyWithPlaceholder()
          ? _value.itemIds
          // ignore: cast_nullable_to_non_nullable
          : itemIds as List<String>?,
    );
  }
}

extension $PlaylistDtoCopyWith on PlaylistDto {
  /// Returns a callable class that can be used as follows: `instanceOfPlaylistDto.copyWith(...)` or like so:`instanceOfPlaylistDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlaylistDtoCWProxy get copyWith => _$PlaylistDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistDto _$PlaylistDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'PlaylistDto',
  json,
  ($checkedConvert) {
    final val = PlaylistDto(
      openAccess: $checkedConvert('OpenAccess', (v) => v as bool?),
      shares: $checkedConvert(
        'Shares',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) =>
                  PlaylistUserPermissions.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      itemIds: $checkedConvert(
        'ItemIds',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'openAccess': 'OpenAccess',
    'shares': 'Shares',
    'itemIds': 'ItemIds',
  },
);

Map<String, dynamic> _$PlaylistDtoToJson(PlaylistDto instance) =>
    <String, dynamic>{
      'OpenAccess': ?instance.openAccess,
      'Shares': ?instance.shares?.map((e) => e.toJson()).toList(),
      'ItemIds': ?instance.itemIds,
    };
