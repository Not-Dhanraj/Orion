//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_format_bulk_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomFormatBulkResource {
  /// Returns a new [CustomFormatBulkResource] instance.
  CustomFormatBulkResource({

     this.ids,

     this.includeCustomFormatWhenRenaming,
  });

  @JsonKey(
    
    name: r'ids',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? ids;



  @JsonKey(
    
    name: r'includeCustomFormatWhenRenaming',
    required: false,
    includeIfNull: false,
  )


  final bool? includeCustomFormatWhenRenaming;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomFormatBulkResource &&
      other.ids == ids &&
      other.includeCustomFormatWhenRenaming == includeCustomFormatWhenRenaming;

    @override
    int get hashCode =>
        (ids == null ? 0 : ids.hashCode) +
        (includeCustomFormatWhenRenaming == null ? 0 : includeCustomFormatWhenRenaming.hashCode);

  factory CustomFormatBulkResource.fromJson(Map<String, dynamic> json) => _$CustomFormatBulkResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFormatBulkResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

