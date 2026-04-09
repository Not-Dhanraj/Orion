//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quality_definition_limits_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QualityDefinitionLimitsResource {
  /// Returns a new [QualityDefinitionLimitsResource] instance.
  QualityDefinitionLimitsResource({

     this.min,

     this.max,
  });

  @JsonKey(
    
    name: r'min',
    required: false,
    includeIfNull: false,
  )


  final int? min;



  @JsonKey(
    
    name: r'max',
    required: false,
    includeIfNull: false,
  )


  final int? max;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QualityDefinitionLimitsResource &&
      other.min == min &&
      other.max == max;

    @override
    int get hashCode =>
        min.hashCode +
        max.hashCode;

  factory QualityDefinitionLimitsResource.fromJson(Map<String, dynamic> json) => _$QualityDefinitionLimitsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$QualityDefinitionLimitsResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

