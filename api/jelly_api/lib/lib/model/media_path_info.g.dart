// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_path_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaPathInfoCWProxy {
  MediaPathInfo path(String? path);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaPathInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaPathInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaPathInfo call({String? path});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMediaPathInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMediaPathInfo.copyWith.fieldName(...)`
class _$MediaPathInfoCWProxyImpl implements _$MediaPathInfoCWProxy {
  const _$MediaPathInfoCWProxyImpl(this._value);

  final MediaPathInfo _value;

  @override
  MediaPathInfo path(String? path) => this(path: path);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaPathInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaPathInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaPathInfo call({Object? path = const $CopyWithPlaceholder()}) {
    return MediaPathInfo(
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
    );
  }
}

extension $MediaPathInfoCopyWith on MediaPathInfo {
  /// Returns a callable class that can be used as follows: `instanceOfMediaPathInfo.copyWith(...)` or like so:`instanceOfMediaPathInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaPathInfoCWProxy get copyWith => _$MediaPathInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaPathInfo _$MediaPathInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MediaPathInfo', json, ($checkedConvert) {
      final val = MediaPathInfo(
        path: $checkedConvert('Path', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'path': 'Path'});

Map<String, dynamic> _$MediaPathInfoToJson(MediaPathInfo instance) =>
    <String, dynamic>{'Path': ?instance.path};
