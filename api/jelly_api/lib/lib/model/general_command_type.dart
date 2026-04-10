//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// This exists simply to identify a set of known commands.
enum GeneralCommandType {
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'MoveUp')
      moveUp(r'MoveUp'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'MoveDown')
      moveDown(r'MoveDown'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'MoveLeft')
      moveLeft(r'MoveLeft'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'MoveRight')
      moveRight(r'MoveRight'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'PageUp')
      pageUp(r'PageUp'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'PageDown')
      pageDown(r'PageDown'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'PreviousLetter')
      previousLetter(r'PreviousLetter'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'NextLetter')
      nextLetter(r'NextLetter'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'ToggleOsd')
      toggleOsd(r'ToggleOsd'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'ToggleContextMenu')
      toggleContextMenu(r'ToggleContextMenu'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'Select')
      select(r'Select'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'Back')
      back(r'Back'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'TakeScreenshot')
      takeScreenshot(r'TakeScreenshot'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'SendKey')
      sendKey(r'SendKey'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'SendString')
      sendString(r'SendString'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'GoHome')
      goHome(r'GoHome'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'GoToSettings')
      goToSettings(r'GoToSettings'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'VolumeUp')
      volumeUp(r'VolumeUp'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'VolumeDown')
      volumeDown(r'VolumeDown'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'Mute')
      mute(r'Mute'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'Unmute')
      unmute(r'Unmute'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'ToggleMute')
      toggleMute(r'ToggleMute'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'SetVolume')
      setVolume(r'SetVolume'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'SetAudioStreamIndex')
      setAudioStreamIndex(r'SetAudioStreamIndex'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'SetSubtitleStreamIndex')
      setSubtitleStreamIndex(r'SetSubtitleStreamIndex'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'ToggleFullscreen')
      toggleFullscreen(r'ToggleFullscreen'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'DisplayContent')
      displayContent(r'DisplayContent'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'GoToSearch')
      goToSearch(r'GoToSearch'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'DisplayMessage')
      displayMessage(r'DisplayMessage'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'SetRepeatMode')
      setRepeatMode(r'SetRepeatMode'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'ChannelUp')
      channelUp(r'ChannelUp'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'ChannelDown')
      channelDown(r'ChannelDown'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'Guide')
      guide(r'Guide'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'ToggleStats')
      toggleStats(r'ToggleStats'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'PlayMediaSource')
      playMediaSource(r'PlayMediaSource'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'PlayTrailers')
      playTrailers(r'PlayTrailers'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'SetShuffleQueue')
      setShuffleQueue(r'SetShuffleQueue'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'PlayState')
      playState(r'PlayState'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'PlayNext')
      playNext(r'PlayNext'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'ToggleOsdMenu')
      toggleOsdMenu(r'ToggleOsdMenu'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'Play')
      play(r'Play'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'SetMaxStreamingBitrate')
      setMaxStreamingBitrate(r'SetMaxStreamingBitrate'),
          /// This exists simply to identify a set of known commands.
      @JsonValue(r'SetPlaybackOrder')
      setPlaybackOrder(r'SetPlaybackOrder');

  const GeneralCommandType(this.value);

  final String value;

  @override
  String toString() => value;
}
