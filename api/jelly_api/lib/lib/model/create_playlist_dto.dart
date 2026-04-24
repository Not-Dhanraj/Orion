//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/media_type.dart';
import 'package:jelly_api/lib/model/playlist_user_permissions.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_playlist_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreatePlaylistDto {
  /// Returns a new [CreatePlaylistDto] instance.
  CreatePlaylistDto({

     this.name,

     this.ids,

     this.userId,

     this.mediaType,

     this.users,

     this.isPublic,
  });

      /// Gets or sets the name of the new playlist.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets item ids to add to the playlist.
  @JsonKey(
    
    name: r'Ids',
    required: false,
    includeIfNull: false,
  )


  final List<String>? ids;



      /// Gets or sets the user id.
  @JsonKey(
    
    name: r'UserId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Gets or sets the media type.
  @JsonKey(
    
    name: r'MediaType',
    required: false,
    includeIfNull: false,
  )


  final MediaType? mediaType;



      /// Gets or sets the playlist users.
  @JsonKey(
    
    name: r'Users',
    required: false,
    includeIfNull: false,
  )


  final List<PlaylistUserPermissions>? users;



      /// Gets or sets a value indicating whether the playlist is public.
  @JsonKey(
    
    name: r'IsPublic',
    required: false,
    includeIfNull: false,
  )


  final bool? isPublic;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreatePlaylistDto &&
      other.name == name &&
      other.ids == ids &&
      other.userId == userId &&
      other.mediaType == mediaType &&
      other.users == users &&
      other.isPublic == isPublic;

    @override
    int get hashCode =>
        name.hashCode +
        ids.hashCode +
        (userId == null ? 0 : userId.hashCode) +
        (mediaType == null ? 0 : mediaType.hashCode) +
        users.hashCode +
        isPublic.hashCode;

  factory CreatePlaylistDto.fromJson(Map<String, dynamic> json) => _$CreatePlaylistDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePlaylistDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

