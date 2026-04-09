//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/quality.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quality_definition_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QualityDefinitionResource {
  /// Returns a new [QualityDefinitionResource] instance.
  QualityDefinitionResource({

     this.id,

     this.quality,

     this.title,

     this.weight,

     this.minSize,

     this.maxSize,

     this.preferredSize,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'quality',
    required: false,
    includeIfNull: false,
  )


  final Quality? quality;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'weight',
    required: false,
    includeIfNull: false,
  )


  final int? weight;



  @JsonKey(
    
    name: r'minSize',
    required: false,
    includeIfNull: false,
  )


  final double? minSize;



  @JsonKey(
    
    name: r'maxSize',
    required: false,
    includeIfNull: false,
  )


  final double? maxSize;



  @JsonKey(
    
    name: r'preferredSize',
    required: false,
    includeIfNull: false,
  )


  final double? preferredSize;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QualityDefinitionResource &&
      other.id == id &&
      other.quality == quality &&
      other.title == title &&
      other.weight == weight &&
      other.minSize == minSize &&
      other.maxSize == maxSize &&
      other.preferredSize == preferredSize;

    @override
    int get hashCode =>
        id.hashCode +
        quality.hashCode +
        (title == null ? 0 : title.hashCode) +
        weight.hashCode +
        (minSize == null ? 0 : minSize.hashCode) +
        (maxSize == null ? 0 : maxSize.hashCode) +
        (preferredSize == null ? 0 : preferredSize.hashCode);

  factory QualityDefinitionResource.fromJson(Map<String, dynamic> json) => _$QualityDefinitionResourceFromJson(json);

  Map<String, dynamic> toJson() => _$QualityDefinitionResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

