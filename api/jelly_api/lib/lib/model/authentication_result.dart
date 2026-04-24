//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_info_dto.dart';
import 'package:jelly_api/lib/model/user_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'authentication_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AuthenticationResult {
  /// Returns a new [AuthenticationResult] instance.
  AuthenticationResult({

     this.user,

     this.sessionInfo,

     this.accessToken,

     this.serverId,
  });

      /// Class UserDto.
  @JsonKey(
    
    name: r'User',
    required: false,
    includeIfNull: false,
  )


  final UserDto? user;



      /// Session info DTO.
  @JsonKey(
    
    name: r'SessionInfo',
    required: false,
    includeIfNull: false,
  )


  final SessionInfoDto? sessionInfo;



      /// Gets or sets the access token.
  @JsonKey(
    
    name: r'AccessToken',
    required: false,
    includeIfNull: false,
  )


  final String? accessToken;



      /// Gets or sets the server id.
  @JsonKey(
    
    name: r'ServerId',
    required: false,
    includeIfNull: false,
  )


  final String? serverId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AuthenticationResult &&
      other.user == user &&
      other.sessionInfo == sessionInfo &&
      other.accessToken == accessToken &&
      other.serverId == serverId;

    @override
    int get hashCode =>
        (user == null ? 0 : user.hashCode) +
        (sessionInfo == null ? 0 : sessionInfo.hashCode) +
        (accessToken == null ? 0 : accessToken.hashCode) +
        (serverId == null ? 0 : serverId.hashCode);

  factory AuthenticationResult.fromJson(Map<String, dynamic> json) => _$AuthenticationResultFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

