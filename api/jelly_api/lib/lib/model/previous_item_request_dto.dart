//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'previous_item_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PreviousItemRequestDto {
  /// Returns a new [PreviousItemRequestDto] instance.
  PreviousItemRequestDto({

     this.playlistItemId,
  });

      /// Gets or sets the playing item identifier.
  @JsonKey(
    
    name: r'PlaylistItemId',
    required: false,
    includeIfNull: false,
  )


  final String? playlistItemId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PreviousItemRequestDto &&
      other.playlistItemId == playlistItemId;

    @override
    int get hashCode =>
        playlistItemId.hashCode;

  factory PreviousItemRequestDto.fromJson(Map<String, dynamic> json) => _$PreviousItemRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PreviousItemRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

