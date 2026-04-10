//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'name_id_pair.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NameIdPair {
  /// Returns a new [NameIdPair] instance.
  NameIdPair({

     this.name,

     this.id,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the identifier.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NameIdPair &&
      other.name == name &&
      other.id == id;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (id == null ? 0 : id.hashCode);

  factory NameIdPair.fromJson(Map<String, dynamic> json) => _$NameIdPairFromJson(json);

  Map<String, dynamic> toJson() => _$NameIdPairToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

