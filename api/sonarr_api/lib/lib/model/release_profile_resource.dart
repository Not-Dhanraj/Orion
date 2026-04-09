//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'release_profile_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReleaseProfileResource {
  /// Returns a new [ReleaseProfileResource] instance.
  ReleaseProfileResource({

     this.id,

     this.name,

     this.enabled,

     this.required_,

     this.ignored,

     this.indexerId,

     this.tags,
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
    
    name: r'enabled',
    required: false,
    includeIfNull: false,
  )


  final bool? enabled;



  @JsonKey(
    
    name: r'required',
    required: false,
    includeIfNull: false,
  )


  final Object? required_;



  @JsonKey(
    
    name: r'ignored',
    required: false,
    includeIfNull: false,
  )


  final Object? ignored;



  @JsonKey(
    
    name: r'indexerId',
    required: false,
    includeIfNull: false,
  )


  final int? indexerId;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? tags;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReleaseProfileResource &&
      other.id == id &&
      other.name == name &&
      other.enabled == enabled &&
      other.required_ == required_ &&
      other.ignored == ignored &&
      other.indexerId == indexerId &&
      other.tags == tags;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        enabled.hashCode +
        (required_ == null ? 0 : required_.hashCode) +
        (ignored == null ? 0 : ignored.hashCode) +
        indexerId.hashCode +
        (tags == null ? 0 : tags.hashCode);

  factory ReleaseProfileResource.fromJson(Map<String, dynamic> json) => _$ReleaseProfileResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseProfileResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

