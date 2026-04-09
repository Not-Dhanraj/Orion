//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tag_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TagResource {
  /// Returns a new [TagResource] instance.
  TagResource({

     this.id,

     this.label,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'label',
    required: false,
    includeIfNull: false,
  )


  final String? label;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TagResource &&
      other.id == id &&
      other.label == label;

    @override
    int get hashCode =>
        id.hashCode +
        (label == null ? 0 : label.hashCode);

  factory TagResource.fromJson(Map<String, dynamic> json) => _$TagResourceFromJson(json);

  Map<String, dynamic> toJson() => _$TagResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

