//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'import_list_exclusion_bulk_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImportListExclusionBulkResource {
  /// Returns a new [ImportListExclusionBulkResource] instance.
  ImportListExclusionBulkResource({

     this.ids,
  });

  @JsonKey(
    
    name: r'ids',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? ids;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImportListExclusionBulkResource &&
      other.ids == ids;

    @override
    int get hashCode =>
        (ids == null ? 0 : ids.hashCode);

  factory ImportListExclusionBulkResource.fromJson(Map<String, dynamic> json) => _$ImportListExclusionBulkResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ImportListExclusionBulkResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

