//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/group_state_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GroupInfoDto {
  /// Returns a new [GroupInfoDto] instance.
  GroupInfoDto({

     this.groupId,

     this.groupName,

     this.state,

     this.participants,

     this.lastUpdatedAt,
  });

      /// Gets the group identifier.
  @JsonKey(
    
    name: r'GroupId',
    required: false,
    includeIfNull: false,
  )


  final String? groupId;



      /// Gets the group name.
  @JsonKey(
    
    name: r'GroupName',
    required: false,
    includeIfNull: false,
  )


  final String? groupName;



      /// Gets the group state.
  @JsonKey(
    
    name: r'State',
    required: false,
    includeIfNull: false,
  )


  final GroupStateType? state;



      /// Gets the participants.
  @JsonKey(
    
    name: r'Participants',
    required: false,
    includeIfNull: false,
  )


  final List<String>? participants;



      /// Gets the date when this DTO has been created.
  @JsonKey(
    
    name: r'LastUpdatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastUpdatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GroupInfoDto &&
      other.groupId == groupId &&
      other.groupName == groupName &&
      other.state == state &&
      other.participants == participants &&
      other.lastUpdatedAt == lastUpdatedAt;

    @override
    int get hashCode =>
        groupId.hashCode +
        groupName.hashCode +
        state.hashCode +
        participants.hashCode +
        lastUpdatedAt.hashCode;

  factory GroupInfoDto.fromJson(Map<String, dynamic> json) => _$GroupInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GroupInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

