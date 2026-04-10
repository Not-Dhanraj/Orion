//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'utc_time_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UtcTimeResponse {
  /// Returns a new [UtcTimeResponse] instance.
  UtcTimeResponse({

     this.requestReceptionTime,

     this.responseTransmissionTime,
  });

      /// Gets the UTC time when request has been received.
  @JsonKey(
    
    name: r'RequestReceptionTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? requestReceptionTime;



      /// Gets the UTC time when response has been sent.
  @JsonKey(
    
    name: r'ResponseTransmissionTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? responseTransmissionTime;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UtcTimeResponse &&
      other.requestReceptionTime == requestReceptionTime &&
      other.responseTransmissionTime == responseTransmissionTime;

    @override
    int get hashCode =>
        requestReceptionTime.hashCode +
        responseTransmissionTime.hashCode;

  factory UtcTimeResponse.fromJson(Map<String, dynamic> json) => _$UtcTimeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtcTimeResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

