//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_counts.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ItemCounts {
  /// Returns a new [ItemCounts] instance.
  ItemCounts({

     this.movieCount,

     this.seriesCount,

     this.episodeCount,

     this.artistCount,

     this.programCount,

     this.trailerCount,

     this.songCount,

     this.albumCount,

     this.musicVideoCount,

     this.boxSetCount,

     this.bookCount,

     this.itemCount,
  });

      /// Gets or sets the movie count.
  @JsonKey(
    
    name: r'MovieCount',
    required: false,
    includeIfNull: false,
  )


  final int? movieCount;



      /// Gets or sets the series count.
  @JsonKey(
    
    name: r'SeriesCount',
    required: false,
    includeIfNull: false,
  )


  final int? seriesCount;



      /// Gets or sets the episode count.
  @JsonKey(
    
    name: r'EpisodeCount',
    required: false,
    includeIfNull: false,
  )


  final int? episodeCount;



      /// Gets or sets the artist count.
  @JsonKey(
    
    name: r'ArtistCount',
    required: false,
    includeIfNull: false,
  )


  final int? artistCount;



      /// Gets or sets the program count.
  @JsonKey(
    
    name: r'ProgramCount',
    required: false,
    includeIfNull: false,
  )


  final int? programCount;



      /// Gets or sets the trailer count.
  @JsonKey(
    
    name: r'TrailerCount',
    required: false,
    includeIfNull: false,
  )


  final int? trailerCount;



      /// Gets or sets the song count.
  @JsonKey(
    
    name: r'SongCount',
    required: false,
    includeIfNull: false,
  )


  final int? songCount;



      /// Gets or sets the album count.
  @JsonKey(
    
    name: r'AlbumCount',
    required: false,
    includeIfNull: false,
  )


  final int? albumCount;



      /// Gets or sets the music video count.
  @JsonKey(
    
    name: r'MusicVideoCount',
    required: false,
    includeIfNull: false,
  )


  final int? musicVideoCount;



      /// Gets or sets the box set count.
  @JsonKey(
    
    name: r'BoxSetCount',
    required: false,
    includeIfNull: false,
  )


  final int? boxSetCount;



      /// Gets or sets the book count.
  @JsonKey(
    
    name: r'BookCount',
    required: false,
    includeIfNull: false,
  )


  final int? bookCount;



      /// Gets or sets the item count.
  @JsonKey(
    
    name: r'ItemCount',
    required: false,
    includeIfNull: false,
  )


  final int? itemCount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ItemCounts &&
      other.movieCount == movieCount &&
      other.seriesCount == seriesCount &&
      other.episodeCount == episodeCount &&
      other.artistCount == artistCount &&
      other.programCount == programCount &&
      other.trailerCount == trailerCount &&
      other.songCount == songCount &&
      other.albumCount == albumCount &&
      other.musicVideoCount == musicVideoCount &&
      other.boxSetCount == boxSetCount &&
      other.bookCount == bookCount &&
      other.itemCount == itemCount;

    @override
    int get hashCode =>
        movieCount.hashCode +
        seriesCount.hashCode +
        episodeCount.hashCode +
        artistCount.hashCode +
        programCount.hashCode +
        trailerCount.hashCode +
        songCount.hashCode +
        albumCount.hashCode +
        musicVideoCount.hashCode +
        boxSetCount.hashCode +
        bookCount.hashCode +
        itemCount.hashCode;

  factory ItemCounts.fromJson(Map<String, dynamic> json) => _$ItemCountsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemCountsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

