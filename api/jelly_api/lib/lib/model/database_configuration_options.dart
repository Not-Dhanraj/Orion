//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/custom_database_options.dart';
import 'package:jelly_api/lib/model/database_locking_behavior_types.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'database_configuration_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DatabaseConfigurationOptions {
  /// Returns a new [DatabaseConfigurationOptions] instance.
  DatabaseConfigurationOptions({

     this.databaseType,

     this.customProviderOptions,

     this.lockingBehavior,
  });

      /// Gets or Sets the type of database jellyfin should use.
  @JsonKey(
    
    name: r'DatabaseType',
    required: false,
    includeIfNull: false,
  )


  final String? databaseType;



      /// Gets or sets the options required to use a custom database provider.
  @JsonKey(
    
    name: r'CustomProviderOptions',
    required: false,
    includeIfNull: false,
  )


  final CustomDatabaseOptions? customProviderOptions;



      /// Gets or Sets the kind of locking behavior jellyfin should perform. Possible options are \"NoLock\", \"Pessimistic\", \"Optimistic\".  Defaults to \"NoLock\".
  @JsonKey(
    
    name: r'LockingBehavior',
    required: false,
    includeIfNull: false,
  )


  final DatabaseLockingBehaviorTypes? lockingBehavior;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DatabaseConfigurationOptions &&
      other.databaseType == databaseType &&
      other.customProviderOptions == customProviderOptions &&
      other.lockingBehavior == lockingBehavior;

    @override
    int get hashCode =>
        databaseType.hashCode +
        (customProviderOptions == null ? 0 : customProviderOptions.hashCode) +
        lockingBehavior.hashCode;

  factory DatabaseConfigurationOptions.fromJson(Map<String, dynamic> json) => _$DatabaseConfigurationOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseConfigurationOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

