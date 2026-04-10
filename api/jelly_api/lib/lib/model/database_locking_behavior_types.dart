//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Defines all possible methods for locking database access for concurrent queries.
enum DatabaseLockingBehaviorTypes {
          /// Defines all possible methods for locking database access for concurrent queries.
      @JsonValue(r'NoLock')
      noLock(r'NoLock'),
          /// Defines all possible methods for locking database access for concurrent queries.
      @JsonValue(r'Pessimistic')
      pessimistic(r'Pessimistic'),
          /// Defines all possible methods for locking database access for concurrent queries.
      @JsonValue(r'Optimistic')
      optimistic(r'Optimistic');

  const DatabaseLockingBehaviorTypes(this.value);

  final String value;

  @override
  String toString() => value;
}
