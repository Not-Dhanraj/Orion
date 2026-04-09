//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_info_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiInfoResource {
  /// Returns a new [ApiInfoResource] instance.
  ApiInfoResource({

     this.current,

     this.deprecated,
  });

  @JsonKey(
    
    name: r'current',
    required: false,
    includeIfNull: false,
  )


  final String? current;



  @JsonKey(
    
    name: r'deprecated',
    required: false,
    includeIfNull: false,
  )


  final List<String>? deprecated;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiInfoResource &&
      other.current == current &&
      other.deprecated == deprecated;

    @override
    int get hashCode =>
        (current == null ? 0 : current.hashCode) +
        (deprecated == null ? 0 : deprecated.hashCode);

  factory ApiInfoResource.fromJson(Map<String, dynamic> json) => _$ApiInfoResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ApiInfoResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

