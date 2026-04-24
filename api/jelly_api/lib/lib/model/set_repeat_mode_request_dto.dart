//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/group_repeat_mode.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'set_repeat_mode_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SetRepeatModeRequestDto {
  /// Returns a new [SetRepeatModeRequestDto] instance.
  SetRepeatModeRequestDto({

     this.mode,
  });

      /// Enum GroupRepeatMode.
  @JsonKey(
    
    name: r'Mode',
    required: false,
    includeIfNull: false,
  )


  final GroupRepeatMode? mode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SetRepeatModeRequestDto &&
      other.mode == mode;

    @override
    int get hashCode =>
        mode.hashCode;

  factory SetRepeatModeRequestDto.fromJson(Map<String, dynamic> json) => _$SetRepeatModeRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SetRepeatModeRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

