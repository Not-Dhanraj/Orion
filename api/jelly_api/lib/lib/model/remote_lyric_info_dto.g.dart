// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_lyric_info_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RemoteLyricInfoDtoCWProxy {
  RemoteLyricInfoDto id(String? id);

  RemoteLyricInfoDto providerName(String? providerName);

  RemoteLyricInfoDto lyrics(LyricDto? lyrics);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoteLyricInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoteLyricInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoteLyricInfoDto call({String? id, String? providerName, LyricDto? lyrics});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRemoteLyricInfoDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRemoteLyricInfoDto.copyWith.fieldName(...)`
class _$RemoteLyricInfoDtoCWProxyImpl implements _$RemoteLyricInfoDtoCWProxy {
  const _$RemoteLyricInfoDtoCWProxyImpl(this._value);

  final RemoteLyricInfoDto _value;

  @override
  RemoteLyricInfoDto id(String? id) => this(id: id);

  @override
  RemoteLyricInfoDto providerName(String? providerName) =>
      this(providerName: providerName);

  @override
  RemoteLyricInfoDto lyrics(LyricDto? lyrics) => this(lyrics: lyrics);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoteLyricInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoteLyricInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoteLyricInfoDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? providerName = const $CopyWithPlaceholder(),
    Object? lyrics = const $CopyWithPlaceholder(),
  }) {
    return RemoteLyricInfoDto(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      providerName: providerName == const $CopyWithPlaceholder()
          ? _value.providerName
          // ignore: cast_nullable_to_non_nullable
          : providerName as String?,
      lyrics: lyrics == const $CopyWithPlaceholder()
          ? _value.lyrics
          // ignore: cast_nullable_to_non_nullable
          : lyrics as LyricDto?,
    );
  }
}

extension $RemoteLyricInfoDtoCopyWith on RemoteLyricInfoDto {
  /// Returns a callable class that can be used as follows: `instanceOfRemoteLyricInfoDto.copyWith(...)` or like so:`instanceOfRemoteLyricInfoDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RemoteLyricInfoDtoCWProxy get copyWith =>
      _$RemoteLyricInfoDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteLyricInfoDto _$RemoteLyricInfoDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RemoteLyricInfoDto',
      json,
      ($checkedConvert) {
        final val = RemoteLyricInfoDto(
          id: $checkedConvert('Id', (v) => v as String?),
          providerName: $checkedConvert('ProviderName', (v) => v as String?),
          lyrics: $checkedConvert(
            'Lyrics',
            (v) =>
                v == null ? null : LyricDto.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'providerName': 'ProviderName',
        'lyrics': 'Lyrics',
      },
    );

Map<String, dynamic> _$RemoteLyricInfoDtoToJson(RemoteLyricInfoDto instance) =>
    <String, dynamic>{
      'Id': ?instance.id,
      'ProviderName': ?instance.providerName,
      'Lyrics': ?instance.lyrics?.toJson(),
    };
