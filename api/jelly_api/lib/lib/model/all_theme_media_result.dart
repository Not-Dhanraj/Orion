//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/theme_media_result.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'all_theme_media_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AllThemeMediaResult {
  /// Returns a new [AllThemeMediaResult] instance.
  AllThemeMediaResult({

     this.themeVideosResult,

     this.themeSongsResult,

     this.soundtrackSongsResult,
  });

      /// Class ThemeMediaResult.
  @JsonKey(
    
    name: r'ThemeVideosResult',
    required: false,
    includeIfNull: false,
  )


  final ThemeMediaResult? themeVideosResult;



      /// Class ThemeMediaResult.
  @JsonKey(
    
    name: r'ThemeSongsResult',
    required: false,
    includeIfNull: false,
  )


  final ThemeMediaResult? themeSongsResult;



      /// Class ThemeMediaResult.
  @JsonKey(
    
    name: r'SoundtrackSongsResult',
    required: false,
    includeIfNull: false,
  )


  final ThemeMediaResult? soundtrackSongsResult;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AllThemeMediaResult &&
      other.themeVideosResult == themeVideosResult &&
      other.themeSongsResult == themeSongsResult &&
      other.soundtrackSongsResult == soundtrackSongsResult;

    @override
    int get hashCode =>
        (themeVideosResult == null ? 0 : themeVideosResult.hashCode) +
        (themeSongsResult == null ? 0 : themeSongsResult.hashCode) +
        (soundtrackSongsResult == null ? 0 : soundtrackSongsResult.hashCode);

  factory AllThemeMediaResult.fromJson(Map<String, dynamic> json) => _$AllThemeMediaResultFromJson(json);

  Map<String, dynamic> toJson() => _$AllThemeMediaResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

