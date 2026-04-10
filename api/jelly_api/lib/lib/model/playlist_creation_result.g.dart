// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_creation_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaylistCreationResultCWProxy {
  PlaylistCreationResult id(String? id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistCreationResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistCreationResult(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistCreationResult call({String? id});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlaylistCreationResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlaylistCreationResult.copyWith.fieldName(...)`
class _$PlaylistCreationResultCWProxyImpl
    implements _$PlaylistCreationResultCWProxy {
  const _$PlaylistCreationResultCWProxyImpl(this._value);

  final PlaylistCreationResult _value;

  @override
  PlaylistCreationResult id(String? id) => this(id: id);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistCreationResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistCreationResult(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistCreationResult call({Object? id = const $CopyWithPlaceholder()}) {
    return PlaylistCreationResult(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
    );
  }
}

extension $PlaylistCreationResultCopyWith on PlaylistCreationResult {
  /// Returns a callable class that can be used as follows: `instanceOfPlaylistCreationResult.copyWith(...)` or like so:`instanceOfPlaylistCreationResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlaylistCreationResultCWProxy get copyWith =>
      _$PlaylistCreationResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistCreationResult _$PlaylistCreationResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PlaylistCreationResult', json, ($checkedConvert) {
  final val = PlaylistCreationResult(
    id: $checkedConvert('Id', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'id': 'Id'});

Map<String, dynamic> _$PlaylistCreationResultToJson(
  PlaylistCreationResult instance,
) => <String, dynamic>{'Id': ?instance.id};
