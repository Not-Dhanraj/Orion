//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/field.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_format_specification_schema.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomFormatSpecificationSchema {
  /// Returns a new [CustomFormatSpecificationSchema] instance.
  CustomFormatSpecificationSchema({

     this.id,

     this.name,

     this.implementation,

     this.implementationName,

     this.infoLink,

     this.negate,

     this.required_,

     this.fields,

     this.presets,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'implementation',
    required: false,
    includeIfNull: false,
  )


  final String? implementation;



  @JsonKey(
    
    name: r'implementationName',
    required: false,
    includeIfNull: false,
  )


  final String? implementationName;



  @JsonKey(
    
    name: r'infoLink',
    required: false,
    includeIfNull: false,
  )


  final String? infoLink;



  @JsonKey(
    
    name: r'negate',
    required: false,
    includeIfNull: false,
  )


  final bool? negate;



  @JsonKey(
    
    name: r'required',
    required: false,
    includeIfNull: false,
  )


  final bool? required_;



  @JsonKey(
    
    name: r'fields',
    required: false,
    includeIfNull: false,
  )


  final List<Field>? fields;



  @JsonKey(
    
    name: r'presets',
    required: false,
    includeIfNull: false,
  )


  final List<CustomFormatSpecificationSchema>? presets;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomFormatSpecificationSchema &&
      other.id == id &&
      other.name == name &&
      other.implementation == implementation &&
      other.implementationName == implementationName &&
      other.infoLink == infoLink &&
      other.negate == negate &&
      other.required_ == required_ &&
      other.fields == fields &&
      other.presets == presets;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (implementation == null ? 0 : implementation.hashCode) +
        (implementationName == null ? 0 : implementationName.hashCode) +
        (infoLink == null ? 0 : infoLink.hashCode) +
        negate.hashCode +
        required_.hashCode +
        (fields == null ? 0 : fields.hashCode) +
        (presets == null ? 0 : presets.hashCode);

  factory CustomFormatSpecificationSchema.fromJson(Map<String, dynamic> json) => _$CustomFormatSpecificationSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFormatSpecificationSchemaToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

