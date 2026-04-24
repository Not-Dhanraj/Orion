//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/profile_condition_value.dart';
import 'package:jelly_api/lib/model/profile_condition_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_condition.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProfileCondition {
  /// Returns a new [ProfileCondition] instance.
  ProfileCondition({

     this.condition,

     this.property,

     this.value,

     this.isRequired,
  });

  @JsonKey(
    
    name: r'Condition',
    required: false,
    includeIfNull: false,
  )


  final ProfileConditionType? condition;



  @JsonKey(
    
    name: r'Property',
    required: false,
    includeIfNull: false,
  )


  final ProfileConditionValue? property;



  @JsonKey(
    
    name: r'Value',
    required: false,
    includeIfNull: false,
  )


  final String? value;



  @JsonKey(
    
    name: r'IsRequired',
    required: false,
    includeIfNull: false,
  )


  final bool? isRequired;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProfileCondition &&
      other.condition == condition &&
      other.property == property &&
      other.value == value &&
      other.isRequired == isRequired;

    @override
    int get hashCode =>
        condition.hashCode +
        property.hashCode +
        (value == null ? 0 : value.hashCode) +
        isRequired.hashCode;

  factory ProfileCondition.fromJson(Map<String, dynamic> json) => _$ProfileConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

