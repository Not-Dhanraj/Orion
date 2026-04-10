//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'problem_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProblemDetails {
  /// Returns a new [ProblemDetails] instance.
  ProblemDetails({

     this.type,

     this.title,

     this.status,

     this.detail,

     this.instance,
  });

  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final String? type;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final int? status;



  @JsonKey(
    
    name: r'detail',
    required: false,
    includeIfNull: false,
  )


  final String? detail;



  @JsonKey(
    
    name: r'instance',
    required: false,
    includeIfNull: false,
  )


  final String? instance;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProblemDetails &&
      other.type == type &&
      other.title == title &&
      other.status == status &&
      other.detail == detail &&
      other.instance == instance;

    @override
    int get hashCode =>
        (type == null ? 0 : type.hashCode) +
        (title == null ? 0 : title.hashCode) +
        (status == null ? 0 : status.hashCode) +
        (detail == null ? 0 : detail.hashCode) +
        (instance == null ? 0 : instance.hashCode);

  factory ProblemDetails.fromJson(Map<String, dynamic> json) => _$ProblemDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ProblemDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

