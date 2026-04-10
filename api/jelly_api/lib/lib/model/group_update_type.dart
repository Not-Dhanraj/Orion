//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum GroupUpdateType.
enum GroupUpdateType {
          /// Enum GroupUpdateType.
      @JsonValue(r'UserJoined')
      userJoined(r'UserJoined'),
          /// Enum GroupUpdateType.
      @JsonValue(r'UserLeft')
      userLeft(r'UserLeft'),
          /// Enum GroupUpdateType.
      @JsonValue(r'GroupJoined')
      groupJoined(r'GroupJoined'),
          /// Enum GroupUpdateType.
      @JsonValue(r'GroupLeft')
      groupLeft(r'GroupLeft'),
          /// Enum GroupUpdateType.
      @JsonValue(r'StateUpdate')
      stateUpdate(r'StateUpdate'),
          /// Enum GroupUpdateType.
      @JsonValue(r'PlayQueue')
      playQueue(r'PlayQueue'),
          /// Enum GroupUpdateType.
      @JsonValue(r'NotInGroup')
      notInGroup(r'NotInGroup'),
          /// Enum GroupUpdateType.
      @JsonValue(r'GroupDoesNotExist')
      groupDoesNotExist(r'GroupDoesNotExist'),
          /// Enum GroupUpdateType.
      @JsonValue(r'LibraryAccessDenied')
      libraryAccessDenied(r'LibraryAccessDenied');

  const GroupUpdateType(this.value);

  final String value;

  @override
  String toString() => value;
}
