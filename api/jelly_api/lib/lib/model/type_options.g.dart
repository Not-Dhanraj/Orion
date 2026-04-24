// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TypeOptionsCWProxy {
  TypeOptions type(String? type);

  TypeOptions metadataFetchers(List<String>? metadataFetchers);

  TypeOptions metadataFetcherOrder(List<String>? metadataFetcherOrder);

  TypeOptions imageFetchers(List<String>? imageFetchers);

  TypeOptions imageFetcherOrder(List<String>? imageFetcherOrder);

  TypeOptions imageOptions(List<ImageOption>? imageOptions);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TypeOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TypeOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  TypeOptions call({
    String? type,
    List<String>? metadataFetchers,
    List<String>? metadataFetcherOrder,
    List<String>? imageFetchers,
    List<String>? imageFetcherOrder,
    List<ImageOption>? imageOptions,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTypeOptions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTypeOptions.copyWith.fieldName(...)`
class _$TypeOptionsCWProxyImpl implements _$TypeOptionsCWProxy {
  const _$TypeOptionsCWProxyImpl(this._value);

  final TypeOptions _value;

  @override
  TypeOptions type(String? type) => this(type: type);

  @override
  TypeOptions metadataFetchers(List<String>? metadataFetchers) =>
      this(metadataFetchers: metadataFetchers);

  @override
  TypeOptions metadataFetcherOrder(List<String>? metadataFetcherOrder) =>
      this(metadataFetcherOrder: metadataFetcherOrder);

  @override
  TypeOptions imageFetchers(List<String>? imageFetchers) =>
      this(imageFetchers: imageFetchers);

  @override
  TypeOptions imageFetcherOrder(List<String>? imageFetcherOrder) =>
      this(imageFetcherOrder: imageFetcherOrder);

  @override
  TypeOptions imageOptions(List<ImageOption>? imageOptions) =>
      this(imageOptions: imageOptions);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TypeOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TypeOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  TypeOptions call({
    Object? type = const $CopyWithPlaceholder(),
    Object? metadataFetchers = const $CopyWithPlaceholder(),
    Object? metadataFetcherOrder = const $CopyWithPlaceholder(),
    Object? imageFetchers = const $CopyWithPlaceholder(),
    Object? imageFetcherOrder = const $CopyWithPlaceholder(),
    Object? imageOptions = const $CopyWithPlaceholder(),
  }) {
    return TypeOptions(
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String?,
      metadataFetchers: metadataFetchers == const $CopyWithPlaceholder()
          ? _value.metadataFetchers
          // ignore: cast_nullable_to_non_nullable
          : metadataFetchers as List<String>?,
      metadataFetcherOrder: metadataFetcherOrder == const $CopyWithPlaceholder()
          ? _value.metadataFetcherOrder
          // ignore: cast_nullable_to_non_nullable
          : metadataFetcherOrder as List<String>?,
      imageFetchers: imageFetchers == const $CopyWithPlaceholder()
          ? _value.imageFetchers
          // ignore: cast_nullable_to_non_nullable
          : imageFetchers as List<String>?,
      imageFetcherOrder: imageFetcherOrder == const $CopyWithPlaceholder()
          ? _value.imageFetcherOrder
          // ignore: cast_nullable_to_non_nullable
          : imageFetcherOrder as List<String>?,
      imageOptions: imageOptions == const $CopyWithPlaceholder()
          ? _value.imageOptions
          // ignore: cast_nullable_to_non_nullable
          : imageOptions as List<ImageOption>?,
    );
  }
}

extension $TypeOptionsCopyWith on TypeOptions {
  /// Returns a callable class that can be used as follows: `instanceOfTypeOptions.copyWith(...)` or like so:`instanceOfTypeOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TypeOptionsCWProxy get copyWith => _$TypeOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeOptions _$TypeOptionsFromJson(Map<String, dynamic> json) => $checkedCreate(
  'TypeOptions',
  json,
  ($checkedConvert) {
    final val = TypeOptions(
      type: $checkedConvert('Type', (v) => v as String?),
      metadataFetchers: $checkedConvert(
        'MetadataFetchers',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      metadataFetcherOrder: $checkedConvert(
        'MetadataFetcherOrder',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      imageFetchers: $checkedConvert(
        'ImageFetchers',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      imageFetcherOrder: $checkedConvert(
        'ImageFetcherOrder',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      imageOptions: $checkedConvert(
        'ImageOptions',
        (v) => (v as List<dynamic>?)
            ?.map((e) => ImageOption.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'type': 'Type',
    'metadataFetchers': 'MetadataFetchers',
    'metadataFetcherOrder': 'MetadataFetcherOrder',
    'imageFetchers': 'ImageFetchers',
    'imageFetcherOrder': 'ImageFetcherOrder',
    'imageOptions': 'ImageOptions',
  },
);

Map<String, dynamic> _$TypeOptionsToJson(TypeOptions instance) =>
    <String, dynamic>{
      'Type': ?instance.type,
      'MetadataFetchers': ?instance.metadataFetchers,
      'MetadataFetcherOrder': ?instance.metadataFetcherOrder,
      'ImageFetchers': ?instance.imageFetchers,
      'ImageFetcherOrder': ?instance.imageFetcherOrder,
      'ImageOptions': ?instance.imageOptions?.map((e) => e.toJson()).toList(),
    };
