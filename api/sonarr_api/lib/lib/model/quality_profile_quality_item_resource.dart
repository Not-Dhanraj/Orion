//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/quality.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quality_profile_quality_item_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QualityProfileQualityItemResource {
  /// Returns a new [QualityProfileQualityItemResource] instance.
  QualityProfileQualityItemResource({

     this.id,

     this.name,

     this.quality,

     this.items,

     this.allowed,
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
    
    name: r'quality',
    required: false,
    includeIfNull: false,
  )


  final Quality? quality;



  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false,
  )


  final List<QualityProfileQualityItemResource>? items;



  @JsonKey(
    
    name: r'allowed',
    required: false,
    includeIfNull: false,
  )


  final bool? allowed;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QualityProfileQualityItemResource &&
      other.id == id &&
      other.name == name &&
      other.quality == quality &&
      other.items == items &&
      other.allowed == allowed;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        quality.hashCode +
        (items == null ? 0 : items.hashCode) +
        allowed.hashCode;

  factory QualityProfileQualityItemResource.fromJson(Map<String, dynamic> json) => _$QualityProfileQualityItemResourceFromJson(json);

  Map<String, dynamic> toJson() => _$QualityProfileQualityItemResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

