//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'play_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlayRequestDto {
  /// Returns a new [PlayRequestDto] instance.
  PlayRequestDto({

     this.playingQueue,

     this.playingItemPosition,

     this.startPositionTicks,
  });

      /// Gets or sets the playing queue.
  @JsonKey(
    
    name: r'PlayingQueue',
    required: false,
    includeIfNull: false,
  )


  final List<String>? playingQueue;



      /// Gets or sets the position of the playing item in the queue.
  @JsonKey(
    
    name: r'PlayingItemPosition',
    required: false,
    includeIfNull: false,
  )


  final int? playingItemPosition;



      /// Gets or sets the start position ticks.
  @JsonKey(
    
    name: r'StartPositionTicks',
    required: false,
    includeIfNull: false,
  )


  final int? startPositionTicks;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlayRequestDto &&
      other.playingQueue == playingQueue &&
      other.playingItemPosition == playingItemPosition &&
      other.startPositionTicks == startPositionTicks;

    @override
    int get hashCode =>
        playingQueue.hashCode +
        playingItemPosition.hashCode +
        startPositionTicks.hashCode;

  factory PlayRequestDto.fromJson(Map<String, dynamic> json) => _$PlayRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PlayRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

