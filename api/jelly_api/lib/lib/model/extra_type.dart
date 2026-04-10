//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ExtraType {
      @JsonValue(r'Unknown')
      unknown(r'Unknown'),
      @JsonValue(r'Clip')
      clip(r'Clip'),
      @JsonValue(r'Trailer')
      trailer(r'Trailer'),
      @JsonValue(r'BehindTheScenes')
      behindTheScenes(r'BehindTheScenes'),
      @JsonValue(r'DeletedScene')
      deletedScene(r'DeletedScene'),
      @JsonValue(r'Interview')
      interview(r'Interview'),
      @JsonValue(r'Scene')
      scene(r'Scene'),
      @JsonValue(r'Sample')
      sample(r'Sample'),
      @JsonValue(r'ThemeSong')
      themeSong(r'ThemeSong'),
      @JsonValue(r'ThemeVideo')
      themeVideo(r'ThemeVideo'),
      @JsonValue(r'Featurette')
      featurette(r'Featurette'),
      @JsonValue(r'Short')
      short(r'Short');

  const ExtraType(this.value);

  final String value;

  @override
  String toString() => value;
}
