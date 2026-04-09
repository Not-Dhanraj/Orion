//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'select_option.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SelectOption {
  /// Returns a new [SelectOption] instance.
  SelectOption({

     this.value,

     this.name,

     this.order,

     this.hint,
  });

  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false,
  )


  final int? value;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'order',
    required: false,
    includeIfNull: false,
  )


  final int? order;



  @JsonKey(
    
    name: r'hint',
    required: false,
    includeIfNull: false,
  )


  final String? hint;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SelectOption &&
      other.value == value &&
      other.name == name &&
      other.order == order &&
      other.hint == hint;

    @override
    int get hashCode =>
        value.hashCode +
        (name == null ? 0 : name.hashCode) +
        order.hashCode +
        (hint == null ? 0 : hint.hashCode);

  factory SelectOption.fromJson(Map<String, dynamic> json) => _$SelectOptionFromJson(json);

  Map<String, dynamic> toJson() => _$SelectOptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

