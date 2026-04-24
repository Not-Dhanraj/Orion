//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'next_item_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NextItemRequestDto {
  /// Returns a new [NextItemRequestDto] instance.
  NextItemRequestDto({

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
    bool operator ==(Object other) => identical(this, other) || other is NextItemRequestDto &&
      other.playlistItemId == playlistItemId;

    @override
    int get hashCode =>
        playlistItemId.hashCode;

  factory NextItemRequestDto.fromJson(Map<String, dynamic> json) => _$NextItemRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NextItemRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

