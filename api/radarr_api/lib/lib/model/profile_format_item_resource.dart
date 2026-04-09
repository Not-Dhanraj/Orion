//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_format_item_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProfileFormatItemResource {
  /// Returns a new [ProfileFormatItemResource] instance.
  ProfileFormatItemResource({

     this.id,

     this.format,

     this.name,

     this.score,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'format',
    required: false,
    includeIfNull: false,
  )


  final int? format;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'score',
    required: false,
    includeIfNull: false,
  )


  final int? score;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProfileFormatItemResource &&
      other.id == id &&
      other.format == format &&
      other.name == name &&
      other.score == score;

    @override
    int get hashCode =>
        id.hashCode +
        format.hashCode +
        (name == null ? 0 : name.hashCode) +
        score.hashCode;

  factory ProfileFormatItemResource.fromJson(Map<String, dynamic> json) => _$ProfileFormatItemResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileFormatItemResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

