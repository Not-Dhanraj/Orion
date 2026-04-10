//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remove_from_playlist_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RemoveFromPlaylistRequestDto {
  /// Returns a new [RemoveFromPlaylistRequestDto] instance.
  RemoveFromPlaylistRequestDto({

     this.playlistItemIds,

     this.clearPlaylist,

     this.clearPlayingItem,
  });

      /// Gets or sets the playlist identifiers of the items. Ignored when clearing the playlist.
  @JsonKey(
    
    name: r'PlaylistItemIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? playlistItemIds;



      /// Gets or sets a value indicating whether the entire playlist should be cleared.
  @JsonKey(
    
    name: r'ClearPlaylist',
    required: false,
    includeIfNull: false,
  )


  final bool? clearPlaylist;



      /// Gets or sets a value indicating whether the playing item should be removed as well. Used only when clearing the playlist.
  @JsonKey(
    
    name: r'ClearPlayingItem',
    required: false,
    includeIfNull: false,
  )


  final bool? clearPlayingItem;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RemoveFromPlaylistRequestDto &&
      other.playlistItemIds == playlistItemIds &&
      other.clearPlaylist == clearPlaylist &&
      other.clearPlayingItem == clearPlayingItem;

    @override
    int get hashCode =>
        playlistItemIds.hashCode +
        clearPlaylist.hashCode +
        clearPlayingItem.hashCode;

  factory RemoveFromPlaylistRequestDto.fromJson(Map<String, dynamic> json) => _$RemoveFromPlaylistRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RemoveFromPlaylistRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

