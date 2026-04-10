// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_provider_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImageProviderInfoCWProxy {
  ImageProviderInfo name(String? name);

  ImageProviderInfo supportedImages(List<ImageType>? supportedImages);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImageProviderInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImageProviderInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ImageProviderInfo call({String? name, List<ImageType>? supportedImages});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfImageProviderInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfImageProviderInfo.copyWith.fieldName(...)`
class _$ImageProviderInfoCWProxyImpl implements _$ImageProviderInfoCWProxy {
  const _$ImageProviderInfoCWProxyImpl(this._value);

  final ImageProviderInfo _value;

  @override
  ImageProviderInfo name(String? name) => this(name: name);

  @override
  ImageProviderInfo supportedImages(List<ImageType>? supportedImages) =>
      this(supportedImages: supportedImages);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImageProviderInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImageProviderInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ImageProviderInfo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? supportedImages = const $CopyWithPlaceholder(),
  }) {
    return ImageProviderInfo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      supportedImages: supportedImages == const $CopyWithPlaceholder()
          ? _value.supportedImages
          // ignore: cast_nullable_to_non_nullable
          : supportedImages as List<ImageType>?,
    );
  }
}

extension $ImageProviderInfoCopyWith on ImageProviderInfo {
  /// Returns a callable class that can be used as follows: `instanceOfImageProviderInfo.copyWith(...)` or like so:`instanceOfImageProviderInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImageProviderInfoCWProxy get copyWith =>
      _$ImageProviderInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageProviderInfo _$ImageProviderInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ImageProviderInfo',
      json,
      ($checkedConvert) {
        final val = ImageProviderInfo(
          name: $checkedConvert('Name', (v) => v as String?),
          supportedImages: $checkedConvert(
            'SupportedImages',
            (v) => (v as List<dynamic>?)
                ?.map((e) => $enumDecode(_$ImageTypeEnumMap, e))
                .toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'name': 'Name', 'supportedImages': 'SupportedImages'},
    );

Map<String, dynamic> _$ImageProviderInfoToJson(ImageProviderInfo instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'SupportedImages': ?instance.supportedImages
          ?.map((e) => _$ImageTypeEnumMap[e]!)
          .toList(),
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
