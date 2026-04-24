//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'authentication_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AuthenticationInfo {
  /// Returns a new [AuthenticationInfo] instance.
  AuthenticationInfo({

     this.id,

     this.accessToken,

     this.deviceId,

     this.appName,

     this.appVersion,

     this.deviceName,

     this.userId,

     this.isActive,

     this.dateCreated,

     this.dateRevoked,

     this.dateLastActivity,

     this.userName,
  });

      /// Gets or sets the identifier.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



      /// Gets or sets the access token.
  @JsonKey(
    
    name: r'AccessToken',
    required: false,
    includeIfNull: false,
  )


  final String? accessToken;



      /// Gets or sets the device identifier.
  @JsonKey(
    
    name: r'DeviceId',
    required: false,
    includeIfNull: false,
  )


  final String? deviceId;



      /// Gets or sets the name of the application.
  @JsonKey(
    
    name: r'AppName',
    required: false,
    includeIfNull: false,
  )


  final String? appName;



      /// Gets or sets the application version.
  @JsonKey(
    
    name: r'AppVersion',
    required: false,
    includeIfNull: false,
  )


  final String? appVersion;



      /// Gets or sets the name of the device.
  @JsonKey(
    
    name: r'DeviceName',
    required: false,
    includeIfNull: false,
  )


  final String? deviceName;



      /// Gets or sets the user identifier.
  @JsonKey(
    
    name: r'UserId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Gets or sets a value indicating whether this instance is active.
  @JsonKey(
    
    name: r'IsActive',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// Gets or sets the date created.
  @JsonKey(
    
    name: r'DateCreated',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateCreated;



      /// Gets or sets the date revoked.
  @JsonKey(
    
    name: r'DateRevoked',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateRevoked;



  @JsonKey(
    
    name: r'DateLastActivity',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateLastActivity;



  @JsonKey(
    
    name: r'UserName',
    required: false,
    includeIfNull: false,
  )


  final String? userName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AuthenticationInfo &&
      other.id == id &&
      other.accessToken == accessToken &&
      other.deviceId == deviceId &&
      other.appName == appName &&
      other.appVersion == appVersion &&
      other.deviceName == deviceName &&
      other.userId == userId &&
      other.isActive == isActive &&
      other.dateCreated == dateCreated &&
      other.dateRevoked == dateRevoked &&
      other.dateLastActivity == dateLastActivity &&
      other.userName == userName;

    @override
    int get hashCode =>
        id.hashCode +
        (accessToken == null ? 0 : accessToken.hashCode) +
        (deviceId == null ? 0 : deviceId.hashCode) +
        (appName == null ? 0 : appName.hashCode) +
        (appVersion == null ? 0 : appVersion.hashCode) +
        (deviceName == null ? 0 : deviceName.hashCode) +
        userId.hashCode +
        isActive.hashCode +
        dateCreated.hashCode +
        (dateRevoked == null ? 0 : dateRevoked.hashCode) +
        dateLastActivity.hashCode +
        (userName == null ? 0 : userName.hashCode);

  factory AuthenticationInfo.fromJson(Map<String, dynamic> json) => _$AuthenticationInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

