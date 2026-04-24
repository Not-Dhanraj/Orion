//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'join_group_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class JoinGroupRequestDto {
  /// Returns a new [JoinGroupRequestDto] instance.
  JoinGroupRequestDto({

     this.groupId,
  });

      /// Gets or sets the group identifier.
  @JsonKey(
    
    name: r'GroupId',
    required: false,
    includeIfNull: false,
  )


  final String? groupId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is JoinGroupRequestDto &&
      other.groupId == groupId;

    @override
    int get hashCode =>
        groupId.hashCode;

  factory JoinGroupRequestDto.fromJson(Map<String, dynamic> json) => _$JoinGroupRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$JoinGroupRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

