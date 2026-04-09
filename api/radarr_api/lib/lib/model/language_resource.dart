//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LanguageResource {
  /// Returns a new [LanguageResource] instance.
  LanguageResource({

     this.id,

     this.name,

     this.nameLower,
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
    
    name: r'nameLower',
    required: false,
    includeIfNull: false,
  )


  final String? nameLower;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LanguageResource &&
      other.id == id &&
      other.name == name &&
      other.nameLower == nameLower;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (nameLower == null ? 0 : nameLower.hashCode);

  factory LanguageResource.fromJson(Map<String, dynamic> json) => _$LanguageResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

