//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'name_guid_pair.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NameGuidPair {
  /// Returns a new [NameGuidPair] instance.
  NameGuidPair({

     this.name,

     this.id,
  });

  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NameGuidPair &&
      other.name == name &&
      other.id == id;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        id.hashCode;

  factory NameGuidPair.fromJson(Map<String, dynamic> json) => _$NameGuidPairFromJson(json);

  Map<String, dynamic> toJson() => _$NameGuidPairToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

