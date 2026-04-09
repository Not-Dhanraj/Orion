//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/auto_tagging_specification_schema.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auto_tagging_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AutoTaggingResource {
  /// Returns a new [AutoTaggingResource] instance.
  AutoTaggingResource({

     this.id,

     this.name,

     this.removeTagsAutomatically,

     this.tags,

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
    
    name: r'removeTagsAutomatically',
    required: false,
    includeIfNull: false,
  )


  final bool? removeTagsAutomatically;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? tags;



  @JsonKey(
    
    name: r'specifications',
    required: false,
    includeIfNull: false,
  )


  final List<AutoTaggingSpecificationSchema>? specifications;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AutoTaggingResource &&
      other.id == id &&
      other.name == name &&
      other.removeTagsAutomatically == removeTagsAutomatically &&
      other.tags == tags &&
      other.specifications == specifications;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        removeTagsAutomatically.hashCode +
        (tags == null ? 0 : tags.hashCode) +
        (specifications == null ? 0 : specifications.hashCode);

  factory AutoTaggingResource.fromJson(Map<String, dynamic> json) => _$AutoTaggingResourceFromJson(json);

  Map<String, dynamic> toJson() => _$AutoTaggingResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

