// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_media_path_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateMediaPathRequestDtoCWProxy {
  UpdateMediaPathRequestDto name(String name);

  UpdateMediaPathRequestDto pathInfo(MediaPathInfo pathInfo);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateMediaPathRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateMediaPathRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateMediaPathRequestDto call({String name, MediaPathInfo pathInfo});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateMediaPathRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateMediaPathRequestDto.copyWith.fieldName(...)`
class _$UpdateMediaPathRequestDtoCWProxyImpl
    implements _$UpdateMediaPathRequestDtoCWProxy {
  const _$UpdateMediaPathRequestDtoCWProxyImpl(this._value);

  final UpdateMediaPathRequestDto _value;

  @override
  UpdateMediaPathRequestDto name(String name) => this(name: name);

  @override
  UpdateMediaPathRequestDto pathInfo(MediaPathInfo pathInfo) =>
      this(pathInfo: pathInfo);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateMediaPathRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateMediaPathRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateMediaPathRequestDto call({
    Object? name = const $CopyWithPlaceholder(),
    Object? pathInfo = const $CopyWithPlaceholder(),
  }) {
    return UpdateMediaPathRequestDto(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      pathInfo: pathInfo == const $CopyWithPlaceholder()
          ? _value.pathInfo
          // ignore: cast_nullable_to_non_nullable
          : pathInfo as MediaPathInfo,
    );
  }
}

extension $UpdateMediaPathRequestDtoCopyWith on UpdateMediaPathRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateMediaPathRequestDto.copyWith(...)` or like so:`instanceOfUpdateMediaPathRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateMediaPathRequestDtoCWProxy get copyWith =>
      _$UpdateMediaPathRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMediaPathRequestDto _$UpdateMediaPathRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UpdateMediaPathRequestDto',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['Name', 'PathInfo']);
    final val = UpdateMediaPathRequestDto(
      name: $checkedConvert('Name', (v) => v as String),
      pathInfo: $checkedConvert(
        'PathInfo',
        (v) => MediaPathInfo.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'name': 'Name', 'pathInfo': 'PathInfo'},
);

Map<String, dynamic> _$UpdateMediaPathRequestDtoToJson(
  UpdateMediaPathRequestDto instance,
) => <String, dynamic>{
  'Name': instance.name,
  'PathInfo': instance.pathInfo.toJson(),
};
