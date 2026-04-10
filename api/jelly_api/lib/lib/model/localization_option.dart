//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'localization_option.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LocalizationOption {
  /// Returns a new [LocalizationOption] instance.
  LocalizationOption({

     this.name,

     this.value,
  });

  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'Value',
    required: false,
    includeIfNull: false,
  )


  final String? value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LocalizationOption &&
      other.name == name &&
      other.value == value;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (value == null ? 0 : value.hashCode);

  factory LocalizationOption.fromJson(Map<String, dynamic> json) => _$LocalizationOptionFromJson(json);

  Map<String, dynamic> toJson() => _$LocalizationOptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

