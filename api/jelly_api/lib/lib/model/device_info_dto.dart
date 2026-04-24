//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/client_capabilities_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceInfoDto {
  /// Returns a new [DeviceInfoDto] instance.
  DeviceInfoDto({

     this.name,

     this.customName,

     this.accessToken,

     this.id,

     this.lastUserName,

     this.appName,

     this.appVersion,

     this.lastUserId,

     this.dateLastActivity,

     this.capabilities,

     this.iconUrl,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the custom name.
  @JsonKey(
    
    name: r'CustomName',
    required: false,
    includeIfNull: false,
  )


  final String? customName;



      /// Gets or sets the access token.
  @JsonKey(
    
    name: r'AccessToken',
    required: false,
    includeIfNull: false,
  )


  final String? accessToken;



      /// Gets or sets the identifier.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the last name of the user.
  @JsonKey(
    
    name: r'LastUserName',
    required: false,
    includeIfNull: false,
  )


  final String? lastUserName;



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



      /// Gets or sets the last user identifier.
  @JsonKey(
    
    name: r'LastUserId',
    required: false,
    includeIfNull: false,
  )


  final String? lastUserId;



      /// Gets or sets the date last modified.
  @JsonKey(
    
    name: r'DateLastActivity',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateLastActivity;



      /// Gets or sets the capabilities.
  @JsonKey(
    
    name: r'Capabilities',
    required: false,
    includeIfNull: false,
  )


  final ClientCapabilitiesDto? capabilities;



      /// Gets or sets the icon URL.
  @JsonKey(
    
    name: r'IconUrl',
    required: false,
    includeIfNull: false,
  )


  final String? iconUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DeviceInfoDto &&
      other.name == name &&
      other.customName == customName &&
      other.accessToken == accessToken &&
      other.id == id &&
      other.lastUserName == lastUserName &&
      other.appName == appName &&
      other.appVersion == appVersion &&
      other.lastUserId == lastUserId &&
      other.dateLastActivity == dateLastActivity &&
      other.capabilities == capabilities &&
      other.iconUrl == iconUrl;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (customName == null ? 0 : customName.hashCode) +
        (accessToken == null ? 0 : accessToken.hashCode) +
        (id == null ? 0 : id.hashCode) +
        (lastUserName == null ? 0 : lastUserName.hashCode) +
        (appName == null ? 0 : appName.hashCode) +
        (appVersion == null ? 0 : appVersion.hashCode) +
        (lastUserId == null ? 0 : lastUserId.hashCode) +
        (dateLastActivity == null ? 0 : dateLastActivity.hashCode) +
        capabilities.hashCode +
        (iconUrl == null ? 0 : iconUrl.hashCode);

  factory DeviceInfoDto.fromJson(Map<String, dynamic> json) => _$DeviceInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

