//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/list_sync_level_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'import_list_config_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImportListConfigResource {
  /// Returns a new [ImportListConfigResource] instance.
  ImportListConfigResource({

     this.id,

     this.listSyncLevel,

     this.listSyncTag,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'listSyncLevel',
    required: false,
    includeIfNull: false,
  )


  final ListSyncLevelType? listSyncLevel;



  @JsonKey(
    
    name: r'listSyncTag',
    required: false,
    includeIfNull: false,
  )


  final int? listSyncTag;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImportListConfigResource &&
      other.id == id &&
      other.listSyncLevel == listSyncLevel &&
      other.listSyncTag == listSyncTag;

    @override
    int get hashCode =>
        id.hashCode +
        listSyncLevel.hashCode +
        listSyncTag.hashCode;

  factory ImportListConfigResource.fromJson(Map<String, dynamic> json) => _$ImportListConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ImportListConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

