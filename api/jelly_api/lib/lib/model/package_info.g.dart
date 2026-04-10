// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PackageInfoCWProxy {
  PackageInfo name(String? name);

  PackageInfo description(String? description);

  PackageInfo overview(String? overview);

  PackageInfo owner(String? owner);

  PackageInfo category(String? category);

  PackageInfo guid(String? guid);

  PackageInfo versions(List<VersionInfo>? versions);

  PackageInfo imageUrl(String? imageUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PackageInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PackageInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  PackageInfo call({
    String? name,
    String? description,
    String? overview,
    String? owner,
    String? category,
    String? guid,
    List<VersionInfo>? versions,
    String? imageUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPackageInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPackageInfo.copyWith.fieldName(...)`
class _$PackageInfoCWProxyImpl implements _$PackageInfoCWProxy {
  const _$PackageInfoCWProxyImpl(this._value);

  final PackageInfo _value;

  @override
  PackageInfo name(String? name) => this(name: name);

  @override
  PackageInfo description(String? description) =>
      this(description: description);

  @override
  PackageInfo overview(String? overview) => this(overview: overview);

  @override
  PackageInfo owner(String? owner) => this(owner: owner);

  @override
  PackageInfo category(String? category) => this(category: category);

  @override
  PackageInfo guid(String? guid) => this(guid: guid);

  @override
  PackageInfo versions(List<VersionInfo>? versions) => this(versions: versions);

  @override
  PackageInfo imageUrl(String? imageUrl) => this(imageUrl: imageUrl);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PackageInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PackageInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  PackageInfo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? overview = const $CopyWithPlaceholder(),
    Object? owner = const $CopyWithPlaceholder(),
    Object? category = const $CopyWithPlaceholder(),
    Object? guid = const $CopyWithPlaceholder(),
    Object? versions = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
  }) {
    return PackageInfo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      overview: overview == const $CopyWithPlaceholder()
          ? _value.overview
          // ignore: cast_nullable_to_non_nullable
          : overview as String?,
      owner: owner == const $CopyWithPlaceholder()
          ? _value.owner
          // ignore: cast_nullable_to_non_nullable
          : owner as String?,
      category: category == const $CopyWithPlaceholder()
          ? _value.category
          // ignore: cast_nullable_to_non_nullable
          : category as String?,
      guid: guid == const $CopyWithPlaceholder()
          ? _value.guid
          // ignore: cast_nullable_to_non_nullable
          : guid as String?,
      versions: versions == const $CopyWithPlaceholder()
          ? _value.versions
          // ignore: cast_nullable_to_non_nullable
          : versions as List<VersionInfo>?,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
    );
  }
}

extension $PackageInfoCopyWith on PackageInfo {
  /// Returns a callable class that can be used as follows: `instanceOfPackageInfo.copyWith(...)` or like so:`instanceOfPackageInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PackageInfoCWProxy get copyWith => _$PackageInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageInfo _$PackageInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PackageInfo', json, ($checkedConvert) {
      final val = PackageInfo(
        name: $checkedConvert('name', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
        overview: $checkedConvert('overview', (v) => v as String?),
        owner: $checkedConvert('owner', (v) => v as String?),
        category: $checkedConvert('category', (v) => v as String?),
        guid: $checkedConvert('guid', (v) => v as String?),
        versions: $checkedConvert(
          'versions',
          (v) => (v as List<dynamic>?)
              ?.map((e) => VersionInfo.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$PackageInfoToJson(PackageInfo instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'description': ?instance.description,
      'overview': ?instance.overview,
      'owner': ?instance.owner,
      'category': ?instance.category,
      'guid': ?instance.guid,
      'versions': ?instance.versions?.map((e) => e.toJson()).toList(),
      'imageUrl': ?instance.imageUrl,
    };
