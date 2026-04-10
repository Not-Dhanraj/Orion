//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subtitle_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SubtitleOptions {
  /// Returns a new [SubtitleOptions] instance.
  SubtitleOptions({

     this.skipIfEmbeddedSubtitlesPresent,

     this.skipIfAudioTrackMatches,

     this.downloadLanguages,

     this.downloadMovieSubtitles,

     this.downloadEpisodeSubtitles,

     this.openSubtitlesUsername,

     this.openSubtitlesPasswordHash,

     this.isOpenSubtitleVipAccount,

     this.requirePerfectMatch,
  });

  @JsonKey(
    
    name: r'SkipIfEmbeddedSubtitlesPresent',
    required: false,
    includeIfNull: false,
  )


  final bool? skipIfEmbeddedSubtitlesPresent;



  @JsonKey(
    
    name: r'SkipIfAudioTrackMatches',
    required: false,
    includeIfNull: false,
  )


  final bool? skipIfAudioTrackMatches;



  @JsonKey(
    
    name: r'DownloadLanguages',
    required: false,
    includeIfNull: false,
  )


  final List<String>? downloadLanguages;



  @JsonKey(
    
    name: r'DownloadMovieSubtitles',
    required: false,
    includeIfNull: false,
  )


  final bool? downloadMovieSubtitles;



  @JsonKey(
    
    name: r'DownloadEpisodeSubtitles',
    required: false,
    includeIfNull: false,
  )


  final bool? downloadEpisodeSubtitles;



  @JsonKey(
    
    name: r'OpenSubtitlesUsername',
    required: false,
    includeIfNull: false,
  )


  final String? openSubtitlesUsername;



  @JsonKey(
    
    name: r'OpenSubtitlesPasswordHash',
    required: false,
    includeIfNull: false,
  )


  final String? openSubtitlesPasswordHash;



  @JsonKey(
    
    name: r'IsOpenSubtitleVipAccount',
    required: false,
    includeIfNull: false,
  )


  final bool? isOpenSubtitleVipAccount;



  @JsonKey(
    
    name: r'RequirePerfectMatch',
    required: false,
    includeIfNull: false,
  )


  final bool? requirePerfectMatch;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SubtitleOptions &&
      other.skipIfEmbeddedSubtitlesPresent == skipIfEmbeddedSubtitlesPresent &&
      other.skipIfAudioTrackMatches == skipIfAudioTrackMatches &&
      other.downloadLanguages == downloadLanguages &&
      other.downloadMovieSubtitles == downloadMovieSubtitles &&
      other.downloadEpisodeSubtitles == downloadEpisodeSubtitles &&
      other.openSubtitlesUsername == openSubtitlesUsername &&
      other.openSubtitlesPasswordHash == openSubtitlesPasswordHash &&
      other.isOpenSubtitleVipAccount == isOpenSubtitleVipAccount &&
      other.requirePerfectMatch == requirePerfectMatch;

    @override
    int get hashCode =>
        skipIfEmbeddedSubtitlesPresent.hashCode +
        skipIfAudioTrackMatches.hashCode +
        (downloadLanguages == null ? 0 : downloadLanguages.hashCode) +
        downloadMovieSubtitles.hashCode +
        downloadEpisodeSubtitles.hashCode +
        (openSubtitlesUsername == null ? 0 : openSubtitlesUsername.hashCode) +
        (openSubtitlesPasswordHash == null ? 0 : openSubtitlesPasswordHash.hashCode) +
        isOpenSubtitleVipAccount.hashCode +
        requirePerfectMatch.hashCode;

  factory SubtitleOptions.fromJson(Map<String, dynamic> json) => _$SubtitleOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$SubtitleOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

