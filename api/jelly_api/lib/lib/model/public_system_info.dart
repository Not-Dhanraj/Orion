//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'public_system_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PublicSystemInfo {
  /// Returns a new [PublicSystemInfo] instance.
  PublicSystemInfo({

     this.localAddress,

     this.serverName,

     this.version,

     this.productName,

     this.operatingSystem,

     this.id,

     this.startupWizardCompleted,
  });

      /// Gets or sets the local address.
  @JsonKey(
    
    name: r'LocalAddress',
    required: false,
    includeIfNull: false,
  )


  final String? localAddress;



      /// Gets or sets the name of the server.
  @JsonKey(
    
    name: r'ServerName',
    required: false,
    includeIfNull: false,
  )


  final String? serverName;



      /// Gets or sets the server version.
  @JsonKey(
    
    name: r'Version',
    required: false,
    includeIfNull: false,
  )


  final String? version;



      /// Gets or sets the product name. This is the AssemblyProduct name.
  @JsonKey(
    
    name: r'ProductName',
    required: false,
    includeIfNull: false,
  )


  final String? productName;



      /// Gets or sets the operating system.
  @Deprecated('operatingSystem has been deprecated')
  @JsonKey(
    
    name: r'OperatingSystem',
    required: false,
    includeIfNull: false,
  )


  final String? operatingSystem;



      /// Gets or sets the id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets a value indicating whether the startup wizard is completed.
  @JsonKey(
    
    name: r'StartupWizardCompleted',
    required: false,
    includeIfNull: false,
  )


  final bool? startupWizardCompleted;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PublicSystemInfo &&
      other.localAddress == localAddress &&
      other.serverName == serverName &&
      other.version == version &&
      other.productName == productName &&
      other.operatingSystem == operatingSystem &&
      other.id == id &&
      other.startupWizardCompleted == startupWizardCompleted;

    @override
    int get hashCode =>
        (localAddress == null ? 0 : localAddress.hashCode) +
        (serverName == null ? 0 : serverName.hashCode) +
        (version == null ? 0 : version.hashCode) +
        (productName == null ? 0 : productName.hashCode) +
        (operatingSystem == null ? 0 : operatingSystem.hashCode) +
        (id == null ? 0 : id.hashCode) +
        (startupWizardCompleted == null ? 0 : startupWizardCompleted.hashCode);

  factory PublicSystemInfo.fromJson(Map<String, dynamic> json) => _$PublicSystemInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PublicSystemInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

