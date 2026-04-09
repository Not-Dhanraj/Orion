//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/modifier.dart';
import 'package:radarr_api/lib/model/quality_source.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quality.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Quality {
  /// Returns a new [Quality] instance.
  Quality({

     this.id,

     this.name,

     this.source_,

     this.resolution,

     this.modifier,
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
    
    name: r'source',
    required: false,
    includeIfNull: false,
  )


  final QualitySource? source_;



  @JsonKey(
    
    name: r'resolution',
    required: false,
    includeIfNull: false,
  )


  final int? resolution;



  @JsonKey(
    
    name: r'modifier',
    required: false,
    includeIfNull: false,
  )


  final Modifier? modifier;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Quality &&
      other.id == id &&
      other.name == name &&
      other.source_ == source_ &&
      other.resolution == resolution &&
      other.modifier == modifier;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        source_.hashCode +
        resolution.hashCode +
        modifier.hashCode;

  factory Quality.fromJson(Map<String, dynamic> json) => _$QualityFromJson(json);

  Map<String, dynamic> toJson() => _$QualityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

