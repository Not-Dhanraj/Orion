// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_page_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConfigurationPageInfoCWProxy {
  ConfigurationPageInfo name(String? name);

  ConfigurationPageInfo enableInMainMenu(bool? enableInMainMenu);

  ConfigurationPageInfo menuSection(String? menuSection);

  ConfigurationPageInfo menuIcon(String? menuIcon);

  ConfigurationPageInfo displayName(String? displayName);

  ConfigurationPageInfo pluginId(String? pluginId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ConfigurationPageInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ConfigurationPageInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ConfigurationPageInfo call({
    String? name,
    bool? enableInMainMenu,
    String? menuSection,
    String? menuIcon,
    String? displayName,
    String? pluginId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfConfigurationPageInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfConfigurationPageInfo.copyWith.fieldName(...)`
class _$ConfigurationPageInfoCWProxyImpl
    implements _$ConfigurationPageInfoCWProxy {
  const _$ConfigurationPageInfoCWProxyImpl(this._value);

  final ConfigurationPageInfo _value;

  @override
  ConfigurationPageInfo name(String? name) => this(name: name);

  @override
  ConfigurationPageInfo enableInMainMenu(bool? enableInMainMenu) =>
      this(enableInMainMenu: enableInMainMenu);

  @override
  ConfigurationPageInfo menuSection(String? menuSection) =>
      this(menuSection: menuSection);

  @override
  ConfigurationPageInfo menuIcon(String? menuIcon) => this(menuIcon: menuIcon);

  @override
  ConfigurationPageInfo displayName(String? displayName) =>
      this(displayName: displayName);

  @override
  ConfigurationPageInfo pluginId(String? pluginId) => this(pluginId: pluginId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ConfigurationPageInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ConfigurationPageInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ConfigurationPageInfo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? enableInMainMenu = const $CopyWithPlaceholder(),
    Object? menuSection = const $CopyWithPlaceholder(),
    Object? menuIcon = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? pluginId = const $CopyWithPlaceholder(),
  }) {
    return ConfigurationPageInfo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      enableInMainMenu: enableInMainMenu == const $CopyWithPlaceholder()
          ? _value.enableInMainMenu
          // ignore: cast_nullable_to_non_nullable
          : enableInMainMenu as bool?,
      menuSection: menuSection == const $CopyWithPlaceholder()
          ? _value.menuSection
          // ignore: cast_nullable_to_non_nullable
          : menuSection as String?,
      menuIcon: menuIcon == const $CopyWithPlaceholder()
          ? _value.menuIcon
          // ignore: cast_nullable_to_non_nullable
          : menuIcon as String?,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String?,
      pluginId: pluginId == const $CopyWithPlaceholder()
          ? _value.pluginId
          // ignore: cast_nullable_to_non_nullable
          : pluginId as String?,
    );
  }
}

extension $ConfigurationPageInfoCopyWith on ConfigurationPageInfo {
  /// Returns a callable class that can be used as follows: `instanceOfConfigurationPageInfo.copyWith(...)` or like so:`instanceOfConfigurationPageInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConfigurationPageInfoCWProxy get copyWith =>
      _$ConfigurationPageInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigurationPageInfo _$ConfigurationPageInfoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ConfigurationPageInfo',
  json,
  ($checkedConvert) {
    final val = ConfigurationPageInfo(
      name: $checkedConvert('Name', (v) => v as String?),
      enableInMainMenu: $checkedConvert('EnableInMainMenu', (v) => v as bool?),
      menuSection: $checkedConvert('MenuSection', (v) => v as String?),
      menuIcon: $checkedConvert('MenuIcon', (v) => v as String?),
      displayName: $checkedConvert('DisplayName', (v) => v as String?),
      pluginId: $checkedConvert('PluginId', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'enableInMainMenu': 'EnableInMainMenu',
    'menuSection': 'MenuSection',
    'menuIcon': 'MenuIcon',
    'displayName': 'DisplayName',
    'pluginId': 'PluginId',
  },
);

Map<String, dynamic> _$ConfigurationPageInfoToJson(
  ConfigurationPageInfo instance,
) => <String, dynamic>{
  'Name': ?instance.name,
  'EnableInMainMenu': ?instance.enableInMainMenu,
  'MenuSection': ?instance.menuSection,
  'MenuIcon': ?instance.menuIcon,
  'DisplayName': ?instance.displayName,
  'PluginId': ?instance.pluginId,
};
