//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lyric_line_cue.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LyricLineCue {
  /// Returns a new [LyricLineCue] instance.
  LyricLineCue({

     this.position,

     this.endPosition,

     this.start,

     this.end,
  });

      /// Gets the start character index of the cue.
  @JsonKey(
    
    name: r'Position',
    required: false,
    includeIfNull: false,
  )


  final int? position;



      /// Gets the end character index of the cue.
  @JsonKey(
    
    name: r'EndPosition',
    required: false,
    includeIfNull: false,
  )


  final int? endPosition;



      /// Gets the timestamp the lyric is synced to in ticks.
  @JsonKey(
    
    name: r'Start',
    required: false,
    includeIfNull: false,
  )


  final int? start;



      /// Gets the end timestamp the lyric is synced to in ticks.
  @JsonKey(
    
    name: r'End',
    required: false,
    includeIfNull: false,
  )


  final int? end;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LyricLineCue &&
      other.position == position &&
      other.endPosition == endPosition &&
      other.start == start &&
      other.end == end;

    @override
    int get hashCode =>
        position.hashCode +
        endPosition.hashCode +
        start.hashCode +
        (end == null ? 0 : end.hashCode);

  factory LyricLineCue.fromJson(Map<String, dynamic> json) => _$LyricLineCueFromJson(json);

  Map<String, dynamic> toJson() => _$LyricLineCueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

