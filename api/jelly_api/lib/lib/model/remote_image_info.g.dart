// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_image_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RemoteImageInfoCWProxy {
  RemoteImageInfo providerName(String? providerName);

  RemoteImageInfo url(String? url);

  RemoteImageInfo thumbnailUrl(String? thumbnailUrl);

  RemoteImageInfo height(int? height);

  RemoteImageInfo width(int? width);

  RemoteImageInfo communityRating(double? communityRating);

  RemoteImageInfo voteCount(int? voteCount);

  RemoteImageInfo language(String? language);

  RemoteImageInfo type(ImageType? type);

  RemoteImageInfo ratingType(RatingType? ratingType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoteImageInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoteImageInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoteImageInfo call({
    String? providerName,
    String? url,
    String? thumbnailUrl,
    int? height,
    int? width,
    double? communityRating,
    int? voteCount,
    String? language,
    ImageType? type,
    RatingType? ratingType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRemoteImageInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRemoteImageInfo.copyWith.fieldName(...)`
class _$RemoteImageInfoCWProxyImpl implements _$RemoteImageInfoCWProxy {
  const _$RemoteImageInfoCWProxyImpl(this._value);

  final RemoteImageInfo _value;

  @override
  RemoteImageInfo providerName(String? providerName) =>
      this(providerName: providerName);

  @override
  RemoteImageInfo url(String? url) => this(url: url);

  @override
  RemoteImageInfo thumbnailUrl(String? thumbnailUrl) =>
      this(thumbnailUrl: thumbnailUrl);

  @override
  RemoteImageInfo height(int? height) => this(height: height);

  @override
  RemoteImageInfo width(int? width) => this(width: width);

  @override
  RemoteImageInfo communityRating(double? communityRating) =>
      this(communityRating: communityRating);

  @override
  RemoteImageInfo voteCount(int? voteCount) => this(voteCount: voteCount);

  @override
  RemoteImageInfo language(String? language) => this(language: language);

  @override
  RemoteImageInfo type(ImageType? type) => this(type: type);

  @override
  RemoteImageInfo ratingType(RatingType? ratingType) =>
      this(ratingType: ratingType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoteImageInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoteImageInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoteImageInfo call({
    Object? providerName = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? thumbnailUrl = const $CopyWithPlaceholder(),
    Object? height = const $CopyWithPlaceholder(),
    Object? width = const $CopyWithPlaceholder(),
    Object? communityRating = const $CopyWithPlaceholder(),
    Object? voteCount = const $CopyWithPlaceholder(),
    Object? language = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? ratingType = const $CopyWithPlaceholder(),
  }) {
    return RemoteImageInfo(
      providerName: providerName == const $CopyWithPlaceholder()
          ? _value.providerName
          // ignore: cast_nullable_to_non_nullable
          : providerName as String?,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String?,
      thumbnailUrl: thumbnailUrl == const $CopyWithPlaceholder()
          ? _value.thumbnailUrl
          // ignore: cast_nullable_to_non_nullable
          : thumbnailUrl as String?,
      height: height == const $CopyWithPlaceholder()
          ? _value.height
          // ignore: cast_nullable_to_non_nullable
          : height as int?,
      width: width == const $CopyWithPlaceholder()
          ? _value.width
          // ignore: cast_nullable_to_non_nullable
          : width as int?,
      communityRating: communityRating == const $CopyWithPlaceholder()
          ? _value.communityRating
          // ignore: cast_nullable_to_non_nullable
          : communityRating as double?,
      voteCount: voteCount == const $CopyWithPlaceholder()
          ? _value.voteCount
          // ignore: cast_nullable_to_non_nullable
          : voteCount as int?,
      language: language == const $CopyWithPlaceholder()
          ? _value.language
          // ignore: cast_nullable_to_non_nullable
          : language as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as ImageType?,
      ratingType: ratingType == const $CopyWithPlaceholder()
          ? _value.ratingType
          // ignore: cast_nullable_to_non_nullable
          : ratingType as RatingType?,
    );
  }
}

extension $RemoteImageInfoCopyWith on RemoteImageInfo {
  /// Returns a callable class that can be used as follows: `instanceOfRemoteImageInfo.copyWith(...)` or like so:`instanceOfRemoteImageInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RemoteImageInfoCWProxy get copyWith => _$RemoteImageInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteImageInfo _$RemoteImageInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RemoteImageInfo',
      json,
      ($checkedConvert) {
        final val = RemoteImageInfo(
          providerName: $checkedConvert('ProviderName', (v) => v as String?),
          url: $checkedConvert('Url', (v) => v as String?),
          thumbnailUrl: $checkedConvert('ThumbnailUrl', (v) => v as String?),
          height: $checkedConvert('Height', (v) => (v as num?)?.toInt()),
          width: $checkedConvert('Width', (v) => (v as num?)?.toInt()),
          communityRating: $checkedConvert(
            'CommunityRating',
            (v) => (v as num?)?.toDouble(),
          ),
          voteCount: $checkedConvert('VoteCount', (v) => (v as num?)?.toInt()),
          language: $checkedConvert('Language', (v) => v as String?),
          type: $checkedConvert(
            'Type',
            (v) => $enumDecodeNullable(_$ImageTypeEnumMap, v),
          ),
          ratingType: $checkedConvert(
            'RatingType',
            (v) => $enumDecodeNullable(_$RatingTypeEnumMap, v),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'providerName': 'ProviderName',
        'url': 'Url',
        'thumbnailUrl': 'ThumbnailUrl',
        'height': 'Height',
        'width': 'Width',
        'communityRating': 'CommunityRating',
        'voteCount': 'VoteCount',
        'language': 'Language',
        'type': 'Type',
        'ratingType': 'RatingType',
      },
    );

Map<String, dynamic> _$RemoteImageInfoToJson(RemoteImageInfo instance) =>
    <String, dynamic>{
      'ProviderName': ?instance.providerName,
      'Url': ?instance.url,
      'ThumbnailUrl': ?instance.thumbnailUrl,
      'Height': ?instance.height,
      'Width': ?instance.width,
      'CommunityRating': ?instance.communityRating,
      'VoteCount': ?instance.voteCount,
      'Language': ?instance.language,
      'Type': ?_$ImageTypeEnumMap[instance.type],
      'RatingType': ?_$RatingTypeEnumMap[instance.ratingType],
    };

const _$ImageTypeEnumMap = {
  ImageType.primary: 'Primary',
  ImageType.art: 'Art',
  ImageType.backdrop: 'Backdrop',
  ImageType.banner: 'Banner',
  ImageType.logo: 'Logo',
  ImageType.thumb: 'Thumb',
  ImageType.disc: 'Disc',
  ImageType.box: 'Box',
  ImageType.screenshot: 'Screenshot',
  ImageType.menu: 'Menu',
  ImageType.chapter: 'Chapter',
  ImageType.boxRear: 'BoxRear',
  ImageType.profile: 'Profile',
};

const _$RatingTypeEnumMap = {
  RatingType.score: 'Score',
  RatingType.likes: 'Likes',
};
