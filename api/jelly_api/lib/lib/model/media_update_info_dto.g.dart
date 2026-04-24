// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_update_info_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaUpdateInfoDtoCWProxy {
  MediaUpdateInfoDto updates(List<MediaUpdateInfoPathDto>? updates);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaUpdateInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaUpdateInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaUpdateInfoDto call({List<MediaUpdateInfoPathDto>? updates});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMediaUpdateInfoDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMediaUpdateInfoDto.copyWith.fieldName(...)`
class _$MediaUpdateInfoDtoCWProxyImpl implements _$MediaUpdateInfoDtoCWProxy {
  const _$MediaUpdateInfoDtoCWProxyImpl(this._value);

  final MediaUpdateInfoDto _value;

  @override
  MediaUpdateInfoDto updates(List<MediaUpdateInfoPathDto>? updates) =>
      this(updates: updates);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaUpdateInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaUpdateInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaUpdateInfoDto call({Object? updates = const $CopyWithPlaceholder()}) {
    return MediaUpdateInfoDto(
      updates: updates == const $CopyWithPlaceholder()
          ? _value.updates
          // ignore: cast_nullable_to_non_nullable
          : updates as List<MediaUpdateInfoPathDto>?,
    );
  }
}

extension $MediaUpdateInfoDtoCopyWith on MediaUpdateInfoDto {
  /// Returns a callable class that can be used as follows: `instanceOfMediaUpdateInfoDto.copyWith(...)` or like so:`instanceOfMediaUpdateInfoDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaUpdateInfoDtoCWProxy get copyWith =>
      _$MediaUpdateInfoDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaUpdateInfoDto _$MediaUpdateInfoDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MediaUpdateInfoDto', json, ($checkedConvert) {
      final val = MediaUpdateInfoDto(
        updates: $checkedConvert(
          'Updates',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) =>
                    MediaUpdateInfoPathDto.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'updates': 'Updates'});

Map<String, dynamic> _$MediaUpdateInfoDtoToJson(MediaUpdateInfoDto instance) =>
    <String, dynamic>{
      'Updates': ?instance.updates?.map((e) => e.toJson()).toList(),
    };
