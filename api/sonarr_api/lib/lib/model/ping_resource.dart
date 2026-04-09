//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ping_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PingResource {
  /// Returns a new [PingResource] instance.
  PingResource({

     this.status,
  });

  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final String? status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PingResource &&
      other.status == status;

    @override
    int get hashCode =>
        (status == null ? 0 : status.hashCode);

  factory PingResource.fromJson(Map<String, dynamic> json) => _$PingResourceFromJson(json);

  Map<String, dynamic> toJson() => _$PingResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

