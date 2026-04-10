//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/user_configuration.dart';
import 'package:jelly_api/lib/model/user_policy.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserDto {
  /// Returns a new [UserDto] instance.
  UserDto({

     this.name,

     this.serverId,

     this.serverName,

     this.id,

     this.primaryImageTag,

     this.hasPassword,

     this.hasConfiguredPassword,

     this.hasConfiguredEasyPassword,

     this.enableAutoLogin,

     this.lastLoginDate,

     this.lastActivityDate,

     this.configuration,

     this.policy,

     this.primaryImageAspectRatio,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the server identifier.
  @JsonKey(
    
    name: r'ServerId',
    required: false,
    includeIfNull: false,
  )


  final String? serverId;



      /// Gets or sets the name of the server.  This is not used by the server and is for client-side usage only.
  @JsonKey(
    
    name: r'ServerName',
    required: false,
    includeIfNull: false,
  )


  final String? serverName;



      /// Gets or sets the id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the primary image tag.
  @JsonKey(
    
    name: r'PrimaryImageTag',
    required: false,
    includeIfNull: false,
  )


  final String? primaryImageTag;



      /// Gets or sets a value indicating whether this instance has password.
  @JsonKey(
    
    name: r'HasPassword',
    required: false,
    includeIfNull: false,
  )


  final bool? hasPassword;



      /// Gets or sets a value indicating whether this instance has configured password.
  @JsonKey(
    
    name: r'HasConfiguredPassword',
    required: false,
    includeIfNull: false,
  )


  final bool? hasConfiguredPassword;



      /// Gets or sets a value indicating whether this instance has configured easy password.
  @Deprecated('hasConfiguredEasyPassword has been deprecated')
  @JsonKey(
    
    name: r'HasConfiguredEasyPassword',
    required: false,
    includeIfNull: false,
  )


  final bool? hasConfiguredEasyPassword;



      /// Gets or sets whether async login is enabled or not.
  @JsonKey(
    
    name: r'EnableAutoLogin',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAutoLogin;



      /// Gets or sets the last login date.
  @JsonKey(
    
    name: r'LastLoginDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastLoginDate;



      /// Gets or sets the last activity date.
  @JsonKey(
    
    name: r'LastActivityDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastActivityDate;



      /// Gets or sets the configuration.
  @JsonKey(
    
    name: r'Configuration',
    required: false,
    includeIfNull: false,
  )


  final UserConfiguration? configuration;



      /// Gets or sets the policy.
  @JsonKey(
    
    name: r'Policy',
    required: false,
    includeIfNull: false,
  )


  final UserPolicy? policy;



      /// Gets or sets the primary image aspect ratio.
  @JsonKey(
    
    name: r'PrimaryImageAspectRatio',
    required: false,
    includeIfNull: false,
  )


  final double? primaryImageAspectRatio;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserDto &&
      other.name == name &&
      other.serverId == serverId &&
      other.serverName == serverName &&
      other.id == id &&
      other.primaryImageTag == primaryImageTag &&
      other.hasPassword == hasPassword &&
      other.hasConfiguredPassword == hasConfiguredPassword &&
      other.hasConfiguredEasyPassword == hasConfiguredEasyPassword &&
      other.enableAutoLogin == enableAutoLogin &&
      other.lastLoginDate == lastLoginDate &&
      other.lastActivityDate == lastActivityDate &&
      other.configuration == configuration &&
      other.policy == policy &&
      other.primaryImageAspectRatio == primaryImageAspectRatio;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (serverId == null ? 0 : serverId.hashCode) +
        (serverName == null ? 0 : serverName.hashCode) +
        id.hashCode +
        (primaryImageTag == null ? 0 : primaryImageTag.hashCode) +
        hasPassword.hashCode +
        hasConfiguredPassword.hashCode +
        hasConfiguredEasyPassword.hashCode +
        (enableAutoLogin == null ? 0 : enableAutoLogin.hashCode) +
        (lastLoginDate == null ? 0 : lastLoginDate.hashCode) +
        (lastActivityDate == null ? 0 : lastActivityDate.hashCode) +
        (configuration == null ? 0 : configuration.hashCode) +
        (policy == null ? 0 : policy.hashCode) +
        (primaryImageAspectRatio == null ? 0 : primaryImageAspectRatio.hashCode);

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

