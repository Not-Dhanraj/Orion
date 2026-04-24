// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_path_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaPathDtoCWProxy {
  MediaPathDto name(String name);

  MediaPathDto path(String? path);

  MediaPathDto pathInfo(MediaPathInfo? pathInfo);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaPathDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaPathDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaPathDto call({String name, String? path, MediaPathInfo? pathInfo});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMediaPathDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMediaPathDto.copyWith.fieldName(...)`
class _$MediaPathDtoCWProxyImpl implements _$MediaPathDtoCWProxy {
  const _$MediaPathDtoCWProxyImpl(this._value);

  final MediaPathDto _value;

  @override
  MediaPathDto name(String name) => this(name: name);

  @override
  MediaPathDto path(String? path) => this(path: path);

  @override
  MediaPathDto pathInfo(MediaPathInfo? pathInfo) => this(pathInfo: pathInfo);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaPathDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaPathDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaPathDto call({
    Object? name = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? pathInfo = const $CopyWithPlaceholder(),
  }) {
    return MediaPathDto(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      pathInfo: pathInfo == const $CopyWithPlaceholder()
          ? _value.pathInfo
          // ignore: cast_nullable_to_non_nullable
          : pathInfo as MediaPathInfo?,
    );
  }
}

extension $MediaPathDtoCopyWith on MediaPathDto {
  /// Returns a callable class that can be used as follows: `instanceOfMediaPathDto.copyWith(...)` or like so:`instanceOfMediaPathDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaPathDtoCWProxy get copyWith => _$MediaPathDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaPathDto _$MediaPathDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MediaPathDto',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['Name']);
        final val = MediaPathDto(
          name: $checkedConvert('Name', (v) => v as String),
          path: $checkedConvert('Path', (v) => v as String?),
          pathInfo: $checkedConvert(
            'PathInfo',
            (v) => v == null
                ? null
                : MediaPathInfo.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'name': 'Name',
        'path': 'Path',
        'pathInfo': 'PathInfo',
      },
    );

Map<String, dynamic> _$MediaPathDtoToJson(MediaPathDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Path': ?instance.path,
      'PathInfo': ?instance.pathInfo?.toJson(),
    };
