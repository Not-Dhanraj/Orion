//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/apply_tags.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'indexer_bulk_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IndexerBulkResource {
  /// Returns a new [IndexerBulkResource] instance.
  IndexerBulkResource({

     this.ids,

     this.tags,

     this.applyTags,

     this.enableRss,

     this.enableAutomaticSearch,

     this.enableInteractiveSearch,

     this.priority,
  });

  @JsonKey(
    
    name: r'ids',
    required: false,
    includeIfNull: false,
  )


  final List<int>? ids;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final List<int>? tags;



  @JsonKey(
    
    name: r'applyTags',
    required: false,
    includeIfNull: false,
  )


  final ApplyTags? applyTags;



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
    
    name: r'priority',
    required: false,
    includeIfNull: false,
  )


  final int? priority;





    @override
    bool operator ==(Object other) => identical(this, other) || other is IndexerBulkResource &&
      other.ids == ids &&
      other.tags == tags &&
      other.applyTags == applyTags &&
      other.enableRss == enableRss &&
      other.enableAutomaticSearch == enableAutomaticSearch &&
      other.enableInteractiveSearch == enableInteractiveSearch &&
      other.priority == priority;

    @override
    int get hashCode =>
        (ids == null ? 0 : ids.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        applyTags.hashCode +
        (enableRss == null ? 0 : enableRss.hashCode) +
        (enableAutomaticSearch == null ? 0 : enableAutomaticSearch.hashCode) +
        (enableInteractiveSearch == null ? 0 : enableInteractiveSearch.hashCode) +
        (priority == null ? 0 : priority.hashCode);

  factory IndexerBulkResource.fromJson(Map<String, dynamic> json) => _$IndexerBulkResourceFromJson(json);

  Map<String, dynamic> toJson() => _$IndexerBulkResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

