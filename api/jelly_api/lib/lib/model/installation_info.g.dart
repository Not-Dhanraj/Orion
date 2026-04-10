// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installation_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InstallationInfoCWProxy {
  InstallationInfo guid(String? guid);

  InstallationInfo name(String? name);

  InstallationInfo version(String? version);

  InstallationInfo changelog(String? changelog);

  InstallationInfo sourceUrl(String? sourceUrl);

  InstallationInfo checksum(String? checksum);

  InstallationInfo packageInfo(PackageInfo? packageInfo);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `InstallationInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// InstallationInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  InstallationInfo call({
    String? guid,
    String? name,
    String? version,
    String? changelog,
    String? sourceUrl,
    String? checksum,
    PackageInfo? packageInfo,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfInstallationInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfInstallationInfo.copyWith.fieldName(...)`
class _$InstallationInfoCWProxyImpl implements _$InstallationInfoCWProxy {
  const _$InstallationInfoCWProxyImpl(this._value);

  final InstallationInfo _value;

  @override
  InstallationInfo guid(String? guid) => this(guid: guid);

  @override
  InstallationInfo name(String? name) => this(name: name);

  @override
  InstallationInfo version(String? version) => this(version: version);

  @override
  InstallationInfo changelog(String? changelog) => this(changelog: changelog);

  @override
  InstallationInfo sourceUrl(String? sourceUrl) => this(sourceUrl: sourceUrl);

  @override
  InstallationInfo checksum(String? checksum) => this(checksum: checksum);

  @override
  InstallationInfo packageInfo(PackageInfo? packageInfo) =>
      this(packageInfo: packageInfo);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `InstallationInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// InstallationInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  InstallationInfo call({
    Object? guid = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? changelog = const $CopyWithPlaceholder(),
    Object? sourceUrl = const $CopyWithPlaceholder(),
    Object? checksum = const $CopyWithPlaceholder(),
    Object? packageInfo = const $CopyWithPlaceholder(),
  }) {
    return InstallationInfo(
      guid: guid == const $CopyWithPlaceholder()
          ? _value.guid
          // ignore: cast_nullable_to_non_nullable
          : guid as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String?,
      changelog: changelog == const $CopyWithPlaceholder()
          ? _value.changelog
          // ignore: cast_nullable_to_non_nullable
          : changelog as String?,
      sourceUrl: sourceUrl == const $CopyWithPlaceholder()
          ? _value.sourceUrl
          // ignore: cast_nullable_to_non_nullable
          : sourceUrl as String?,
      checksum: checksum == const $CopyWithPlaceholder()
          ? _value.checksum
          // ignore: cast_nullable_to_non_nullable
          : checksum as String?,
      packageInfo: packageInfo == const $CopyWithPlaceholder()
          ? _value.packageInfo
          // ignore: cast_nullable_to_non_nullable
          : packageInfo as PackageInfo?,
    );
  }
}

extension $InstallationInfoCopyWith on InstallationInfo {
  /// Returns a callable class that can be used as follows: `instanceOfInstallationInfo.copyWith(...)` or like so:`instanceOfInstallationInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InstallationInfoCWProxy get copyWith => _$InstallationInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstallationInfo _$InstallationInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'InstallationInfo',
      json,
      ($checkedConvert) {
        final val = InstallationInfo(
          guid: $checkedConvert('Guid', (v) => v as String?),
          name: $checkedConvert('Name', (v) => v as String?),
          version: $checkedConvert('Version', (v) => v as String?),
          changelog: $checkedConvert('Changelog', (v) => v as String?),
          sourceUrl: $checkedConvert('SourceUrl', (v) => v as String?),
          checksum: $checkedConvert('Checksum', (v) => v as String?),
          packageInfo: $checkedConvert(
            'PackageInfo',
            (v) => v == null
                ? null
                : PackageInfo.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'guid': 'Guid',
        'name': 'Name',
        'version': 'Version',
        'changelog': 'Changelog',
        'sourceUrl': 'SourceUrl',
        'checksum': 'Checksum',
        'packageInfo': 'PackageInfo',
      },
    );

Map<String, dynamic> _$InstallationInfoToJson(InstallationInfo instance) =>
    <String, dynamic>{
      'Guid': ?instance.guid,
      'Name': ?instance.name,
      'Version': ?instance.version,
      'Changelog': ?instance.changelog,
      'SourceUrl': ?instance.sourceUrl,
      'Checksum': ?instance.checksum,
      'PackageInfo': ?instance.packageInfo?.toJson(),
    };
