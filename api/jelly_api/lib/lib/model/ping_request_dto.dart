//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ping_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PingRequestDto {
  /// Returns a new [PingRequestDto] instance.
  PingRequestDto({

     this.ping,
  });

      /// Gets or sets the ping time.
  @JsonKey(
    
    name: r'Ping',
    required: false,
    includeIfNull: false,
  )


  final int? ping;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PingRequestDto &&
      other.ping == ping;

    @override
    int get hashCode =>
        ping.hashCode;

  factory PingRequestDto.fromJson(Map<String, dynamic> json) => _$PingRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PingRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

