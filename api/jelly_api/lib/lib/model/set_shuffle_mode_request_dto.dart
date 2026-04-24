//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/group_shuffle_mode.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'set_shuffle_mode_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SetShuffleModeRequestDto {
  /// Returns a new [SetShuffleModeRequestDto] instance.
  SetShuffleModeRequestDto({

     this.mode,
  });

      /// Enum GroupShuffleMode.
  @JsonKey(
    
    name: r'Mode',
    required: false,
    includeIfNull: false,
  )


  final GroupShuffleMode? mode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SetShuffleModeRequestDto &&
      other.mode == mode;

    @override
    int get hashCode =>
        mode.hashCode;

  factory SetShuffleModeRequestDto.fromJson(Map<String, dynamic> json) => _$SetShuffleModeRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SetShuffleModeRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

