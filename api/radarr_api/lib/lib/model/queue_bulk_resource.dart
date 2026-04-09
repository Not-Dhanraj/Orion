//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'queue_bulk_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueueBulkResource {
  /// Returns a new [QueueBulkResource] instance.
  QueueBulkResource({

     this.ids,
  });

  @JsonKey(
    
    name: r'ids',
    required: false,
    includeIfNull: false,
  )


  final List<int>? ids;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QueueBulkResource &&
      other.ids == ids;

    @override
    int get hashCode =>
        (ids == null ? 0 : ids.hashCode);

  factory QueueBulkResource.fromJson(Map<String, dynamic> json) => _$QueueBulkResourceFromJson(json);

  Map<String, dynamic> toJson() => _$QueueBulkResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

