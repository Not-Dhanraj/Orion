//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/subtitle_playback_mode.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_configuration.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserConfiguration {
  /// Returns a new [UserConfiguration] instance.
  UserConfiguration({

     this.audioLanguagePreference,

     this.playDefaultAudioTrack,

     this.subtitleLanguagePreference,

     this.displayMissingEpisodes,

     this.groupedFolders,

     this.subtitleMode,

     this.displayCollectionsView,

     this.enableLocalPassword,

     this.orderedViews,

     this.latestItemsExcludes,

     this.myMediaExcludes,

     this.hidePlayedInLatest,

     this.rememberAudioSelections,

     this.rememberSubtitleSelections,

     this.enableNextEpisodeAutoPlay,

     this.castReceiverId,
  });

      /// Gets or sets the audio language preference.
  @JsonKey(
    
    name: r'AudioLanguagePreference',
    required: false,
    includeIfNull: false,
  )


  final String? audioLanguagePreference;



      /// Gets or sets a value indicating whether [play default audio track].
  @JsonKey(
    
    name: r'PlayDefaultAudioTrack',
    required: false,
    includeIfNull: false,
  )


  final bool? playDefaultAudioTrack;



      /// Gets or sets the subtitle language preference.
  @JsonKey(
    
    name: r'SubtitleLanguagePreference',
    required: false,
    includeIfNull: false,
  )


  final String? subtitleLanguagePreference;



  @JsonKey(
    
    name: r'DisplayMissingEpisodes',
    required: false,
    includeIfNull: false,
  )


  final bool? displayMissingEpisodes;



  @JsonKey(
    
    name: r'GroupedFolders',
    required: false,
    includeIfNull: false,
  )


  final List<String>? groupedFolders;



      /// An enum representing a subtitle playback mode.
  @JsonKey(
    
    name: r'SubtitleMode',
    required: false,
    includeIfNull: false,
  )


  final SubtitlePlaybackMode? subtitleMode;



  @JsonKey(
    
    name: r'DisplayCollectionsView',
    required: false,
    includeIfNull: false,
  )


  final bool? displayCollectionsView;



  @JsonKey(
    
    name: r'EnableLocalPassword',
    required: false,
    includeIfNull: false,
  )


  final bool? enableLocalPassword;



  @JsonKey(
    
    name: r'OrderedViews',
    required: false,
    includeIfNull: false,
  )


  final List<String>? orderedViews;



  @JsonKey(
    
    name: r'LatestItemsExcludes',
    required: false,
    includeIfNull: false,
  )


  final List<String>? latestItemsExcludes;



  @JsonKey(
    
    name: r'MyMediaExcludes',
    required: false,
    includeIfNull: false,
  )


  final List<String>? myMediaExcludes;



  @JsonKey(
    
    name: r'HidePlayedInLatest',
    required: false,
    includeIfNull: false,
  )


  final bool? hidePlayedInLatest;



  @JsonKey(
    
    name: r'RememberAudioSelections',
    required: false,
    includeIfNull: false,
  )


  final bool? rememberAudioSelections;



  @JsonKey(
    
    name: r'RememberSubtitleSelections',
    required: false,
    includeIfNull: false,
  )


  final bool? rememberSubtitleSelections;



  @JsonKey(
    
    name: r'EnableNextEpisodeAutoPlay',
    required: false,
    includeIfNull: false,
  )


  final bool? enableNextEpisodeAutoPlay;



      /// Gets or sets the id of the selected cast receiver.
  @JsonKey(
    
    name: r'CastReceiverId',
    required: false,
    includeIfNull: false,
  )


  final String? castReceiverId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserConfiguration &&
      other.audioLanguagePreference == audioLanguagePreference &&
      other.playDefaultAudioTrack == playDefaultAudioTrack &&
      other.subtitleLanguagePreference == subtitleLanguagePreference &&
      other.displayMissingEpisodes == displayMissingEpisodes &&
      other.groupedFolders == groupedFolders &&
      other.subtitleMode == subtitleMode &&
      other.displayCollectionsView == displayCollectionsView &&
      other.enableLocalPassword == enableLocalPassword &&
      other.orderedViews == orderedViews &&
      other.latestItemsExcludes == latestItemsExcludes &&
      other.myMediaExcludes == myMediaExcludes &&
      other.hidePlayedInLatest == hidePlayedInLatest &&
      other.rememberAudioSelections == rememberAudioSelections &&
      other.rememberSubtitleSelections == rememberSubtitleSelections &&
      other.enableNextEpisodeAutoPlay == enableNextEpisodeAutoPlay &&
      other.castReceiverId == castReceiverId;

    @override
    int get hashCode =>
        (audioLanguagePreference == null ? 0 : audioLanguagePreference.hashCode) +
        playDefaultAudioTrack.hashCode +
        (subtitleLanguagePreference == null ? 0 : subtitleLanguagePreference.hashCode) +
        displayMissingEpisodes.hashCode +
        groupedFolders.hashCode +
        subtitleMode.hashCode +
        displayCollectionsView.hashCode +
        enableLocalPassword.hashCode +
        orderedViews.hashCode +
        latestItemsExcludes.hashCode +
        myMediaExcludes.hashCode +
        hidePlayedInLatest.hashCode +
        rememberAudioSelections.hashCode +
        rememberSubtitleSelections.hashCode +
        enableNextEpisodeAutoPlay.hashCode +
        (castReceiverId == null ? 0 : castReceiverId.hashCode);

  factory UserConfiguration.fromJson(Map<String, dynamic> json) => _$UserConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$UserConfigurationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

