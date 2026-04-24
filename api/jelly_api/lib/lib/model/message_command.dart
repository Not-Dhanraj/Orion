//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_command.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessageCommand {
  /// Returns a new [MessageCommand] instance.
  MessageCommand({

     this.header,

    required  this.text,

     this.timeoutMs,
  });

  @JsonKey(
    
    name: r'Header',
    required: false,
    includeIfNull: false,
  )


  final String? header;



  @JsonKey(
    
    name: r'Text',
    required: true,
    includeIfNull: false,
  )


  final String text;



  @JsonKey(
    
    name: r'TimeoutMs',
    required: false,
    includeIfNull: false,
  )


  final int? timeoutMs;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MessageCommand &&
      other.header == header &&
      other.text == text &&
      other.timeoutMs == timeoutMs;

    @override
    int get hashCode =>
        (header == null ? 0 : header.hashCode) +
        text.hashCode +
        (timeoutMs == null ? 0 : timeoutMs.hashCode);

  factory MessageCommand.fromJson(Map<String, dynamic> json) => _$MessageCommandFromJson(json);

  Map<String, dynamic> toJson() => _$MessageCommandToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

