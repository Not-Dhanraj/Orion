//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/custom_format_specification_schema.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_format_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomFormatResource {
  /// Returns a new [CustomFormatResource] instance.
  CustomFormatResource({

     this.id,

     this.name,

     this.includeCustomFormatWhenRenaming,

     this.specifications,
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
    
    name: r'includeCustomFormatWhenRenaming',
    required: false,
    includeIfNull: false,
  )


  final bool? includeCustomFormatWhenRenaming;



  @JsonKey(
    
    name: r'specifications',
    required: false,
    includeIfNull: false,
  )


  final List<CustomFormatSpecificationSchema>? specifications;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomFormatResource &&
      other.id == id &&
      other.name == name &&
      other.includeCustomFormatWhenRenaming == includeCustomFormatWhenRenaming &&
      other.specifications == specifications;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (includeCustomFormatWhenRenaming == null ? 0 : includeCustomFormatWhenRenaming.hashCode) +
        (specifications == null ? 0 : specifications.hashCode);

  factory CustomFormatResource.fromJson(Map<String, dynamic> json) => _$CustomFormatResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFormatResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

