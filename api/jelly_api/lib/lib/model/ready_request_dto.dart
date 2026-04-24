//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ready_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReadyRequestDto {
  /// Returns a new [ReadyRequestDto] instance.
  ReadyRequestDto({

     this.when_,

     this.positionTicks,

     this.isPlaying,

     this.playlistItemId,
  });

      /// Gets or sets when the request has been made by the client.
  @JsonKey(
    
    name: r'When',
    required: false,
    includeIfNull: false,
  )


  final DateTime? when_;



      /// Gets or sets the position ticks.
  @JsonKey(
    
    name: r'PositionTicks',
    required: false,
    includeIfNull: false,
  )


  final int? positionTicks;



      /// Gets or sets a value indicating whether the client playback is unpaused.
  @JsonKey(
    
    name: r'IsPlaying',
    required: false,
    includeIfNull: false,
  )


  final bool? isPlaying;



      /// Gets or sets the playlist item identifier of the playing item.
  @JsonKey(
    
    name: r'PlaylistItemId',
    required: false,
    includeIfNull: false,
  )


  final String? playlistItemId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReadyRequestDto &&
      other.when_ == when_ &&
      other.positionTicks == positionTicks &&
      other.isPlaying == isPlaying &&
      other.playlistItemId == playlistItemId;

    @override
    int get hashCode =>
        when_.hashCode +
        positionTicks.hashCode +
        isPlaying.hashCode +
        playlistItemId.hashCode;

  factory ReadyRequestDto.fromJson(Map<String, dynamic> json) => _$ReadyRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReadyRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

