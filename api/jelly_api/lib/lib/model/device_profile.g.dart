// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_profile.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DeviceProfileCWProxy {
  DeviceProfile name(String? name);

  DeviceProfile id(String? id);

  DeviceProfile maxStreamingBitrate(int? maxStreamingBitrate);

  DeviceProfile maxStaticBitrate(int? maxStaticBitrate);

  DeviceProfile musicStreamingTranscodingBitrate(
    int? musicStreamingTranscodingBitrate,
  );

  DeviceProfile maxStaticMusicBitrate(int? maxStaticMusicBitrate);

  DeviceProfile directPlayProfiles(List<DirectPlayProfile>? directPlayProfiles);

  DeviceProfile transcodingProfiles(
    List<TranscodingProfile>? transcodingProfiles,
  );

  DeviceProfile containerProfiles(List<ContainerProfile>? containerProfiles);

  DeviceProfile codecProfiles(List<CodecProfile>? codecProfiles);

  DeviceProfile subtitleProfiles(List<SubtitleProfile>? subtitleProfiles);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DeviceProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DeviceProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  DeviceProfile call({
    String? name,
    String? id,
    int? maxStreamingBitrate,
    int? maxStaticBitrate,
    int? musicStreamingTranscodingBitrate,
    int? maxStaticMusicBitrate,
    List<DirectPlayProfile>? directPlayProfiles,
    List<TranscodingProfile>? transcodingProfiles,
    List<ContainerProfile>? containerProfiles,
    List<CodecProfile>? codecProfiles,
    List<SubtitleProfile>? subtitleProfiles,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDeviceProfile.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDeviceProfile.copyWith.fieldName(...)`
class _$DeviceProfileCWProxyImpl implements _$DeviceProfileCWProxy {
  const _$DeviceProfileCWProxyImpl(this._value);

  final DeviceProfile _value;

  @override
  DeviceProfile name(String? name) => this(name: name);

  @override
  DeviceProfile id(String? id) => this(id: id);

  @override
  DeviceProfile maxStreamingBitrate(int? maxStreamingBitrate) =>
      this(maxStreamingBitrate: maxStreamingBitrate);

  @override
  DeviceProfile maxStaticBitrate(int? maxStaticBitrate) =>
      this(maxStaticBitrate: maxStaticBitrate);

  @override
  DeviceProfile musicStreamingTranscodingBitrate(
    int? musicStreamingTranscodingBitrate,
  ) => this(musicStreamingTranscodingBitrate: musicStreamingTranscodingBitrate);

  @override
  DeviceProfile maxStaticMusicBitrate(int? maxStaticMusicBitrate) =>
      this(maxStaticMusicBitrate: maxStaticMusicBitrate);

  @override
  DeviceProfile directPlayProfiles(
    List<DirectPlayProfile>? directPlayProfiles,
  ) => this(directPlayProfiles: directPlayProfiles);

  @override
  DeviceProfile transcodingProfiles(
    List<TranscodingProfile>? transcodingProfiles,
  ) => this(transcodingProfiles: transcodingProfiles);

  @override
  DeviceProfile containerProfiles(List<ContainerProfile>? containerProfiles) =>
      this(containerProfiles: containerProfiles);

  @override
  DeviceProfile codecProfiles(List<CodecProfile>? codecProfiles) =>
      this(codecProfiles: codecProfiles);

  @override
  DeviceProfile subtitleProfiles(List<SubtitleProfile>? subtitleProfiles) =>
      this(subtitleProfiles: subtitleProfiles);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DeviceProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DeviceProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  DeviceProfile call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? maxStreamingBitrate = const $CopyWithPlaceholder(),
    Object? maxStaticBitrate = const $CopyWithPlaceholder(),
    Object? musicStreamingTranscodingBitrate = const $CopyWithPlaceholder(),
    Object? maxStaticMusicBitrate = const $CopyWithPlaceholder(),
    Object? directPlayProfiles = const $CopyWithPlaceholder(),
    Object? transcodingProfiles = const $CopyWithPlaceholder(),
    Object? containerProfiles = const $CopyWithPlaceholder(),
    Object? codecProfiles = const $CopyWithPlaceholder(),
    Object? subtitleProfiles = const $CopyWithPlaceholder(),
  }) {
    return DeviceProfile(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      maxStreamingBitrate: maxStreamingBitrate == const $CopyWithPlaceholder()
          ? _value.maxStreamingBitrate
          // ignore: cast_nullable_to_non_nullable
          : maxStreamingBitrate as int?,
      maxStaticBitrate: maxStaticBitrate == const $CopyWithPlaceholder()
          ? _value.maxStaticBitrate
          // ignore: cast_nullable_to_non_nullable
          : maxStaticBitrate as int?,
      musicStreamingTranscodingBitrate:
          musicStreamingTranscodingBitrate == const $CopyWithPlaceholder()
          ? _value.musicStreamingTranscodingBitrate
          // ignore: cast_nullable_to_non_nullable
          : musicStreamingTranscodingBitrate as int?,
      maxStaticMusicBitrate:
          maxStaticMusicBitrate == const $CopyWithPlaceholder()
          ? _value.maxStaticMusicBitrate
          // ignore: cast_nullable_to_non_nullable
          : maxStaticMusicBitrate as int?,
      directPlayProfiles: directPlayProfiles == const $CopyWithPlaceholder()
          ? _value.directPlayProfiles
          // ignore: cast_nullable_to_non_nullable
          : directPlayProfiles as List<DirectPlayProfile>?,
      transcodingProfiles: transcodingProfiles == const $CopyWithPlaceholder()
          ? _value.transcodingProfiles
          // ignore: cast_nullable_to_non_nullable
          : transcodingProfiles as List<TranscodingProfile>?,
      containerProfiles: containerProfiles == const $CopyWithPlaceholder()
          ? _value.containerProfiles
          // ignore: cast_nullable_to_non_nullable
          : containerProfiles as List<ContainerProfile>?,
      codecProfiles: codecProfiles == const $CopyWithPlaceholder()
          ? _value.codecProfiles
          // ignore: cast_nullable_to_non_nullable
          : codecProfiles as List<CodecProfile>?,
      subtitleProfiles: subtitleProfiles == const $CopyWithPlaceholder()
          ? _value.subtitleProfiles
          // ignore: cast_nullable_to_non_nullable
          : subtitleProfiles as List<SubtitleProfile>?,
    );
  }
}

extension $DeviceProfileCopyWith on DeviceProfile {
  /// Returns a callable class that can be used as follows: `instanceOfDeviceProfile.copyWith(...)` or like so:`instanceOfDeviceProfile.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DeviceProfileCWProxy get copyWith => _$DeviceProfileCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceProfile _$DeviceProfileFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'DeviceProfile',
  json,
  ($checkedConvert) {
    final val = DeviceProfile(
      name: $checkedConvert('Name', (v) => v as String?),
      id: $checkedConvert('Id', (v) => v as String?),
      maxStreamingBitrate: $checkedConvert(
        'MaxStreamingBitrate',
        (v) => (v as num?)?.toInt(),
      ),
      maxStaticBitrate: $checkedConvert(
        'MaxStaticBitrate',
        (v) => (v as num?)?.toInt(),
      ),
      musicStreamingTranscodingBitrate: $checkedConvert(
        'MusicStreamingTranscodingBitrate',
        (v) => (v as num?)?.toInt(),
      ),
      maxStaticMusicBitrate: $checkedConvert(
        'MaxStaticMusicBitrate',
        (v) => (v as num?)?.toInt(),
      ),
      directPlayProfiles: $checkedConvert(
        'DirectPlayProfiles',
        (v) => (v as List<dynamic>?)
            ?.map((e) => DirectPlayProfile.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      transcodingProfiles: $checkedConvert(
        'TranscodingProfiles',
        (v) => (v as List<dynamic>?)
            ?.map((e) => TranscodingProfile.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      containerProfiles: $checkedConvert(
        'ContainerProfiles',
        (v) => (v as List<dynamic>?)
            ?.map((e) => ContainerProfile.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      codecProfiles: $checkedConvert(
        'CodecProfiles',
        (v) => (v as List<dynamic>?)
            ?.map((e) => CodecProfile.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      subtitleProfiles: $checkedConvert(
        'SubtitleProfiles',
        (v) => (v as List<dynamic>?)
            ?.map((e) => SubtitleProfile.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'id': 'Id',
    'maxStreamingBitrate': 'MaxStreamingBitrate',
    'maxStaticBitrate': 'MaxStaticBitrate',
    'musicStreamingTranscodingBitrate': 'MusicStreamingTranscodingBitrate',
    'maxStaticMusicBitrate': 'MaxStaticMusicBitrate',
    'directPlayProfiles': 'DirectPlayProfiles',
    'transcodingProfiles': 'TranscodingProfiles',
    'containerProfiles': 'ContainerProfiles',
    'codecProfiles': 'CodecProfiles',
    'subtitleProfiles': 'SubtitleProfiles',
  },
);

Map<String, dynamic> _$DeviceProfileToJson(DeviceProfile instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'Id': ?instance.id,
      'MaxStreamingBitrate': ?instance.maxStreamingBitrate,
      'MaxStaticBitrate': ?instance.maxStaticBitrate,
      'MusicStreamingTranscodingBitrate':
          ?instance.musicStreamingTranscodingBitrate,
      'MaxStaticMusicBitrate': ?instance.maxStaticMusicBitrate,
      'DirectPlayProfiles': ?instance.directPlayProfiles
          ?.map((e) => e.toJson())
          .toList(),
      'TranscodingProfiles': ?instance.transcodingProfiles
          ?.map((e) => e.toJson())
          .toList(),
      'ContainerProfiles': ?instance.containerProfiles
          ?.map((e) => e.toJson())
          .toList(),
      'CodecProfiles': ?instance.codecProfiles?.map((e) => e.toJson()).toList(),
      'SubtitleProfiles': ?instance.subtitleProfiles
          ?.map((e) => e.toJson())
          .toList(),
    };
