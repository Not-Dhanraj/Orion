//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/lyric_line_cue.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lyric_line.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LyricLine {
  /// Returns a new [LyricLine] instance.
  LyricLine({

     this.text,

     this.start,

     this.cues,
  });

      /// Gets the text of this lyric line.
  @JsonKey(
    
    name: r'Text',
    required: false,
    includeIfNull: false,
  )


  final String? text;



      /// Gets the start time in ticks.
  @JsonKey(
    
    name: r'Start',
    required: false,
    includeIfNull: false,
  )


  final int? start;



      /// Gets the time-aligned cues for the song's lyrics.
  @JsonKey(
    
    name: r'Cues',
    required: false,
    includeIfNull: false,
  )


  final List<LyricLineCue>? cues;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LyricLine &&
      other.text == text &&
      other.start == start &&
      other.cues == cues;

    @override
    int get hashCode =>
        text.hashCode +
        (start == null ? 0 : start.hashCode) +
        (cues == null ? 0 : cues.hashCode);

  factory LyricLine.fromJson(Map<String, dynamic> json) => _$LyricLineFromJson(json);

  Map<String, dynamic> toJson() => _$LyricLineToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

