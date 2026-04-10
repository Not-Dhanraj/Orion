//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'special_view_option_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SpecialViewOptionDto {
  /// Returns a new [SpecialViewOptionDto] instance.
  SpecialViewOptionDto({

     this.name,

     this.id,
  });

      /// Gets or sets view option name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets view option id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SpecialViewOptionDto &&
      other.name == name &&
      other.id == id;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (id == null ? 0 : id.hashCode);

  factory SpecialViewOptionDto.fromJson(Map<String, dynamic> json) => _$SpecialViewOptionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialViewOptionDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

