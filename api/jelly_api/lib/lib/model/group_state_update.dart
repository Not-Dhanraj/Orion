//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/group_state_type.dart';
import 'package:jelly_api/lib/model/playback_request_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_state_update.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GroupStateUpdate {
  /// Returns a new [GroupStateUpdate] instance.
  GroupStateUpdate({

     this.state,

     this.reason,
  });

      /// Gets the state of the group.
  @JsonKey(
    
    name: r'State',
    required: false,
    includeIfNull: false,
  )


  final GroupStateType? state;



      /// Gets the reason of the state change.
  @JsonKey(
    
    name: r'Reason',
    required: false,
    includeIfNull: false,
  )


  final PlaybackRequestType? reason;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GroupStateUpdate &&
      other.state == state &&
      other.reason == reason;

    @override
    int get hashCode =>
        state.hashCode +
        reason.hashCode;

  factory GroupStateUpdate.fromJson(Map<String, dynamic> json) => _$GroupStateUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$GroupStateUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

