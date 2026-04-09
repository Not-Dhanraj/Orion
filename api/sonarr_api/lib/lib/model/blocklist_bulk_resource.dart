//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'blocklist_bulk_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BlocklistBulkResource {
  /// Returns a new [BlocklistBulkResource] instance.
  BlocklistBulkResource({

     this.ids,
  });

  @JsonKey(
    
    name: r'ids',
    required: false,
    includeIfNull: false,
  )


  final List<int>? ids;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BlocklistBulkResource &&
      other.ids == ids;

    @override
    int get hashCode =>
        (ids == null ? 0 : ids.hashCode);

  factory BlocklistBulkResource.fromJson(Map<String, dynamic> json) => _$BlocklistBulkResourceFromJson(json);

  Map<String, dynamic> toJson() => _$BlocklistBulkResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

