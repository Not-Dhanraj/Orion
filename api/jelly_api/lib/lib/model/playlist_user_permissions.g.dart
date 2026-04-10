// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_user_permissions.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaylistUserPermissionsCWProxy {
  PlaylistUserPermissions userId(String? userId);

  PlaylistUserPermissions canEdit(bool? canEdit);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistUserPermissions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistUserPermissions(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistUserPermissions call({String? userId, bool? canEdit});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlaylistUserPermissions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlaylistUserPermissions.copyWith.fieldName(...)`
class _$PlaylistUserPermissionsCWProxyImpl
    implements _$PlaylistUserPermissionsCWProxy {
  const _$PlaylistUserPermissionsCWProxyImpl(this._value);

  final PlaylistUserPermissions _value;

  @override
  PlaylistUserPermissions userId(String? userId) => this(userId: userId);

  @override
  PlaylistUserPermissions canEdit(bool? canEdit) => this(canEdit: canEdit);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistUserPermissions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistUserPermissions(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistUserPermissions call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? canEdit = const $CopyWithPlaceholder(),
  }) {
    return PlaylistUserPermissions(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      canEdit: canEdit == const $CopyWithPlaceholder()
          ? _value.canEdit
          // ignore: cast_nullable_to_non_nullable
          : canEdit as bool?,
    );
  }
}

extension $PlaylistUserPermissionsCopyWith on PlaylistUserPermissions {
  /// Returns a callable class that can be used as follows: `instanceOfPlaylistUserPermissions.copyWith(...)` or like so:`instanceOfPlaylistUserPermissions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlaylistUserPermissionsCWProxy get copyWith =>
      _$PlaylistUserPermissionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistUserPermissions _$PlaylistUserPermissionsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PlaylistUserPermissions',
  json,
  ($checkedConvert) {
    final val = PlaylistUserPermissions(
      userId: $checkedConvert('UserId', (v) => v as String?),
      canEdit: $checkedConvert('CanEdit', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {'userId': 'UserId', 'canEdit': 'CanEdit'},
);

Map<String, dynamic> _$PlaylistUserPermissionsToJson(
  PlaylistUserPermissions instance,
) => <String, dynamic>{
  'UserId': ?instance.userId,
  'CanEdit': ?instance.canEdit,
};
