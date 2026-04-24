//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'session_user_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SessionUserInfo {
  /// Returns a new [SessionUserInfo] instance.
  SessionUserInfo({

     this.userId,

     this.userName,
  });

      /// Gets or sets the user identifier.
  @JsonKey(
    
    name: r'UserId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Gets or sets the name of the user.
  @JsonKey(
    
    name: r'UserName',
    required: false,
    includeIfNull: false,
  )


  final String? userName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SessionUserInfo &&
      other.userId == userId &&
      other.userName == userName;

    @override
    int get hashCode =>
        userId.hashCode +
        (userName == null ? 0 : userName.hashCode);

  factory SessionUserInfo.fromJson(Map<String, dynamic> json) => _$SessionUserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SessionUserInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

