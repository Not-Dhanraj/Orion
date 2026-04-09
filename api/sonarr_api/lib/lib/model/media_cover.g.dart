// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_cover.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaCoverCWProxy {
  MediaCover coverType(MediaCoverTypes? coverType);

  MediaCover url(String? url);

  MediaCover remoteUrl(String? remoteUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaCover(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaCover(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaCover call({MediaCoverTypes? coverType, String? url, String? remoteUrl});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMediaCover.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMediaCover.copyWith.fieldName(...)`
class _$MediaCoverCWProxyImpl implements _$MediaCoverCWProxy {
  const _$MediaCoverCWProxyImpl(this._value);

  final MediaCover _value;

  @override
  MediaCover coverType(MediaCoverTypes? coverType) =>
      this(coverType: coverType);

  @override
  MediaCover url(String? url) => this(url: url);

  @override
  MediaCover remoteUrl(String? remoteUrl) => this(remoteUrl: remoteUrl);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaCover(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaCover(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaCover call({
    Object? coverType = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? remoteUrl = const $CopyWithPlaceholder(),
  }) {
    return MediaCover(
      coverType: coverType == const $CopyWithPlaceholder()
          ? _value.coverType
          // ignore: cast_nullable_to_non_nullable
          : coverType as MediaCoverTypes?,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String?,
      remoteUrl: remoteUrl == const $CopyWithPlaceholder()
          ? _value.remoteUrl
          // ignore: cast_nullable_to_non_nullable
          : remoteUrl as String?,
    );
  }
}

extension $MediaCoverCopyWith on MediaCover {
  /// Returns a callable class that can be used as follows: `instanceOfMediaCover.copyWith(...)` or like so:`instanceOfMediaCover.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaCoverCWProxy get copyWith => _$MediaCoverCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaCover _$MediaCoverFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MediaCover', json, ($checkedConvert) {
      final val = MediaCover(
        coverType: $checkedConvert(
          'coverType',
          (v) => $enumDecodeNullable(_$MediaCoverTypesEnumMap, v),
        ),
        url: $checkedConvert('url', (v) => v as String?),
        remoteUrl: $checkedConvert('remoteUrl', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$MediaCoverToJson(MediaCover instance) =>
    <String, dynamic>{
      'coverType': ?_$MediaCoverTypesEnumMap[instance.coverType],
      'url': ?instance.url,
      'remoteUrl': ?instance.remoteUrl,
    };

const _$MediaCoverTypesEnumMap = {
  MediaCoverTypes.unknown: 'unknown',
  MediaCoverTypes.poster: 'poster',
  MediaCoverTypes.banner: 'banner',
  MediaCoverTypes.fanart: 'fanart',
  MediaCoverTypes.screenshot: 'screenshot',
  MediaCoverTypes.headshot: 'headshot',
  MediaCoverTypes.clearlogo: 'clearlogo',
};
