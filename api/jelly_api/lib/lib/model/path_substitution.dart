//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'path_substitution.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PathSubstitution {
  /// Returns a new [PathSubstitution] instance.
  PathSubstitution({

     this.from,

     this.to,
  });

      /// Gets or sets the value to substitute.
  @JsonKey(
    
    name: r'From',
    required: false,
    includeIfNull: false,
  )


  final String? from;



      /// Gets or sets the value to substitution with.
  @JsonKey(
    
    name: r'To',
    required: false,
    includeIfNull: false,
  )


  final String? to;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PathSubstitution &&
      other.from == from &&
      other.to == to;

    @override
    int get hashCode =>
        from.hashCode +
        to.hashCode;

  factory PathSubstitution.fromJson(Map<String, dynamic> json) => _$PathSubstitutionFromJson(json);

  Map<String, dynamic> toJson() => _$PathSubstitutionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

