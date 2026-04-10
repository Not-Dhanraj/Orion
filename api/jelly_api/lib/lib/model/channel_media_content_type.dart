//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ChannelMediaContentType {
      @JsonValue(r'Clip')
      clip(r'Clip'),
      @JsonValue(r'Podcast')
      podcast(r'Podcast'),
      @JsonValue(r'Trailer')
      trailer(r'Trailer'),
      @JsonValue(r'Movie')
      movie(r'Movie'),
      @JsonValue(r'Episode')
      episode(r'Episode'),
      @JsonValue(r'Song')
      song(r'Song'),
      @JsonValue(r'MovieExtra')
      movieExtra(r'MovieExtra'),
      @JsonValue(r'TvExtra')
      tvExtra(r'TvExtra');

  const ChannelMediaContentType(this.value);

  final String value;

  @override
  String toString() => value;
}
