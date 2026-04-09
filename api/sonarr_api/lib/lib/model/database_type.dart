//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum DatabaseType {
      @JsonValue(r'sqLite')
      sqLite(r'sqLite'),
      @JsonValue(r'postgreSQL')
      postgreSQL(r'postgreSQL');

  const DatabaseType(this.value);

  final String value;

  @override
  String toString() => value;
}
