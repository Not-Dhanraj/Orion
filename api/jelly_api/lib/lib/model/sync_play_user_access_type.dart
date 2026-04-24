//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum SyncPlayUserAccessType.
enum SyncPlayUserAccessType {
          /// Enum SyncPlayUserAccessType.
      @JsonValue(r'CreateAndJoinGroups')
      createAndJoinGroups(r'CreateAndJoinGroups'),
          /// Enum SyncPlayUserAccessType.
      @JsonValue(r'JoinGroups')
      joinGroups(r'JoinGroups'),
          /// Enum SyncPlayUserAccessType.
      @JsonValue(r'None')
      none(r'None');

  const SyncPlayUserAccessType(this.value);

  final String value;

  @override
  String toString() => value;
}
