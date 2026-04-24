//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quick_connect_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickConnectResult {
  /// Returns a new [QuickConnectResult] instance.
  QuickConnectResult({

     this.authenticated,

     this.secret,

     this.code,

     this.deviceId,

     this.deviceName,

     this.appName,

     this.appVersion,

     this.dateAdded,
  });

      /// Gets or sets a value indicating whether this request is authorized.
  @JsonKey(
    
    name: r'Authenticated',
    required: false,
    includeIfNull: false,
  )


  final bool? authenticated;



      /// Gets the secret value used to uniquely identify this request. Can be used to retrieve authentication information.
  @JsonKey(
    
    name: r'Secret',
    required: false,
    includeIfNull: false,
  )


  final String? secret;



      /// Gets the user facing code used so the user can quickly differentiate this request from others.
  @JsonKey(
    
    name: r'Code',
    required: false,
    includeIfNull: false,
  )


  final String? code;



      /// Gets the requesting device id.
  @JsonKey(
    
    name: r'DeviceId',
    required: false,
    includeIfNull: false,
  )


  final String? deviceId;



      /// Gets the requesting device name.
  @JsonKey(
    
    name: r'DeviceName',
    required: false,
    includeIfNull: false,
  )


  final String? deviceName;



      /// Gets the requesting app name.
  @JsonKey(
    
    name: r'AppName',
    required: false,
    includeIfNull: false,
  )


  final String? appName;



      /// Gets the requesting app version.
  @JsonKey(
    
    name: r'AppVersion',
    required: false,
    includeIfNull: false,
  )


  final String? appVersion;



      /// Gets or sets the DateTime that this request was created.
  @JsonKey(
    
    name: r'DateAdded',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateAdded;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QuickConnectResult &&
      other.authenticated == authenticated &&
      other.secret == secret &&
      other.code == code &&
      other.deviceId == deviceId &&
      other.deviceName == deviceName &&
      other.appName == appName &&
      other.appVersion == appVersion &&
      other.dateAdded == dateAdded;

    @override
    int get hashCode =>
        authenticated.hashCode +
        secret.hashCode +
        code.hashCode +
        deviceId.hashCode +
        deviceName.hashCode +
        appName.hashCode +
        appVersion.hashCode +
        dateAdded.hashCode;

  factory QuickConnectResult.fromJson(Map<String, dynamic> json) => _$QuickConnectResultFromJson(json);

  Map<String, dynamic> toJson() => _$QuickConnectResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

