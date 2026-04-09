//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/runtime_mode.dart';
import 'package:radarr_api/lib/model/authentication_type.dart';
import 'package:radarr_api/lib/model/update_mechanism.dart';
import 'package:radarr_api/lib/model/database_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'system_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SystemResource {
  /// Returns a new [SystemResource] instance.
  SystemResource({

     this.appName,

     this.instanceName,

     this.version,

     this.buildTime,

     this.isDebug,

     this.isProduction,

     this.isAdmin,

     this.isUserInteractive,

     this.startupPath,

     this.appData,

     this.osName,

     this.osVersion,

     this.isNetCore,

     this.isLinux,

     this.isOsx,

     this.isWindows,

     this.isDocker,

     this.mode,

     this.branch,

     this.databaseType,

     this.databaseVersion,

     this.authentication,

     this.migrationVersion,

     this.urlBase,

     this.runtimeVersion,

     this.runtimeName,

     this.startTime,

     this.packageVersion,

     this.packageAuthor,

     this.packageUpdateMechanism,

     this.packageUpdateMechanismMessage,
  });

  @JsonKey(
    
    name: r'appName',
    required: false,
    includeIfNull: false,
  )


  final String? appName;



  @JsonKey(
    
    name: r'instanceName',
    required: false,
    includeIfNull: false,
  )


  final String? instanceName;



  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false,
  )


  final String? version;



  @JsonKey(
    
    name: r'buildTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? buildTime;



  @JsonKey(
    
    name: r'isDebug',
    required: false,
    includeIfNull: false,
  )


  final bool? isDebug;



  @JsonKey(
    
    name: r'isProduction',
    required: false,
    includeIfNull: false,
  )


  final bool? isProduction;



  @JsonKey(
    
    name: r'isAdmin',
    required: false,
    includeIfNull: false,
  )


  final bool? isAdmin;



  @JsonKey(
    
    name: r'isUserInteractive',
    required: false,
    includeIfNull: false,
  )


  final bool? isUserInteractive;



  @JsonKey(
    
    name: r'startupPath',
    required: false,
    includeIfNull: false,
  )


  final String? startupPath;



  @JsonKey(
    
    name: r'appData',
    required: false,
    includeIfNull: false,
  )


  final String? appData;



  @JsonKey(
    
    name: r'osName',
    required: false,
    includeIfNull: false,
  )


  final String? osName;



  @JsonKey(
    
    name: r'osVersion',
    required: false,
    includeIfNull: false,
  )


  final String? osVersion;



  @JsonKey(
    
    name: r'isNetCore',
    required: false,
    includeIfNull: false,
  )


  final bool? isNetCore;



  @JsonKey(
    
    name: r'isLinux',
    required: false,
    includeIfNull: false,
  )


  final bool? isLinux;



  @JsonKey(
    
    name: r'isOsx',
    required: false,
    includeIfNull: false,
  )


  final bool? isOsx;



  @JsonKey(
    
    name: r'isWindows',
    required: false,
    includeIfNull: false,
  )


  final bool? isWindows;



  @JsonKey(
    
    name: r'isDocker',
    required: false,
    includeIfNull: false,
  )


  final bool? isDocker;



  @JsonKey(
    
    name: r'mode',
    required: false,
    includeIfNull: false,
  )


  final RuntimeMode? mode;



  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final String? branch;



  @JsonKey(
    
    name: r'databaseType',
    required: false,
    includeIfNull: false,
  )


  final DatabaseType? databaseType;



  @JsonKey(
    
    name: r'databaseVersion',
    required: false,
    includeIfNull: false,
  )


  final String? databaseVersion;



  @JsonKey(
    
    name: r'authentication',
    required: false,
    includeIfNull: false,
  )


  final AuthenticationType? authentication;



  @JsonKey(
    
    name: r'migrationVersion',
    required: false,
    includeIfNull: false,
  )


  final int? migrationVersion;



  @JsonKey(
    
    name: r'urlBase',
    required: false,
    includeIfNull: false,
  )


  final String? urlBase;



  @JsonKey(
    
    name: r'runtimeVersion',
    required: false,
    includeIfNull: false,
  )


  final String? runtimeVersion;



  @JsonKey(
    
    name: r'runtimeName',
    required: false,
    includeIfNull: false,
  )


  final String? runtimeName;



  @JsonKey(
    
    name: r'startTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startTime;



  @JsonKey(
    
    name: r'packageVersion',
    required: false,
    includeIfNull: false,
  )


  final String? packageVersion;



  @JsonKey(
    
    name: r'packageAuthor',
    required: false,
    includeIfNull: false,
  )


  final String? packageAuthor;



  @JsonKey(
    
    name: r'packageUpdateMechanism',
    required: false,
    includeIfNull: false,
  )


  final UpdateMechanism? packageUpdateMechanism;



  @JsonKey(
    
    name: r'packageUpdateMechanismMessage',
    required: false,
    includeIfNull: false,
  )


  final String? packageUpdateMechanismMessage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SystemResource &&
      other.appName == appName &&
      other.instanceName == instanceName &&
      other.version == version &&
      other.buildTime == buildTime &&
      other.isDebug == isDebug &&
      other.isProduction == isProduction &&
      other.isAdmin == isAdmin &&
      other.isUserInteractive == isUserInteractive &&
      other.startupPath == startupPath &&
      other.appData == appData &&
      other.osName == osName &&
      other.osVersion == osVersion &&
      other.isNetCore == isNetCore &&
      other.isLinux == isLinux &&
      other.isOsx == isOsx &&
      other.isWindows == isWindows &&
      other.isDocker == isDocker &&
      other.mode == mode &&
      other.branch == branch &&
      other.databaseType == databaseType &&
      other.databaseVersion == databaseVersion &&
      other.authentication == authentication &&
      other.migrationVersion == migrationVersion &&
      other.urlBase == urlBase &&
      other.runtimeVersion == runtimeVersion &&
      other.runtimeName == runtimeName &&
      other.startTime == startTime &&
      other.packageVersion == packageVersion &&
      other.packageAuthor == packageAuthor &&
      other.packageUpdateMechanism == packageUpdateMechanism &&
      other.packageUpdateMechanismMessage == packageUpdateMechanismMessage;

    @override
    int get hashCode =>
        (appName == null ? 0 : appName.hashCode) +
        (instanceName == null ? 0 : instanceName.hashCode) +
        (version == null ? 0 : version.hashCode) +
        buildTime.hashCode +
        isDebug.hashCode +
        isProduction.hashCode +
        isAdmin.hashCode +
        isUserInteractive.hashCode +
        (startupPath == null ? 0 : startupPath.hashCode) +
        (appData == null ? 0 : appData.hashCode) +
        (osName == null ? 0 : osName.hashCode) +
        (osVersion == null ? 0 : osVersion.hashCode) +
        isNetCore.hashCode +
        isLinux.hashCode +
        isOsx.hashCode +
        isWindows.hashCode +
        isDocker.hashCode +
        mode.hashCode +
        (branch == null ? 0 : branch.hashCode) +
        databaseType.hashCode +
        (databaseVersion == null ? 0 : databaseVersion.hashCode) +
        authentication.hashCode +
        migrationVersion.hashCode +
        (urlBase == null ? 0 : urlBase.hashCode) +
        (runtimeVersion == null ? 0 : runtimeVersion.hashCode) +
        (runtimeName == null ? 0 : runtimeName.hashCode) +
        startTime.hashCode +
        (packageVersion == null ? 0 : packageVersion.hashCode) +
        (packageAuthor == null ? 0 : packageAuthor.hashCode) +
        packageUpdateMechanism.hashCode +
        (packageUpdateMechanismMessage == null ? 0 : packageUpdateMechanismMessage.hashCode);

  factory SystemResource.fromJson(Map<String, dynamic> json) => _$SystemResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SystemResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

