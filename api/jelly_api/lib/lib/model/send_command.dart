//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/send_command_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_command.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SendCommand {
  /// Returns a new [SendCommand] instance.
  SendCommand({

     this.groupId,

     this.playlistItemId,

     this.when_,

     this.positionTicks,

     this.command,

     this.emittedAt,
  });

      /// Gets the group identifier.
  @JsonKey(
    
    name: r'GroupId',
    required: false,
    includeIfNull: false,
  )


  final String? groupId;



      /// Gets the playlist identifier of the playing item.
  @JsonKey(
    
    name: r'PlaylistItemId',
    required: false,
    includeIfNull: false,
  )


  final String? playlistItemId;



      /// Gets or sets the UTC time when to execute the command.
  @JsonKey(
    
    name: r'When',
    required: false,
    includeIfNull: false,
  )


  final DateTime? when_;



      /// Gets the position ticks.
  @JsonKey(
    
    name: r'PositionTicks',
    required: false,
    includeIfNull: false,
  )


  final int? positionTicks;



      /// Gets the command.
  @JsonKey(
    
    name: r'Command',
    required: false,
    includeIfNull: false,
  )


  final SendCommandType? command;



      /// Gets the UTC time when this command has been emitted.
  @JsonKey(
    
    name: r'EmittedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? emittedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SendCommand &&
      other.groupId == groupId &&
      other.playlistItemId == playlistItemId &&
      other.when_ == when_ &&
      other.positionTicks == positionTicks &&
      other.command == command &&
      other.emittedAt == emittedAt;

    @override
    int get hashCode =>
        groupId.hashCode +
        playlistItemId.hashCode +
        when_.hashCode +
        (positionTicks == null ? 0 : positionTicks.hashCode) +
        command.hashCode +
        emittedAt.hashCode;

  factory SendCommand.fromJson(Map<String, dynamic> json) => _$SendCommandFromJson(json);

  Map<String, dynamic> toJson() => _$SendCommandToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

