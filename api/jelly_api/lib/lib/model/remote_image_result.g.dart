// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_image_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RemoteImageResultCWProxy {
  RemoteImageResult images(List<RemoteImageInfo>? images);

  RemoteImageResult totalRecordCount(int? totalRecordCount);

  RemoteImageResult providers(List<String>? providers);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoteImageResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoteImageResult(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoteImageResult call({
    List<RemoteImageInfo>? images,
    int? totalRecordCount,
    List<String>? providers,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRemoteImageResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRemoteImageResult.copyWith.fieldName(...)`
class _$RemoteImageResultCWProxyImpl implements _$RemoteImageResultCWProxy {
  const _$RemoteImageResultCWProxyImpl(this._value);

  final RemoteImageResult _value;

  @override
  RemoteImageResult images(List<RemoteImageInfo>? images) =>
      this(images: images);

  @override
  RemoteImageResult totalRecordCount(int? totalRecordCount) =>
      this(totalRecordCount: totalRecordCount);

  @override
  RemoteImageResult providers(List<String>? providers) =>
      this(providers: providers);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoteImageResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoteImageResult(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoteImageResult call({
    Object? images = const $CopyWithPlaceholder(),
    Object? totalRecordCount = const $CopyWithPlaceholder(),
    Object? providers = const $CopyWithPlaceholder(),
  }) {
    return RemoteImageResult(
      images: images == const $CopyWithPlaceholder()
          ? _value.images
          // ignore: cast_nullable_to_non_nullable
          : images as List<RemoteImageInfo>?,
      totalRecordCount: totalRecordCount == const $CopyWithPlaceholder()
          ? _value.totalRecordCount
          // ignore: cast_nullable_to_non_nullable
          : totalRecordCount as int?,
      providers: providers == const $CopyWithPlaceholder()
          ? _value.providers
          // ignore: cast_nullable_to_non_nullable
          : providers as List<String>?,
    );
  }
}

extension $RemoteImageResultCopyWith on RemoteImageResult {
  /// Returns a callable class that can be used as follows: `instanceOfRemoteImageResult.copyWith(...)` or like so:`instanceOfRemoteImageResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RemoteImageResultCWProxy get copyWith =>
      _$RemoteImageResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteImageResult _$RemoteImageResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RemoteImageResult',
      json,
      ($checkedConvert) {
        final val = RemoteImageResult(
          images: $checkedConvert(
            'Images',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => RemoteImageInfo.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
          totalRecordCount: $checkedConvert(
            'TotalRecordCount',
            (v) => (v as num?)?.toInt(),
          ),
          providers: $checkedConvert(
            'Providers',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'images': 'Images',
        'totalRecordCount': 'TotalRecordCount',
        'providers': 'Providers',
      },
    );

Map<String, dynamic> _$RemoteImageResultToJson(RemoteImageResult instance) =>
    <String, dynamic>{
      'Images': ?instance.images?.map((e) => e.toJson()).toList(),
      'TotalRecordCount': ?instance.totalRecordCount,
      'Providers': ?instance.providers,
    };
