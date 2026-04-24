//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/lyric_line.dart';
import 'package:jelly_api/lib/model/lyric_metadata.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lyric_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LyricDto {
  /// Returns a new [LyricDto] instance.
  LyricDto({

     this.metadata,

     this.lyrics,
  });

      /// Gets or sets Metadata for the lyrics.
  @JsonKey(
    
    name: r'Metadata',
    required: false,
    includeIfNull: false,
  )


  final LyricMetadata? metadata;



      /// Gets or sets a collection of individual lyric lines.
  @JsonKey(
    
    name: r'Lyrics',
    required: false,
    includeIfNull: false,
  )


  final List<LyricLine>? lyrics;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LyricDto &&
      other.metadata == metadata &&
      other.lyrics == lyrics;

    @override
    int get hashCode =>
        metadata.hashCode +
        lyrics.hashCode;

  factory LyricDto.fromJson(Map<String, dynamic> json) => _$LyricDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LyricDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

