//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'queue_status_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueueStatusResource {
  /// Returns a new [QueueStatusResource] instance.
  QueueStatusResource({

     this.id,

     this.totalCount,

     this.count,

     this.unknownCount,

     this.errors,

     this.warnings,

     this.unknownErrors,

     this.unknownWarnings,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'totalCount',
    required: false,
    includeIfNull: false,
  )


  final int? totalCount;



  @JsonKey(
    
    name: r'count',
    required: false,
    includeIfNull: false,
  )


  final int? count;



  @JsonKey(
    
    name: r'unknownCount',
    required: false,
    includeIfNull: false,
  )


  final int? unknownCount;



  @JsonKey(
    
    name: r'errors',
    required: false,
    includeIfNull: false,
  )


  final bool? errors;



  @JsonKey(
    
    name: r'warnings',
    required: false,
    includeIfNull: false,
  )


  final bool? warnings;



  @JsonKey(
    
    name: r'unknownErrors',
    required: false,
    includeIfNull: false,
  )


  final bool? unknownErrors;



  @JsonKey(
    
    name: r'unknownWarnings',
    required: false,
    includeIfNull: false,
  )


  final bool? unknownWarnings;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QueueStatusResource &&
      other.id == id &&
      other.totalCount == totalCount &&
      other.count == count &&
      other.unknownCount == unknownCount &&
      other.errors == errors &&
      other.warnings == warnings &&
      other.unknownErrors == unknownErrors &&
      other.unknownWarnings == unknownWarnings;

    @override
    int get hashCode =>
        id.hashCode +
        totalCount.hashCode +
        count.hashCode +
        unknownCount.hashCode +
        errors.hashCode +
        warnings.hashCode +
        unknownErrors.hashCode +
        unknownWarnings.hashCode;

  factory QueueStatusResource.fromJson(Map<String, dynamic> json) => _$QueueStatusResourceFromJson(json);

  Map<String, dynamic> toJson() => _$QueueStatusResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

