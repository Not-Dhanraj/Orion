// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_plugin.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IPluginCWProxy {
  IPlugin name(String? name);

  IPlugin description(String? description);

  IPlugin id(String? id);

  IPlugin version(String? version);

  IPlugin assemblyFilePath(String? assemblyFilePath);

  IPlugin canUninstall(bool? canUninstall);

  IPlugin dataFolderPath(String? dataFolderPath);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IPlugin(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IPlugin(...).copyWith(id: 12, name: "My name")
  /// ````
  IPlugin call({
    String? name,
    String? description,
    String? id,
    String? version,
    String? assemblyFilePath,
    bool? canUninstall,
    String? dataFolderPath,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIPlugin.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIPlugin.copyWith.fieldName(...)`
class _$IPluginCWProxyImpl implements _$IPluginCWProxy {
  const _$IPluginCWProxyImpl(this._value);

  final IPlugin _value;

  @override
  IPlugin name(String? name) => this(name: name);

  @override
  IPlugin description(String? description) => this(description: description);

  @override
  IPlugin id(String? id) => this(id: id);

  @override
  IPlugin version(String? version) => this(version: version);

  @override
  IPlugin assemblyFilePath(String? assemblyFilePath) =>
      this(assemblyFilePath: assemblyFilePath);

  @override
  IPlugin canUninstall(bool? canUninstall) => this(canUninstall: canUninstall);

  @override
  IPlugin dataFolderPath(String? dataFolderPath) =>
      this(dataFolderPath: dataFolderPath);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IPlugin(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IPlugin(...).copyWith(id: 12, name: "My name")
  /// ````
  IPlugin call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? assemblyFilePath = const $CopyWithPlaceholder(),
    Object? canUninstall = const $CopyWithPlaceholder(),
    Object? dataFolderPath = const $CopyWithPlaceholder(),
  }) {
    return IPlugin(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String?,
      assemblyFilePath: assemblyFilePath == const $CopyWithPlaceholder()
          ? _value.assemblyFilePath
          // ignore: cast_nullable_to_non_nullable
          : assemblyFilePath as String?,
      canUninstall: canUninstall == const $CopyWithPlaceholder()
          ? _value.canUninstall
          // ignore: cast_nullable_to_non_nullable
          : canUninstall as bool?,
      dataFolderPath: dataFolderPath == const $CopyWithPlaceholder()
          ? _value.dataFolderPath
          // ignore: cast_nullable_to_non_nullable
          : dataFolderPath as String?,
    );
  }
}

extension $IPluginCopyWith on IPlugin {
  /// Returns a callable class that can be used as follows: `instanceOfIPlugin.copyWith(...)` or like so:`instanceOfIPlugin.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IPluginCWProxy get copyWith => _$IPluginCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IPlugin _$IPluginFromJson(Map<String, dynamic> json) => $checkedCreate(
  'IPlugin',
  json,
  ($checkedConvert) {
    final val = IPlugin(
      name: $checkedConvert('Name', (v) => v as String?),
      description: $checkedConvert('Description', (v) => v as String?),
      id: $checkedConvert('Id', (v) => v as String?),
      version: $checkedConvert('Version', (v) => v as String?),
      assemblyFilePath: $checkedConvert(
        'AssemblyFilePath',
        (v) => v as String?,
      ),
      canUninstall: $checkedConvert('CanUninstall', (v) => v as bool?),
      dataFolderPath: $checkedConvert('DataFolderPath', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'description': 'Description',
    'id': 'Id',
    'version': 'Version',
    'assemblyFilePath': 'AssemblyFilePath',
    'canUninstall': 'CanUninstall',
    'dataFolderPath': 'DataFolderPath',
  },
);

Map<String, dynamic> _$IPluginToJson(IPlugin instance) => <String, dynamic>{
  'Name': ?instance.name,
  'Description': ?instance.description,
  'Id': ?instance.id,
  'Version': ?instance.version,
  'AssemblyFilePath': ?instance.assemblyFilePath,
  'CanUninstall': ?instance.canUninstall,
  'DataFolderPath': ?instance.dataFolderPath,
};
