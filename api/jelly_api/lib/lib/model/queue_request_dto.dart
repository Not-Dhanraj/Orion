//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/group_queue_mode.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'queue_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueueRequestDto {
  /// Returns a new [QueueRequestDto] instance.
  QueueRequestDto({

     this.itemIds,

     this.mode,
  });

      /// Gets or sets the items to enqueue.
  @JsonKey(
    
    name: r'ItemIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? itemIds;



      /// Enum GroupQueueMode.
  @JsonKey(
    
    name: r'Mode',
    required: false,
    includeIfNull: false,
  )


  final GroupQueueMode? mode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QueueRequestDto &&
      other.itemIds == itemIds &&
      other.mode == mode;

    @override
    int get hashCode =>
        itemIds.hashCode +
        mode.hashCode;

  factory QueueRequestDto.fromJson(Map<String, dynamic> json) => _$QueueRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$QueueRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

