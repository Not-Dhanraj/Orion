//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/custom_database_option.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_database_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomDatabaseOptions {
  /// Returns a new [CustomDatabaseOptions] instance.
  CustomDatabaseOptions({

     this.pluginName,

     this.pluginAssembly,

     this.connectionString,

     this.options,
  });

      /// Gets or sets the Plugin name to search for database providers.
  @JsonKey(
    
    name: r'PluginName',
    required: false,
    includeIfNull: false,
  )


  final String? pluginName;



      /// Gets or sets the plugin assembly to search for providers.
  @JsonKey(
    
    name: r'PluginAssembly',
    required: false,
    includeIfNull: false,
  )


  final String? pluginAssembly;



      /// Gets or sets the connection string for the custom database provider.
  @JsonKey(
    
    name: r'ConnectionString',
    required: false,
    includeIfNull: false,
  )


  final String? connectionString;



      /// Gets or sets the list of extra options for the custom provider.
  @JsonKey(
    
    name: r'Options',
    required: false,
    includeIfNull: false,
  )


  final List<CustomDatabaseOption>? options;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomDatabaseOptions &&
      other.pluginName == pluginName &&
      other.pluginAssembly == pluginAssembly &&
      other.connectionString == connectionString &&
      other.options == options;

    @override
    int get hashCode =>
        pluginName.hashCode +
        pluginAssembly.hashCode +
        connectionString.hashCode +
        options.hashCode;

  factory CustomDatabaseOptions.fromJson(Map<String, dynamic> json) => _$CustomDatabaseOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$CustomDatabaseOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

