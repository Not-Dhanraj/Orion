//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/tmdb_country_code.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'metadata_config_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MetadataConfigResource {
  /// Returns a new [MetadataConfigResource] instance.
  MetadataConfigResource({

     this.id,

     this.certificationCountry,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'certificationCountry',
    required: false,
    includeIfNull: false,
  )


  final TMDbCountryCode? certificationCountry;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MetadataConfigResource &&
      other.id == id &&
      other.certificationCountry == certificationCountry;

    @override
    int get hashCode =>
        id.hashCode +
        certificationCountry.hashCode;

  factory MetadataConfigResource.fromJson(Map<String, dynamic> json) => _$MetadataConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

