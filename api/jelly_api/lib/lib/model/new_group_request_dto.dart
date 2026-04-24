//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_group_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NewGroupRequestDto {
  /// Returns a new [NewGroupRequestDto] instance.
  NewGroupRequestDto({

     this.groupName,
  });

      /// Gets or sets the group name.
  @JsonKey(
    
    name: r'GroupName',
    required: false,
    includeIfNull: false,
  )


  final String? groupName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NewGroupRequestDto &&
      other.groupName == groupName;

    @override
    int get hashCode =>
        groupName.hashCode;

  factory NewGroupRequestDto.fromJson(Map<String, dynamic> json) => _$NewGroupRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NewGroupRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

