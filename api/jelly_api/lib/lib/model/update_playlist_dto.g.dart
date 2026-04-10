// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_playlist_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdatePlaylistDtoCWProxy {
  UpdatePlaylistDto name(String? name);

  UpdatePlaylistDto ids(List<String>? ids);

  UpdatePlaylistDto users(List<PlaylistUserPermissions>? users);

  UpdatePlaylistDto isPublic(bool? isPublic);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdatePlaylistDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdatePlaylistDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdatePlaylistDto call({
    String? name,
    List<String>? ids,
    List<PlaylistUserPermissions>? users,
    bool? isPublic,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdatePlaylistDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdatePlaylistDto.copyWith.fieldName(...)`
class _$UpdatePlaylistDtoCWProxyImpl implements _$UpdatePlaylistDtoCWProxy {
  const _$UpdatePlaylistDtoCWProxyImpl(this._value);

  final UpdatePlaylistDto _value;

  @override
  UpdatePlaylistDto name(String? name) => this(name: name);

  @override
  UpdatePlaylistDto ids(List<String>? ids) => this(ids: ids);

  @override
  UpdatePlaylistDto users(List<PlaylistUserPermissions>? users) =>
      this(users: users);

  @override
  UpdatePlaylistDto isPublic(bool? isPublic) => this(isPublic: isPublic);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdatePlaylistDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdatePlaylistDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdatePlaylistDto call({
    Object? name = const $CopyWithPlaceholder(),
    Object? ids = const $CopyWithPlaceholder(),
    Object? users = const $CopyWithPlaceholder(),
    Object? isPublic = const $CopyWithPlaceholder(),
  }) {
    return UpdatePlaylistDto(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      ids: ids == const $CopyWithPlaceholder()
          ? _value.ids
          // ignore: cast_nullable_to_non_nullable
          : ids as List<String>?,
      users: users == const $CopyWithPlaceholder()
          ? _value.users
          // ignore: cast_nullable_to_non_nullable
          : users as List<PlaylistUserPermissions>?,
      isPublic: isPublic == const $CopyWithPlaceholder()
          ? _value.isPublic
          // ignore: cast_nullable_to_non_nullable
          : isPublic as bool?,
    );
  }
}

extension $UpdatePlaylistDtoCopyWith on UpdatePlaylistDto {
  /// Returns a callable class that can be used as follows: `instanceOfUpdatePlaylistDto.copyWith(...)` or like so:`instanceOfUpdatePlaylistDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdatePlaylistDtoCWProxy get copyWith =>
      _$UpdatePlaylistDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePlaylistDto _$UpdatePlaylistDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdatePlaylistDto',
      json,
      ($checkedConvert) {
        final val = UpdatePlaylistDto(
          name: $checkedConvert('Name', (v) => v as String?),
          ids: $checkedConvert(
            'Ids',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          users: $checkedConvert(
            'Users',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => PlaylistUserPermissions.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList(),
          ),
          isPublic: $checkedConvert('IsPublic', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'name': 'Name',
        'ids': 'Ids',
        'users': 'Users',
        'isPublic': 'IsPublic',
      },
    );

Map<String, dynamic> _$UpdatePlaylistDtoToJson(UpdatePlaylistDto instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'Ids': ?instance.ids,
      'Users': ?instance.users?.map((e) => e.toJson()).toList(),
      'IsPublic': ?instance.isPublic,
    };
