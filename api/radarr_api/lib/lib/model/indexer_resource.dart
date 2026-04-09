//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/download_protocol.dart';
import 'package:radarr_api/lib/model/field.dart';
import 'package:radarr_api/lib/model/provider_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'indexer_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IndexerResource {
  /// Returns a new [IndexerResource] instance.
  IndexerResource({

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

     this.enableRss,

     this.enableAutomaticSearch,

     this.enableInteractiveSearch,

     this.supportsRss,

     this.supportsSearch,

     this.protocol,

     this.priority,

     this.downloadClientId,
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


  final List<IndexerResource>? presets;



  @JsonKey(
    
    name: r'enableRss',
    required: false,
    includeIfNull: false,
  )


  final bool? enableRss;



  @JsonKey(
    
    name: r'enableAutomaticSearch',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAutomaticSearch;



  @JsonKey(
    
    name: r'enableInteractiveSearch',
    required: false,
    includeIfNull: false,
  )


  final bool? enableInteractiveSearch;



  @JsonKey(
    
    name: r'supportsRss',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsRss;



  @JsonKey(
    
    name: r'supportsSearch',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsSearch;



  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false,
  )


  final DownloadProtocol? protocol;



  @JsonKey(
    
    name: r'priority',
    required: false,
    includeIfNull: false,
  )


  final int? priority;



  @JsonKey(
    
    name: r'downloadClientId',
    required: false,
    includeIfNull: false,
  )


  final int? downloadClientId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is IndexerResource &&
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
      other.enableRss == enableRss &&
      other.enableAutomaticSearch == enableAutomaticSearch &&
      other.enableInteractiveSearch == enableInteractiveSearch &&
      other.supportsRss == supportsRss &&
      other.supportsSearch == supportsSearch &&
      other.protocol == protocol &&
      other.priority == priority &&
      other.downloadClientId == downloadClientId;

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
        enableRss.hashCode +
        enableAutomaticSearch.hashCode +
        enableInteractiveSearch.hashCode +
        supportsRss.hashCode +
        supportsSearch.hashCode +
        protocol.hashCode +
        priority.hashCode +
        downloadClientId.hashCode;

  factory IndexerResource.fromJson(Map<String, dynamic> json) => _$IndexerResourceFromJson(json);

  Map<String, dynamic> toJson() => _$IndexerResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

