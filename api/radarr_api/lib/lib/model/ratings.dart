//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/rating_child.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ratings.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Ratings {
  /// Returns a new [Ratings] instance.
  Ratings({

     this.imdb,

     this.tmdb,

     this.metacritic,

     this.rottenTomatoes,

     this.trakt,
  });

  @JsonKey(
    
    name: r'imdb',
    required: false,
    includeIfNull: false,
  )


  final RatingChild? imdb;



  @JsonKey(
    
    name: r'tmdb',
    required: false,
    includeIfNull: false,
  )


  final RatingChild? tmdb;



  @JsonKey(
    
    name: r'metacritic',
    required: false,
    includeIfNull: false,
  )


  final RatingChild? metacritic;



  @JsonKey(
    
    name: r'rottenTomatoes',
    required: false,
    includeIfNull: false,
  )


  final RatingChild? rottenTomatoes;



  @JsonKey(
    
    name: r'trakt',
    required: false,
    includeIfNull: false,
  )


  final RatingChild? trakt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Ratings &&
      other.imdb == imdb &&
      other.tmdb == tmdb &&
      other.metacritic == metacritic &&
      other.rottenTomatoes == rottenTomatoes &&
      other.trakt == trakt;

    @override
    int get hashCode =>
        imdb.hashCode +
        tmdb.hashCode +
        metacritic.hashCode +
        rottenTomatoes.hashCode +
        trakt.hashCode;

  factory Ratings.fromJson(Map<String, dynamic> json) => _$RatingsFromJson(json);

  Map<String, dynamic> toJson() => _$RatingsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

