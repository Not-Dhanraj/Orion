//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_filter_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomFilterResource {
  /// Returns a new [CustomFilterResource] instance.
  CustomFilterResource({

     this.id,

     this.type,

     this.label,

     this.filters,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final String? type;



  @JsonKey(
    
    name: r'label',
    required: false,
    includeIfNull: false,
  )


  final String? label;



  @JsonKey(
    
    name: r'filters',
    required: false,
    includeIfNull: false,
  )


  final List<Map<String, Object>>? filters;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomFilterResource &&
      other.id == id &&
      other.type == type &&
      other.label == label &&
      other.filters == filters;

    @override
    int get hashCode =>
        id.hashCode +
        (type == null ? 0 : type.hashCode) +
        (label == null ? 0 : label.hashCode) +
        (filters == null ? 0 : filters.hashCode);

  factory CustomFilterResource.fromJson(Map<String, dynamic> json) => _$CustomFilterResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFilterResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

