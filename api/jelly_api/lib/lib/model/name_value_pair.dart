//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'name_value_pair.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NameValuePair {
  /// Returns a new [NameValuePair] instance.
  NameValuePair({

     this.name,

     this.value,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the value.
  @JsonKey(
    
    name: r'Value',
    required: false,
    includeIfNull: false,
  )


  final String? value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NameValuePair &&
      other.name == name &&
      other.value == value;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (value == null ? 0 : value.hashCode);

  factory NameValuePair.fromJson(Map<String, dynamic> json) => _$NameValuePairFromJson(json);

  Map<String, dynamic> toJson() => _$NameValuePairToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

