//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/media_segment_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_segment_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaSegmentDto {
  /// Returns a new [MediaSegmentDto] instance.
  MediaSegmentDto({

     this.id,

     this.itemId,

     this.type = MediaSegmentType.unknown,

     this.startTicks,

     this.endTicks,
  });

      /// Gets or sets the id of the media segment.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the id of the associated item.
  @JsonKey(
    
    name: r'ItemId',
    required: false,
    includeIfNull: false,
  )


  final String? itemId;



      /// Gets or sets the type of content this segment defines.
  @JsonKey(
    defaultValue: MediaSegmentType.unknown,
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final MediaSegmentType? type;



      /// Gets or sets the start of the segment.
  @JsonKey(
    
    name: r'StartTicks',
    required: false,
    includeIfNull: false,
  )


  final int? startTicks;



      /// Gets or sets the end of the segment.
  @JsonKey(
    
    name: r'EndTicks',
    required: false,
    includeIfNull: false,
  )


  final int? endTicks;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaSegmentDto &&
      other.id == id &&
      other.itemId == itemId &&
      other.type == type &&
      other.startTicks == startTicks &&
      other.endTicks == endTicks;

    @override
    int get hashCode =>
        id.hashCode +
        itemId.hashCode +
        type.hashCode +
        startTicks.hashCode +
        endTicks.hashCode;

  factory MediaSegmentDto.fromJson(Map<String, dynamic> json) => _$MediaSegmentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MediaSegmentDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

