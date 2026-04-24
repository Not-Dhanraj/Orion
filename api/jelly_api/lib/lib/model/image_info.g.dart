// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImageInfoCWProxy {
  ImageInfo imageType(ImageType? imageType);

  ImageInfo imageIndex(int? imageIndex);

  ImageInfo imageTag(String? imageTag);

  ImageInfo path(String? path);

  ImageInfo blurHash(String? blurHash);

  ImageInfo height(int? height);

  ImageInfo width(int? width);

  ImageInfo size(int? size);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImageInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImageInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ImageInfo call({
    ImageType? imageType,
    int? imageIndex,
    String? imageTag,
    String? path,
    String? blurHash,
    int? height,
    int? width,
    int? size,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfImageInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfImageInfo.copyWith.fieldName(...)`
class _$ImageInfoCWProxyImpl implements _$ImageInfoCWProxy {
  const _$ImageInfoCWProxyImpl(this._value);

  final ImageInfo _value;

  @override
  ImageInfo imageType(ImageType? imageType) => this(imageType: imageType);

  @override
  ImageInfo imageIndex(int? imageIndex) => this(imageIndex: imageIndex);

  @override
  ImageInfo imageTag(String? imageTag) => this(imageTag: imageTag);

  @override
  ImageInfo path(String? path) => this(path: path);

  @override
  ImageInfo blurHash(String? blurHash) => this(blurHash: blurHash);

  @override
  ImageInfo height(int? height) => this(height: height);

  @override
  ImageInfo width(int? width) => this(width: width);

  @override
  ImageInfo size(int? size) => this(size: size);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImageInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImageInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ImageInfo call({
    Object? imageType = const $CopyWithPlaceholder(),
    Object? imageIndex = const $CopyWithPlaceholder(),
    Object? imageTag = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? blurHash = const $CopyWithPlaceholder(),
    Object? height = const $CopyWithPlaceholder(),
    Object? width = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
  }) {
    return ImageInfo(
      imageType: imageType == const $CopyWithPlaceholder()
          ? _value.imageType
          // ignore: cast_nullable_to_non_nullable
          : imageType as ImageType?,
      imageIndex: imageIndex == const $CopyWithPlaceholder()
          ? _value.imageIndex
          // ignore: cast_nullable_to_non_nullable
          : imageIndex as int?,
      imageTag: imageTag == const $CopyWithPlaceholder()
          ? _value.imageTag
          // ignore: cast_nullable_to_non_nullable
          : imageTag as String?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      blurHash: blurHash == const $CopyWithPlaceholder()
          ? _value.blurHash
          // ignore: cast_nullable_to_non_nullable
          : blurHash as String?,
      height: height == const $CopyWithPlaceholder()
          ? _value.height
          // ignore: cast_nullable_to_non_nullable
          : height as int?,
      width: width == const $CopyWithPlaceholder()
          ? _value.width
          // ignore: cast_nullable_to_non_nullable
          : width as int?,
      size: size == const $CopyWithPlaceholder()
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as int?,
    );
  }
}

extension $ImageInfoCopyWith on ImageInfo {
  /// Returns a callable class that can be used as follows: `instanceOfImageInfo.copyWith(...)` or like so:`instanceOfImageInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImageInfoCWProxy get copyWith => _$ImageInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageInfo _$ImageInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'ImageInfo',
  json,
  ($checkedConvert) {
    final val = ImageInfo(
      imageType: $checkedConvert(
        'ImageType',
        (v) => $enumDecodeNullable(_$ImageTypeEnumMap, v),
      ),
      imageIndex: $checkedConvert('ImageIndex', (v) => (v as num?)?.toInt()),
      imageTag: $checkedConvert('ImageTag', (v) => v as String?),
      path: $checkedConvert('Path', (v) => v as String?),
      blurHash: $checkedConvert('BlurHash', (v) => v as String?),
      height: $checkedConvert('Height', (v) => (v as num?)?.toInt()),
      width: $checkedConvert('Width', (v) => (v as num?)?.toInt()),
      size: $checkedConvert('Size', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'imageType': 'ImageType',
    'imageIndex': 'ImageIndex',
    'imageTag': 'ImageTag',
    'path': 'Path',
    'blurHash': 'BlurHash',
    'height': 'Height',
    'width': 'Width',
    'size': 'Size',
  },
);

Map<String, dynamic> _$ImageInfoToJson(ImageInfo instance) => <String, dynamic>{
  'ImageType': ?_$ImageTypeEnumMap[instance.imageType],
  'ImageIndex': ?instance.imageIndex,
  'ImageTag': ?instance.imageTag,
  'Path': ?instance.path,
  'BlurHash': ?instance.blurHash,
  'Height': ?instance.height,
  'Width': ?instance.width,
  'Size': ?instance.size,
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
