//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/authentication_required_type.dart';
import 'package:radarr_api/lib/model/authentication_type.dart';
import 'package:radarr_api/lib/model/certificate_validation_type.dart';
import 'package:radarr_api/lib/model/update_mechanism.dart';
import 'package:radarr_api/lib/model/proxy_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'host_config_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HostConfigResource {
  /// Returns a new [HostConfigResource] instance.
  HostConfigResource({

     this.id,

     this.bindAddress,

     this.port,

     this.sslPort,

     this.enableSsl,

     this.launchBrowser,

     this.authenticationMethod,

     this.authenticationRequired,

     this.analyticsEnabled,

     this.username,

     this.password,

     this.passwordConfirmation,

     this.logLevel,

     this.logSizeLimit,

     this.consoleLogLevel,

     this.branch,

     this.apiKey,

     this.sslCertPath,

     this.sslCertPassword,

     this.urlBase,

     this.instanceName,

     this.applicationUrl,

     this.updateAutomatically,

     this.updateMechanism,

     this.updateScriptPath,

     this.proxyEnabled,

     this.proxyType,

     this.proxyHostname,

     this.proxyPort,

     this.proxyUsername,

     this.proxyPassword,

     this.proxyBypassFilter,

     this.proxyBypassLocalAddresses,

     this.certificateValidation,

     this.backupFolder,

     this.backupInterval,

     this.backupRetention,

     this.trustCgnatIpAddresses,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'bindAddress',
    required: false,
    includeIfNull: false,
  )


  final String? bindAddress;



  @JsonKey(
    
    name: r'port',
    required: false,
    includeIfNull: false,
  )


  final int? port;



  @JsonKey(
    
    name: r'sslPort',
    required: false,
    includeIfNull: false,
  )


  final int? sslPort;



  @JsonKey(
    
    name: r'enableSsl',
    required: false,
    includeIfNull: false,
  )


  final bool? enableSsl;



  @JsonKey(
    
    name: r'launchBrowser',
    required: false,
    includeIfNull: false,
  )


  final bool? launchBrowser;



  @JsonKey(
    
    name: r'authenticationMethod',
    required: false,
    includeIfNull: false,
  )


  final AuthenticationType? authenticationMethod;



  @JsonKey(
    
    name: r'authenticationRequired',
    required: false,
    includeIfNull: false,
  )


  final AuthenticationRequiredType? authenticationRequired;



  @JsonKey(
    
    name: r'analyticsEnabled',
    required: false,
    includeIfNull: false,
  )


  final bool? analyticsEnabled;



  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false,
  )


  final String? username;



  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false,
  )


  final String? password;



  @JsonKey(
    
    name: r'passwordConfirmation',
    required: false,
    includeIfNull: false,
  )


  final String? passwordConfirmation;



  @JsonKey(
    
    name: r'logLevel',
    required: false,
    includeIfNull: false,
  )


  final String? logLevel;



  @JsonKey(
    
    name: r'logSizeLimit',
    required: false,
    includeIfNull: false,
  )


  final int? logSizeLimit;



  @JsonKey(
    
    name: r'consoleLogLevel',
    required: false,
    includeIfNull: false,
  )


  final String? consoleLogLevel;



  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final String? branch;



  @JsonKey(
    
    name: r'apiKey',
    required: false,
    includeIfNull: false,
  )


  final String? apiKey;



  @JsonKey(
    
    name: r'sslCertPath',
    required: false,
    includeIfNull: false,
  )


  final String? sslCertPath;



  @JsonKey(
    
    name: r'sslCertPassword',
    required: false,
    includeIfNull: false,
  )


  final String? sslCertPassword;



  @JsonKey(
    
    name: r'urlBase',
    required: false,
    includeIfNull: false,
  )


  final String? urlBase;



  @JsonKey(
    
    name: r'instanceName',
    required: false,
    includeIfNull: false,
  )


  final String? instanceName;



  @JsonKey(
    
    name: r'applicationUrl',
    required: false,
    includeIfNull: false,
  )


  final String? applicationUrl;



  @JsonKey(
    
    name: r'updateAutomatically',
    required: false,
    includeIfNull: false,
  )


  final bool? updateAutomatically;



  @JsonKey(
    
    name: r'updateMechanism',
    required: false,
    includeIfNull: false,
  )


  final UpdateMechanism? updateMechanism;



  @JsonKey(
    
    name: r'updateScriptPath',
    required: false,
    includeIfNull: false,
  )


  final String? updateScriptPath;



  @JsonKey(
    
    name: r'proxyEnabled',
    required: false,
    includeIfNull: false,
  )


  final bool? proxyEnabled;



  @JsonKey(
    
    name: r'proxyType',
    required: false,
    includeIfNull: false,
  )


  final ProxyType? proxyType;



  @JsonKey(
    
    name: r'proxyHostname',
    required: false,
    includeIfNull: false,
  )


  final String? proxyHostname;



  @JsonKey(
    
    name: r'proxyPort',
    required: false,
    includeIfNull: false,
  )


  final int? proxyPort;



  @JsonKey(
    
    name: r'proxyUsername',
    required: false,
    includeIfNull: false,
  )


  final String? proxyUsername;



  @JsonKey(
    
    name: r'proxyPassword',
    required: false,
    includeIfNull: false,
  )


  final String? proxyPassword;



  @JsonKey(
    
    name: r'proxyBypassFilter',
    required: false,
    includeIfNull: false,
  )


  final String? proxyBypassFilter;



  @JsonKey(
    
    name: r'proxyBypassLocalAddresses',
    required: false,
    includeIfNull: false,
  )


  final bool? proxyBypassLocalAddresses;



  @JsonKey(
    
    name: r'certificateValidation',
    required: false,
    includeIfNull: false,
  )


  final CertificateValidationType? certificateValidation;



  @JsonKey(
    
    name: r'backupFolder',
    required: false,
    includeIfNull: false,
  )


  final String? backupFolder;



  @JsonKey(
    
    name: r'backupInterval',
    required: false,
    includeIfNull: false,
  )


  final int? backupInterval;



  @JsonKey(
    
    name: r'backupRetention',
    required: false,
    includeIfNull: false,
  )


  final int? backupRetention;



  @JsonKey(
    
    name: r'trustCgnatIpAddresses',
    required: false,
    includeIfNull: false,
  )


  final bool? trustCgnatIpAddresses;





    @override
    bool operator ==(Object other) => identical(this, other) || other is HostConfigResource &&
      other.id == id &&
      other.bindAddress == bindAddress &&
      other.port == port &&
      other.sslPort == sslPort &&
      other.enableSsl == enableSsl &&
      other.launchBrowser == launchBrowser &&
      other.authenticationMethod == authenticationMethod &&
      other.authenticationRequired == authenticationRequired &&
      other.analyticsEnabled == analyticsEnabled &&
      other.username == username &&
      other.password == password &&
      other.passwordConfirmation == passwordConfirmation &&
      other.logLevel == logLevel &&
      other.logSizeLimit == logSizeLimit &&
      other.consoleLogLevel == consoleLogLevel &&
      other.branch == branch &&
      other.apiKey == apiKey &&
      other.sslCertPath == sslCertPath &&
      other.sslCertPassword == sslCertPassword &&
      other.urlBase == urlBase &&
      other.instanceName == instanceName &&
      other.applicationUrl == applicationUrl &&
      other.updateAutomatically == updateAutomatically &&
      other.updateMechanism == updateMechanism &&
      other.updateScriptPath == updateScriptPath &&
      other.proxyEnabled == proxyEnabled &&
      other.proxyType == proxyType &&
      other.proxyHostname == proxyHostname &&
      other.proxyPort == proxyPort &&
      other.proxyUsername == proxyUsername &&
      other.proxyPassword == proxyPassword &&
      other.proxyBypassFilter == proxyBypassFilter &&
      other.proxyBypassLocalAddresses == proxyBypassLocalAddresses &&
      other.certificateValidation == certificateValidation &&
      other.backupFolder == backupFolder &&
      other.backupInterval == backupInterval &&
      other.backupRetention == backupRetention &&
      other.trustCgnatIpAddresses == trustCgnatIpAddresses;

    @override
    int get hashCode =>
        id.hashCode +
        (bindAddress == null ? 0 : bindAddress.hashCode) +
        port.hashCode +
        sslPort.hashCode +
        enableSsl.hashCode +
        launchBrowser.hashCode +
        authenticationMethod.hashCode +
        authenticationRequired.hashCode +
        analyticsEnabled.hashCode +
        (username == null ? 0 : username.hashCode) +
        (password == null ? 0 : password.hashCode) +
        (passwordConfirmation == null ? 0 : passwordConfirmation.hashCode) +
        (logLevel == null ? 0 : logLevel.hashCode) +
        logSizeLimit.hashCode +
        (consoleLogLevel == null ? 0 : consoleLogLevel.hashCode) +
        (branch == null ? 0 : branch.hashCode) +
        (apiKey == null ? 0 : apiKey.hashCode) +
        (sslCertPath == null ? 0 : sslCertPath.hashCode) +
        (sslCertPassword == null ? 0 : sslCertPassword.hashCode) +
        (urlBase == null ? 0 : urlBase.hashCode) +
        (instanceName == null ? 0 : instanceName.hashCode) +
        (applicationUrl == null ? 0 : applicationUrl.hashCode) +
        updateAutomatically.hashCode +
        updateMechanism.hashCode +
        (updateScriptPath == null ? 0 : updateScriptPath.hashCode) +
        proxyEnabled.hashCode +
        proxyType.hashCode +
        (proxyHostname == null ? 0 : proxyHostname.hashCode) +
        proxyPort.hashCode +
        (proxyUsername == null ? 0 : proxyUsername.hashCode) +
        (proxyPassword == null ? 0 : proxyPassword.hashCode) +
        (proxyBypassFilter == null ? 0 : proxyBypassFilter.hashCode) +
        proxyBypassLocalAddresses.hashCode +
        certificateValidation.hashCode +
        (backupFolder == null ? 0 : backupFolder.hashCode) +
        backupInterval.hashCode +
        backupRetention.hashCode +
        trustCgnatIpAddresses.hashCode;

  factory HostConfigResource.fromJson(Map<String, dynamic> json) => _$HostConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$HostConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

