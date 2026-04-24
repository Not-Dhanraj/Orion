//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timer_event_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TimerEventInfo {
  /// Returns a new [TimerEventInfo] instance.
  TimerEventInfo({

     this.id,

     this.programId,
  });

  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'ProgramId',
    required: false,
    includeIfNull: false,
  )


  final String? programId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TimerEventInfo &&
      other.id == id &&
      other.programId == programId;

    @override
    int get hashCode =>
        id.hashCode +
        (programId == null ? 0 : programId.hashCode);

  factory TimerEventInfo.fromJson(Map<String, dynamic> json) => _$TimerEventInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TimerEventInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

