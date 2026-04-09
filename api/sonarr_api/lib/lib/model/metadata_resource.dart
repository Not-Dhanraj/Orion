//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/field.dart';
import 'package:sonarr_api/lib/model/provider_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'metadata_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MetadataResource {
  /// Returns a new [MetadataResource] instance.
  MetadataResource({

     this.id,

     this.name,

     this.fields,

     this.implementationName,

     this.implementation,

     this.configContract,

     this.infoLink,

     this.message,

     this.tags,

     this.presets,

     this.enable,
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
    
    name: r'fields',
    required: false,
    includeIfNull: false,
  )


  final List<Field>? fields;



  @JsonKey(
    
    name: r'implementationName',
    required: false,
    includeIfNull: false,
  )


  final String? implementationName;



  @JsonKey(
    
    name: r'implementation',
    required: false,
    includeIfNull: false,
  )


  final String? implementation;



  @JsonKey(
    
    name: r'configContract',
    required: false,
    includeIfNull: false,
  )


  final String? configContract;



  @JsonKey(
    
    name: r'infoLink',
    required: false,
    includeIfNull: false,
  )


  final String? infoLink;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final ProviderMessage? message;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? tags;



  @JsonKey(
    
    name: r'presets',
    required: false,
    includeIfNull: false,
  )


  final List<MetadataResource>? presets;



  @JsonKey(
    
    name: r'enable',
    required: false,
    includeIfNull: false,
  )


  final bool? enable;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MetadataResource &&
      other.id == id &&
      other.name == name &&
      other.fields == fields &&
      other.implementationName == implementationName &&
      other.implementation == implementation &&
      other.configContract == configContract &&
      other.infoLink == infoLink &&
      other.message == message &&
      other.tags == tags &&
      other.presets == presets &&
      other.enable == enable;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (fields == null ? 0 : fields.hashCode) +
        (implementationName == null ? 0 : implementationName.hashCode) +
        (implementation == null ? 0 : implementation.hashCode) +
        (configContract == null ? 0 : configContract.hashCode) +
        (infoLink == null ? 0 : infoLink.hashCode) +
        message.hashCode +
        (tags == null ? 0 : tags.hashCode) +
        (presets == null ? 0 : presets.hashCode) +
        enable.hashCode;

  factory MetadataResource.fromJson(Map<String, dynamic> json) => _$MetadataResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

