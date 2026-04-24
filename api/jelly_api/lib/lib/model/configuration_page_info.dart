//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'configuration_page_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ConfigurationPageInfo {
  /// Returns a new [ConfigurationPageInfo] instance.
  ConfigurationPageInfo({

     this.name,

     this.enableInMainMenu,

     this.menuSection,

     this.menuIcon,

     this.displayName,

     this.pluginId,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets a value indicating whether the configurations page is enabled in the main menu.
  @JsonKey(
    
    name: r'EnableInMainMenu',
    required: false,
    includeIfNull: false,
  )


  final bool? enableInMainMenu;



      /// Gets or sets the menu section.
  @JsonKey(
    
    name: r'MenuSection',
    required: false,
    includeIfNull: false,
  )


  final String? menuSection;



      /// Gets or sets the menu icon.
  @JsonKey(
    
    name: r'MenuIcon',
    required: false,
    includeIfNull: false,
  )


  final String? menuIcon;



      /// Gets or sets the display name.
  @JsonKey(
    
    name: r'DisplayName',
    required: false,
    includeIfNull: false,
  )


  final String? displayName;



      /// Gets or sets the plugin id.
  @JsonKey(
    
    name: r'PluginId',
    required: false,
    includeIfNull: false,
  )


  final String? pluginId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ConfigurationPageInfo &&
      other.name == name &&
      other.enableInMainMenu == enableInMainMenu &&
      other.menuSection == menuSection &&
      other.menuIcon == menuIcon &&
      other.displayName == displayName &&
      other.pluginId == pluginId;

    @override
    int get hashCode =>
        name.hashCode +
        enableInMainMenu.hashCode +
        (menuSection == null ? 0 : menuSection.hashCode) +
        (menuIcon == null ? 0 : menuIcon.hashCode) +
        (displayName == null ? 0 : displayName.hashCode) +
        (pluginId == null ? 0 : pluginId.hashCode);

  factory ConfigurationPageInfo.fromJson(Map<String, dynamic> json) => _$ConfigurationPageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationPageInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

