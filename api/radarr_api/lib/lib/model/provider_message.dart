//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/provider_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'provider_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProviderMessage {
  /// Returns a new [ProviderMessage] instance.
  ProviderMessage({

     this.message,

     this.type,
  });

  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final ProviderMessageType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProviderMessage &&
      other.message == message &&
      other.type == type;

    @override
    int get hashCode =>
        (message == null ? 0 : message.hashCode) +
        type.hashCode;

  factory ProviderMessage.fromJson(Map<String, dynamic> json) => _$ProviderMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

