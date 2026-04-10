//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_item_data_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserItemDataDto {
  /// Returns a new [UserItemDataDto] instance.
  UserItemDataDto({

     this.rating,

     this.playedPercentage,

     this.unplayedItemCount,

     this.playbackPositionTicks,

     this.playCount,

     this.isFavorite,

     this.likes,

     this.lastPlayedDate,

     this.played,

     this.key,

     this.itemId,
  });

      /// Gets or sets the rating.
  @JsonKey(
    
    name: r'Rating',
    required: false,
    includeIfNull: false,
  )


  final double? rating;



      /// Gets or sets the played percentage.
  @JsonKey(
    
    name: r'PlayedPercentage',
    required: false,
    includeIfNull: false,
  )


  final double? playedPercentage;



      /// Gets or sets the unplayed item count.
  @JsonKey(
    
    name: r'UnplayedItemCount',
    required: false,
    includeIfNull: false,
  )


  final int? unplayedItemCount;



      /// Gets or sets the playback position ticks.
  @JsonKey(
    
    name: r'PlaybackPositionTicks',
    required: false,
    includeIfNull: false,
  )


  final int? playbackPositionTicks;



      /// Gets or sets the play count.
  @JsonKey(
    
    name: r'PlayCount',
    required: false,
    includeIfNull: false,
  )


  final int? playCount;



      /// Gets or sets a value indicating whether this instance is favorite.
  @JsonKey(
    
    name: r'IsFavorite',
    required: false,
    includeIfNull: false,
  )


  final bool? isFavorite;



      /// Gets or sets a value indicating whether this MediaBrowser.Model.Dto.UserItemDataDto is likes.
  @JsonKey(
    
    name: r'Likes',
    required: false,
    includeIfNull: false,
  )


  final bool? likes;



      /// Gets or sets the last played date.
  @JsonKey(
    
    name: r'LastPlayedDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastPlayedDate;



      /// Gets or sets a value indicating whether this MediaBrowser.Model.Dto.UserItemDataDto is played.
  @JsonKey(
    
    name: r'Played',
    required: false,
    includeIfNull: false,
  )


  final bool? played;



      /// Gets or sets the key.
  @JsonKey(
    
    name: r'Key',
    required: false,
    includeIfNull: false,
  )


  final String? key;



      /// Gets or sets the item identifier.
  @JsonKey(
    
    name: r'ItemId',
    required: false,
    includeIfNull: false,
  )


  final String? itemId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserItemDataDto &&
      other.rating == rating &&
      other.playedPercentage == playedPercentage &&
      other.unplayedItemCount == unplayedItemCount &&
      other.playbackPositionTicks == playbackPositionTicks &&
      other.playCount == playCount &&
      other.isFavorite == isFavorite &&
      other.likes == likes &&
      other.lastPlayedDate == lastPlayedDate &&
      other.played == played &&
      other.key == key &&
      other.itemId == itemId;

    @override
    int get hashCode =>
        (rating == null ? 0 : rating.hashCode) +
        (playedPercentage == null ? 0 : playedPercentage.hashCode) +
        (unplayedItemCount == null ? 0 : unplayedItemCount.hashCode) +
        playbackPositionTicks.hashCode +
        playCount.hashCode +
        isFavorite.hashCode +
        (likes == null ? 0 : likes.hashCode) +
        (lastPlayedDate == null ? 0 : lastPlayedDate.hashCode) +
        played.hashCode +
        key.hashCode +
        itemId.hashCode;

  factory UserItemDataDto.fromJson(Map<String, dynamic> json) => _$UserItemDataDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserItemDataDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

