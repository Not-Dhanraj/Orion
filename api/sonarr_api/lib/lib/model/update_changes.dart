//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_changes.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateChanges {
  /// Returns a new [UpdateChanges] instance.
  UpdateChanges({

     this.new_,

     this.fixed,
  });

  @JsonKey(
    
    name: r'new',
    required: false,
    includeIfNull: false,
  )


  final List<String>? new_;



  @JsonKey(
    
    name: r'fixed',
    required: false,
    includeIfNull: false,
  )


  final List<String>? fixed;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateChanges &&
      other.new_ == new_ &&
      other.fixed == fixed;

    @override
    int get hashCode =>
        (new_ == null ? 0 : new_.hashCode) +
        (fixed == null ? 0 : fixed.hashCode);

  factory UpdateChanges.fromJson(Map<String, dynamic> json) => _$UpdateChangesFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateChangesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

