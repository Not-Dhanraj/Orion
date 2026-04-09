//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
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


  final String? listSyncLevel;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImportListConfigResource &&
      other.id == id &&
      other.listSyncLevel == listSyncLevel;

    @override
    int get hashCode =>
        id.hashCode +
        (listSyncLevel == null ? 0 : listSyncLevel.hashCode);

  factory ImportListConfigResource.fromJson(Map<String, dynamic> json) => _$ImportListConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ImportListConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

