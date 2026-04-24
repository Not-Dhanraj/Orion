//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'set_playlist_item_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SetPlaylistItemRequestDto {
  /// Returns a new [SetPlaylistItemRequestDto] instance.
  SetPlaylistItemRequestDto({

     this.playlistItemId,
  });

      /// Gets or sets the playlist identifier of the playing item.
  @JsonKey(
    
    name: r'PlaylistItemId',
    required: false,
    includeIfNull: false,
  )


  final String? playlistItemId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SetPlaylistItemRequestDto &&
      other.playlistItemId == playlistItemId;

    @override
    int get hashCode =>
        playlistItemId.hashCode;

  factory SetPlaylistItemRequestDto.fromJson(Map<String, dynamic> json) => _$SetPlaylistItemRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SetPlaylistItemRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

