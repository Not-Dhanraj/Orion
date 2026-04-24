//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ignore_wait_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IgnoreWaitRequestDto {
  /// Returns a new [IgnoreWaitRequestDto] instance.
  IgnoreWaitRequestDto({

     this.ignoreWait,
  });

      /// Gets or sets a value indicating whether the client should be ignored.
  @JsonKey(
    
    name: r'IgnoreWait',
    required: false,
    includeIfNull: false,
  )


  final bool? ignoreWait;





    @override
    bool operator ==(Object other) => identical(this, other) || other is IgnoreWaitRequestDto &&
      other.ignoreWait == ignoreWait;

    @override
    int get hashCode =>
        ignoreWait.hashCode;

  factory IgnoreWaitRequestDto.fromJson(Map<String, dynamic> json) => _$IgnoreWaitRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$IgnoreWaitRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

