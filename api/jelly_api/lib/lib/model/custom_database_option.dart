//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_database_option.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomDatabaseOption {
  /// Returns a new [CustomDatabaseOption] instance.
  CustomDatabaseOption({

     this.key,

     this.value,
  });

      /// Gets or sets the key of the value.
  @JsonKey(
    
    name: r'Key',
    required: false,
    includeIfNull: false,
  )


  final String? key;



      /// Gets or sets the value.
  @JsonKey(
    
    name: r'Value',
    required: false,
    includeIfNull: false,
  )


  final String? value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomDatabaseOption &&
      other.key == key &&
      other.value == value;

    @override
    int get hashCode =>
        key.hashCode +
        value.hashCode;

  factory CustomDatabaseOption.fromJson(Map<String, dynamic> json) => _$CustomDatabaseOptionFromJson(json);

  Map<String, dynamic> toJson() => _$CustomDatabaseOptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

