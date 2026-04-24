//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/user_item_data_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_data_change_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserDataChangeInfo {
  /// Returns a new [UserDataChangeInfo] instance.
  UserDataChangeInfo({

     this.userId,

     this.userDataList,
  });

      /// Gets or sets the user id.
  @JsonKey(
    
    name: r'UserId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Gets or sets the user data list.
  @JsonKey(
    
    name: r'UserDataList',
    required: false,
    includeIfNull: false,
  )


  final List<UserItemDataDto>? userDataList;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserDataChangeInfo &&
      other.userId == userId &&
      other.userDataList == userDataList;

    @override
    int get hashCode =>
        userId.hashCode +
        userDataList.hashCode;

  factory UserDataChangeInfo.fromJson(Map<String, dynamic> json) => _$UserDataChangeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataChangeInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

