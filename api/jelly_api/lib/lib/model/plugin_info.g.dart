// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PluginInfoCWProxy {
  PluginInfo name(String? name);

  PluginInfo version(String? version);

  PluginInfo configurationFileName(String? configurationFileName);

  PluginInfo description(String? description);

  PluginInfo id(String? id);

  PluginInfo canUninstall(bool? canUninstall);

  PluginInfo hasImage(bool? hasImage);

  PluginInfo status(PluginStatus? status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PluginInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PluginInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  PluginInfo call({
    String? name,
    String? version,
    String? configurationFileName,
    String? description,
    String? id,
    bool? canUninstall,
    bool? hasImage,
    PluginStatus? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPluginInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPluginInfo.copyWith.fieldName(...)`
class _$PluginInfoCWProxyImpl implements _$PluginInfoCWProxy {
  const _$PluginInfoCWProxyImpl(this._value);

  final PluginInfo _value;

  @override
  PluginInfo name(String? name) => this(name: name);

  @override
  PluginInfo version(String? version) => this(version: version);

  @override
  PluginInfo configurationFileName(String? configurationFileName) =>
      this(configurationFileName: configurationFileName);

  @override
  PluginInfo description(String? description) => this(description: description);

  @override
  PluginInfo id(String? id) => this(id: id);

  @override
  PluginInfo canUninstall(bool? canUninstall) =>
      this(canUninstall: canUninstall);

  @override
  PluginInfo hasImage(bool? hasImage) => this(hasImage: hasImage);

  @override
  PluginInfo status(PluginStatus? status) => this(status: status);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PluginInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PluginInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  PluginInfo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? configurationFileName = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? canUninstall = const $CopyWithPlaceholder(),
    Object? hasImage = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return PluginInfo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String?,
      configurationFileName:
          configurationFileName == const $CopyWithPlaceholder()
          ? _value.configurationFileName
          // ignore: cast_nullable_to_non_nullable
          : configurationFileName as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      canUninstall: canUninstall == const $CopyWithPlaceholder()
          ? _value.canUninstall
          // ignore: cast_nullable_to_non_nullable
          : canUninstall as bool?,
      hasImage: hasImage == const $CopyWithPlaceholder()
          ? _value.hasImage
          // ignore: cast_nullable_to_non_nullable
          : hasImage as bool?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as PluginStatus?,
    );
  }
}

extension $PluginInfoCopyWith on PluginInfo {
  /// Returns a callable class that can be used as follows: `instanceOfPluginInfo.copyWith(...)` or like so:`instanceOfPluginInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PluginInfoCWProxy get copyWith => _$PluginInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PluginInfo _$PluginInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'PluginInfo',
  json,
  ($checkedConvert) {
    final val = PluginInfo(
      name: $checkedConvert('Name', (v) => v as String?),
      version: $checkedConvert('Version', (v) => v as String?),
      configurationFileName: $checkedConvert(
        'ConfigurationFileName',
        (v) => v as String?,
      ),
      description: $checkedConvert('Description', (v) => v as String?),
      id: $checkedConvert('Id', (v) => v as String?),
      canUninstall: $checkedConvert('CanUninstall', (v) => v as bool?),
      hasImage: $checkedConvert('HasImage', (v) => v as bool?),
      status: $checkedConvert(
        'Status',
        (v) => $enumDecodeNullable(_$PluginStatusEnumMap, v),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'version': 'Version',
    'configurationFileName': 'ConfigurationFileName',
    'description': 'Description',
    'id': 'Id',
    'canUninstall': 'CanUninstall',
    'hasImage': 'HasImage',
    'status': 'Status',
  },
);

Map<String, dynamic> _$PluginInfoToJson(PluginInfo instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'Version': ?instance.version,
      'ConfigurationFileName': ?instance.configurationFileName,
      'Description': ?instance.description,
      'Id': ?instance.id,
      'CanUninstall': ?instance.canUninstall,
      'HasImage': ?instance.hasImage,
      'Status': ?_$PluginStatusEnumMap[instance.status],
    };

const _$PluginStatusEnumMap = {
  PluginStatus.active: 'Active',
  PluginStatus.restart: 'Restart',
  PluginStatus.deleted: 'Deleted',
  PluginStatus.superseded: 'Superseded',
  PluginStatus.superceded: 'Superceded',
  PluginStatus.malfunctioned: 'Malfunctioned',
  PluginStatus.notSupported: 'NotSupported',
  PluginStatus.disabled: 'Disabled',
};
