//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/general_command_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'general_command.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GeneralCommand {
  /// Returns a new [GeneralCommand] instance.
  GeneralCommand({

     this.name,

     this.controllingUserId,

     this.arguments,
  });

      /// This exists simply to identify a set of known commands.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final GeneralCommandType? name;



  @JsonKey(
    
    name: r'ControllingUserId',
    required: false,
    includeIfNull: false,
  )


  final String? controllingUserId;



  @JsonKey(
    
    name: r'Arguments',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? arguments;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GeneralCommand &&
      other.name == name &&
      other.controllingUserId == controllingUserId &&
      other.arguments == arguments;

    @override
    int get hashCode =>
        name.hashCode +
        controllingUserId.hashCode +
        arguments.hashCode;

  factory GeneralCommand.fromJson(Map<String, dynamic> json) => _$GeneralCommandFromJson(json);

  Map<String, dynamic> toJson() => _$GeneralCommandToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

