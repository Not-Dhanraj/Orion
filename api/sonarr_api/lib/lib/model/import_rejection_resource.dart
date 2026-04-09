//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/rejection_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'import_rejection_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImportRejectionResource {
  /// Returns a new [ImportRejectionResource] instance.
  ImportRejectionResource({

     this.reason,

     this.type,
  });

  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false,
  )


  final String? reason;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final RejectionType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImportRejectionResource &&
      other.reason == reason &&
      other.type == type;

    @override
    int get hashCode =>
        (reason == null ? 0 : reason.hashCode) +
        type.hashCode;

  factory ImportRejectionResource.fromJson(Map<String, dynamic> json) => _$ImportRejectionResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ImportRejectionResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

